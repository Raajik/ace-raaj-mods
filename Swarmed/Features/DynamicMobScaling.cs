namespace Swarmed.Features;

using ACE.DatLoader;
using ACE.Server.Entity.Actions;
using ACE.Server.Entity;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

/// <summary>
/// Scales mob level/difficulty/XP to nearby players within the same landblock.
/// Solo: scales to player's level. Group: scales to average level of all players inside.
/// Landscape mobs have soft level caps based on world area tiers; dungeon mobs scale fully.
/// Players can opt out via chat toggle (/xp mob_scaling in QOL).
/// </summary>
[HarmonyPatchCategory("SwarmedDynamicMobScaling")]
internal static class DynamicMobScaling
{
    // Custom properties for tracking scaled state
    const int BaseLevelPropertyId = 40150;       // PropertyInt: original level before scaling
    const int ScaledLevelPropertyId = 40152;     // PropertyInt: level after scaling
    const int LootTierMultiplierPropertyId = 40153; // PropertyFloat: loot value multiplier

    static int ServerMaxLevel => Math.Max(275,
        DatManager.PortalDat?.XpTable?.CharacterLevelXPList?.Count ?? 275);

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new Type[] { typeof(Weenie), typeof(ObjectGuid) })]
    public static void PostCreateWorldObject(Weenie weenie, ObjectGuid guid, ref WorldObject __result)
    {
        ScheduleScaling(__result);
    }

#if REALM
    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new Type[] { typeof(Weenie), typeof(ObjectGuid), typeof(AppliedRuleset) })]
    public static void PostCreateWorldObjectRealm(Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset, ref WorldObject __result)
    {
        ScheduleScaling(__result);
    }
