using ACE.Database.Models.World;

namespace WorldEvents;

public partial class PatchClass
{
    // Pending restore for DeathTreasureType after GenerateTreasure (primary loot uses bumped tier; restore so creature state stays consistent).
    internal static readonly ConcurrentDictionary<uint, uint?> PendingRestoreDeathTreasureType = new();

    [HarmonyPostfix]
    [HarmonyPatch(typeof(DamageEvent), nameof(DamageEvent.CalculateDamage), new Type[] {
        typeof(Creature), typeof(Creature), typeof(WorldObject), typeof(MotionCommand?), typeof(AttackHook) })]
    public static void PostCalculateDamageHunt(ref DamageEvent __result, Creature attacker, Creature defender, WorldObject damageSource, MotionCommand? attackMotion, AttackHook attackHook)
    {
        var settings = CurrentSettings;
        if (settings?.EnableHunt != true || __result == null)
            return;

        if (attacker is not Player player)
            return;

        if (settings.OnlyScaleDamageVsCreatures && defender is Player)
            return;

        var data = HuntRuntime.GetOrLoadPlayer(player.Guid.Full);
        var pct = HuntKillPrep.ComputeDamageBonusPercent(data, settings);
        if (pct <= 0)
            return;

        var factor = 1.0f + (float)(pct / 100.0);
        if (factor <= 0 || float.IsNaN(factor) || float.IsInfinity(factor))
            return;

        __result.DamageBeforeMitigation *= factor;
        __result.Damage *= factor;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), "GenerateTreasure", new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) })]
    [HarmonyPriority(600)]
    public static void PrefixBumpDeathTreasureHunt(Creature __instance, DamageHistoryInfo killer, Corpse corpse)
    {
        var settings = CurrentSettings;
        if (settings?.EnableHunt != true
            || settings.AchievementApplyDeathTreasureTierBump != true
            || __instance == null)
            return;

        var player = HuntKillPrep.ResolveKillerPlayer(killer);
        if (player == null)
            return;

        if (__instance.DeathTreasureType == null || __instance.DeathTreasure == null)
            return;

        var nominal = __instance.DeathTreasure;
        var data = HuntRuntime.GetOrLoadPlayer(player.Guid.Full);
        double lootProgress = HuntRanks.AchievementProgressForLoot(player, data, settings);
        var achievementOffset = HuntRanks.AchievementLootTierFromProgress(lootProgress, settings);
        if (achievementOffset <= 0)
            return;

        var allRows = HuntDeathTreasureResolver.GetAllRows();
        var resolved = HuntDeathTreasureResolver.ResolveBumpedProfile(
            nominal,
            achievementOffset,
            settings.MaxEffectiveLootTier,
            allRows);

        if (resolved == null || resolved.TreasureType == nominal.TreasureType)
            return;

        var guid = __instance.Guid.Full;
        PendingRestoreDeathTreasureType[guid] = __instance.DeathTreasureType;
        __instance.SetProperty(PropertyDataId.DeathTreasureType, resolved.TreasureType);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), "GenerateTreasure", new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) })]
    [HarmonyPriority(-2500)]
    public static void PostRestoreDeathTreasureTypeHunt(Creature __instance, DamageHistoryInfo killer, Corpse corpse)
    {
        if (__instance == null)
            return;

        if (!PendingRestoreDeathTreasureType.TryRemove(__instance.Guid.Full, out var previous))
            return;

        if (previous.HasValue)
            __instance.SetProperty(PropertyDataId.DeathTreasureType, previous.Value);
        else
            __instance.RemoveProperty(PropertyDataId.DeathTreasureType);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), "GenerateTreasure", new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) })]
    [HarmonyPriority(-500)]
    public static void PostGenerateTreasureHunt(Creature __instance, DamageHistoryInfo killer, Corpse corpse, List<WorldObject> __result)
    {
        var settings = CurrentSettings;
        if (settings?.EnableHunt != true || __instance == null)
            return;

        var player = HuntKillPrep.ResolveKillerPlayer(killer);
        if (player == null)
            return;

        var data = HuntRuntime.GetOrLoadPlayer(player.Guid.Full);
        double lootProgressPost = HuntRanks.AchievementProgressForLoot(player, data, settings);
        var achievementOffset = HuntRanks.AchievementLootTierFromProgress(lootProgressPost, settings);

        var hadTierBumpPending = PendingRestoreDeathTreasureType.ContainsKey(__instance.Guid.Full);
        var skipExtraCreateList = settings.AchievementApplyDeathTreasureTierBump
            && !settings.AchievementStackExtraCreateListRollsWithTierBump
            && hadTierBumpPending;

        var extraRolls = achievementOffset * settings.AchievementLootExtraRollsPerTier;
        if (extraRolls > 0 && !skipExtraCreateList && __instance.Biota?.PropertiesCreateList != null)
        {
            var createList = __instance.Biota.PropertiesCreateList
                .Where(i => i.WeenieClassId != 0
                    && (((DestinationType)i.DestinationType & DestinationType.Treasure) != 0
                        || ((DestinationType)i.DestinationType & DestinationType.Contain) != 0)
                    && ((DestinationType)i.DestinationType & DestinationType.Wield) == 0)
                .ToList();

            if (createList.Count > 0)
            {
                for (var r = 0; r < extraRolls; r++)
                {
                    var selected = Creature.CreateListSelect(createList);
                    foreach (var item in selected)
                    {
                        var bonus = WorldObjectFactory.CreateNewWorldObject(item);
                        if (bonus == null)
                            continue;

                        if (corpse != null)
                            corpse.TryAddToInventory(bonus);
                        else
                            __instance.TryAddToInventory(bonus);

                        __result?.Add(bonus);
                    }
                }
            }
        }

        var trophyHint = player.GetProperty((PropertyFloat)HuntPropertyIds.PendingTrophyChanceHint) ?? 0f;

        if (trophyHint > 0 && __instance.DeathTreasure != null)
        {
            var cap = settings.TrophyChanceCap;
            var chance = Math.Min(cap, trophyHint);
            var rng = ThreadSafeRandom.Next(0.0f, 1.0f);
            if (rng < chance)
            {
                var tier = __instance.DeathTreasure;
                var bonusTreasure = LootGenerationFactory.CreateRandomLootObjects(tier);
                foreach (var item in bonusTreasure)
                {
                    if (corpse != null)
                        corpse.TryAddToInventory(item);
                    else
                        __instance.TryAddToInventory(item);

                    __result?.Add(item);
                }
            }
        }
    }
}