#endif

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new Type[] { typeof(Biota) })]
    public static void PostCreateWorldObjectBiota(Biota biota, ref WorldObject __result)
    {
        ScheduleScaling(__result);
    }

    static void ScheduleScaling(WorldObject? wo)
    {
        if (wo is not Creature creature)
            return;

        var settings = PatchClass.CurrentSettings?.DynamicMobScaling;
        if (settings == null || !settings.Enabled)
            return;

        // Don't scale exempt creatures
        if (Helpers.SwarmedHealthGate.IsExempt(creature, PatchClass.CurrentSettings!))
            return;

        // Don't re-scale already-scaled creatures
        if (creature.GetProperty((PropertyInt)BaseLevelPropertyId).HasValue)
            return;

        var chain = new ActionChain();
        chain.AddDelaySeconds(0.6); // after CreatureVariation's 0.5s
        chain.AddAction(creature, () => ApplyScaling(creature, settings));
        chain.EnqueueChain();
    }

    static void ApplyScaling(Creature creature, DynamicMobScalingSettings settings)
    {
        if (creature.IsDestroyed || creature.CurrentLandblock == null)
            return;

        var lb = creature.CurrentLandblock;
        var allObjects = lb.GetWorldObjectsForPhysicsHandling();
        if (allObjects == null)
            return;

        // Gather eligible players on this landblock
        var players = new List<Player>();
        foreach (var obj in allObjects)
        {
            if (obj is not Player p || p.IsDead || p.Session == null)
                continue;

            // Check opt-out (PropertyBool 40151 by default)
            bool optedOut = p.GetProperty((PropertyBool)settings.OptOutProperty) ?? false;
            if (!optedOut)
                players.Add(p);
        }

        if (players.Count == 0)
            return;

        int baseLevel = creature.GetProperty(PropertyInt.Level) ?? 1;
        int targetLevel;

        int GetEffectiveLevel(Player p)
        {
            int level = p.Level ?? 1;
            if (settings.AdminLevelOverrideProperty > 0 && p.IsAdmin)
            {
                int overrideLevel = p.GetProperty((PropertyInt)settings.AdminLevelOverrideProperty) ?? 0;
                if (overrideLevel > 0)
                    level = overrideLevel;
            }
            return level;
        }

        if (players.Count == 1)
        {
            targetLevel = (int)(GetEffectiveLevel(players[0]) * settings.SoloScalePercent / 100f);
        }
        else
        {
            double avgLevel = players.Average(p => GetEffectiveLevel(p));
            targetLevel = (int)(avgLevel * settings.GroupScalePercent / 100f);
        }

        // Add flavor variance so mobs aren't all identical.
        // At low target levels the absolute variance is clamped so a level-1 mob
        // doesn't accidentally jump to level 16 (16× health multiplier).
        int effectiveVariance = settings.LevelVariance;
        if (targetLevel > 0)
        {
            int relativeCap = Math.Max(1, targetLevel / 4); // ±25% of target level, min 1
            effectiveVariance = Math.Min(settings.LevelVariance, relativeCap);
        }
        if (effectiveVariance > 0)
            targetLevel += ThreadSafeRandom.Next(-effectiveVariance, effectiveVariance);

        // Hard cap on how far low-level base mobs can rise — prevents starter
        // creatures from scaling into mini-bosses for a brand-new player.
        if (baseLevel <= 5 && targetLevel > baseLevel * 3)
            targetLevel = baseLevel * 3;

        // Apply min/max caps
        int maxLevel = settings.MaxScaleLevel > 0 ? settings.MaxScaleLevel : ServerMaxLevel;

        // Never cap below the highest effective player level actually present in this landblock
        int highestPlayerLevel = players.Max(p => GetEffectiveLevel(p));
        if (highestPlayerLevel > maxLevel)
            maxLevel = highestPlayerLevel;

        targetLevel = Math.Clamp(targetLevel, settings.MinScaleLevel, maxLevel);

        // Landscape soft cap
        if (settings.LandscapeSoftCap && !(creature.CurrentLandblock?.IsDungeon ?? false))
        {
            int tier = DetermineLandscapeTier(creature.Location);
            if (settings.LandscapeTierMaxLevels.TryGetValue(tier, out int tierMax))
                targetLevel = Math.Min(targetLevel, tierMax);
        }

        if (settings.DebugScaling)
        {
            string playerLevels = string.Join(", ", players.Select(p => $"{p.Name}={GetEffectiveLevel(p)}"));
            ModManager.Log($"[Swarmed Scale] {creature.Name} (base {baseLevel}) → target {targetLevel}, maxCap {maxLevel}, highestPlayer {highestPlayerLevel}, players: [{playerLevels}], dungeon={creature.CurrentLandblock?.IsDungeon ?? false}", ModManager.LogLevel.Info);
        }

        if (targetLevel == baseLevel)
            return;

        float levelRatio = (float)targetLevel / Math.Max(1, baseLevel);

        // Store base level for XP calculation later
        creature.SetProperty((PropertyInt)BaseLevelPropertyId, baseLevel);
        creature.SetProperty((PropertyInt)ScaledLevelPropertyId, targetLevel);

        // Scale vitals
        ScaleVitals(creature, levelRatio, baseLevel, targetLevel);

        // Scale attributes
        ScaleAttributes(creature, levelRatio);

        // Scale skills
        ScaleSkills(creature, levelRatio);

        // Scale damage rating
        ScaleDamageRating(creature, levelRatio);

        // Update displayed level
        creature.SetProperty(PropertyInt.Level, targetLevel);

        // Store loot multiplier for GenerateTreasure postfix
        creature.SetProperty((PropertyFloat)LootTierMultiplierPropertyId, levelRatio);
    }

    static void ScaleVitals(Creature creature, float ratio, int baseLevel, int targetLevel)
    {
        int levelDiff = targetLevel - baseLevel;

        foreach (var vital in new[] { creature.Health, creature.Stamina, creature.Mana })
        {
            if (vital == null) continue;

            uint newRanks;
            if (baseLevel <= 10)
            {
                // Starter mobs: gentle flat additive (+3 HP / stamina / mana per level diff).
                // Prevents a 50-HP level-1 mob from ballooning to 150+ HP.
                newRanks = (uint)Math.Max(1, vital.Ranks + levelDiff * 3);
            }
            else
            {
                // Higher-level mobs: scale only base Ranks with sqrt curve.
                // MaxValue = Ranks + StartingValue + attr_bonus; by scaling only
                // Ranks we avoid double-counting StartingValue.
                float vitalRatio = (float)Math.Pow(ratio, 0.5);
                newRanks = (uint)Math.Max(1, vital.Ranks * vitalRatio);
            }
            vital.Ranks = newRanks;
        }
        creature.SetMaxVitals();
    }

    static void ScaleAttributes(Creature creature, float ratio)
    {
        if (creature.Attributes == null) return;
        float attrRatio = (float)Math.Sqrt(ratio);
        foreach (var attr in creature.Attributes.Values)
        {
            if (attr == null) continue;
            uint newRanks = (uint)Math.Max(1, attr.Ranks * attrRatio);
            attr.Ranks = newRanks;
        }
    }

    static void ScaleSkills(Creature creature, float ratio)
    {
        if (creature.Skills == null) return;
        float skillRatio = (float)Math.Sqrt(ratio);
        foreach (var skill in creature.Skills.Values)
        {
            if (skill == null) continue;
            uint newRanks = (uint)Math.Max(1, skill.Ranks * skillRatio);
            skill.Ranks = (ushort)Math.Min(newRanks, ushort.MaxValue);
        }
    }

    static void ScaleDamageRating(Creature creature, float ratio)
    {
        float drRatio = (float)Math.Sqrt(ratio);
        int? currentDR = creature.GetProperty(PropertyInt.DamageRating);
        if (currentDR.HasValue && currentDR.Value > 0)
        {
            int newDR = Math.Max(0, (int)(currentDR.Value * drRatio));
            creature.SetProperty(PropertyInt.DamageRating, newDR);
        }

        int? currentAttack = creature.GetProperty(PropertyInt.AttackType);
        if (currentAttack.HasValue && currentAttack.Value > 0)
        {
            int newAttack = Math.Max(1, (int)(currentAttack.Value * drRatio));
            creature.SetProperty(PropertyInt.AttackType, newAttack);
        }
    }

    static int DetermineLandscapeTier(Position pos)
    {
        // Derive tier from landblock coordinates roughly:
        // Dereth map: x 0x00-0xFF east-west, y 0x00-0xFF south-north
        // Tier 1 (starter): near starter towns (Holtburg, Shoushi, Yaraq)
        // Tier 7 (endgame): far north/west or specific endgame zones
        // Simplified: use distance from center of map
        try
        {
            uint lb = pos.LandblockId.Raw;
            int x = (int)((lb >> 8) & 0xFF);
            int y = (int)(lb & 0xFF);

            // Distance from approximate center (0x80, 0x80)
            double dist = Math.Sqrt(Math.Pow(x - 0x80, 2) + Math.Pow(y - 0x80, 2));

            // Rough tier mapping by distance from center
            return dist switch
            {
                < 20 => 1,
                < 40 => 2,
                < 60 => 3,
                < 80 => 4,
                < 100 => 5,
                < 120 => 6,
                _ => 7,
            };
        }
        catch { return 3; }
    }

    // ── XP Scaling ─────────────────────────────────────────────────────────

    /// <summary>
    /// Patched into Creature.OnDeath_GrantXP to scale XP based on level difference.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.OnDeath_GrantXP))]
    public static void PostOnDeathGrantXP(Creature __instance)
    {
        var settings = PatchClass.CurrentSettings?.DynamicMobScaling;
        if (settings == null || !settings.Enabled || !settings.XpScaleEnabled)
            return;

        int? baseLevel = __instance.GetProperty((PropertyInt)BaseLevelPropertyId);
        int? scaledLevel = __instance.GetProperty((PropertyInt)ScaledLevelPropertyId);
        if (!baseLevel.HasValue || !scaledLevel.HasValue)
            return;

        if (scaledLevel.Value <= baseLevel.Value)
            return;

        var lastDamager = __instance.DamageHistory?.LastDamager;
        if (lastDamager == null)
            return;

        var player = lastDamager.TryGetPetOwnerOrAttacker() as Player;
        if (player == null)
            return;

        // Check opt-out for the XP recipient
        bool optedOut = player.GetProperty((PropertyBool)settings.OptOutProperty) ?? false;
        if (optedOut)
            return;

        // Read the creature's actual per-kill XP. XpOverride is set by ACE from the weenie template.
        long baseXp = __instance.XpOverride ?? 0;

        // Fallback: if the creature has no XpOverride (unlikely for standard mobs), estimate from level.
        if (baseXp <= 0)
            baseXp = GetEstimatedXpForLevel(baseLevel.Value);

        float levelRatio = (float)scaledLevel.Value / Math.Max(1, baseLevel.Value);
        float bonusMultiplier = (levelRatio - 1.0f) * (settings.XpScalePercent / 100f);
        if (bonusMultiplier <= 0)
            return;

        long bonusXp = (long)(baseXp * bonusMultiplier);
        if (bonusXp <= 0)
            return;

        player.GrantXP(bonusXp, XpType.Kill, ShareType.All);
        player.SendMessage($"[Mob Scale] +{bonusXp:N0} bonus XP from scaled {__instance.Name} (Lv.{scaledLevel.Value}).", ChatMessageType.Broadcast);
    }

    static long GetEstimatedXpForLevel(int level)
    {
        try
        {
            var xpList = DatManager.PortalDat.XpTable.CharacterLevelXPList;
            if (level < xpList.Count)
                return (long)xpList[level];
            return (long)xpList.Last();
        }
        catch { return 100000; }
    }

    // ── Loot Scaling ───────────────────────────────────────────────────────

    /// <summary>
    /// Applies loot value multiplier to items generated by scaled creatures.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure))]
    public static void PostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse, Creature __instance, ref List<WorldObject> __result)
    {
        var settings = PatchClass.CurrentSettings?.DynamicMobScaling;
        if (settings == null || !settings.Enabled)
            return;

        float? multiplier = (float?)__instance.GetProperty((PropertyFloat)LootTierMultiplierPropertyId);
        if (!multiplier.HasValue || multiplier.Value <= 1.0f)
            return;

        float mult = multiplier.Value;
        foreach (var item in __result)
        {
            if (item == null) continue;

            // Scale item value
            if (item.Value.HasValue)
                item.Value = (int)(item.Value.Value * mult);

            // Scale weapon damage modifiers
            if (item.DamageMod.HasValue)
                item.DamageMod = Math.Min(item.DamageMod.Value * mult, 3.0f); // cap at 3x

            // Scale armor level
            int? armorLevel = item.GetProperty(PropertyInt.ArmorLevel);
            if (armorLevel.HasValue)
                item.SetProperty(PropertyInt.ArmorLevel, (int)(armorLevel.Value * mult));
        }
    }
}
