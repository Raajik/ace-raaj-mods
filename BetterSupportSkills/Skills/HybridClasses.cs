using System.Collections.Concurrent;
using System.Diagnostics;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

internal static class HybridClasses
{
    [Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[BSS Hybrid] {msg}", ModManager.LogLevel.Debug);
    }

    // -- Spell ID Lookup Tables (Tier 1–8) -------------------------------

    // Streak spells by damage type
    private static readonly Dictionary<DamageType, int[]> StreakSpells = new()
    {
        [DamageType.Acid] = new[] { 1799, 1800, 1801, 1802, 1803, 1804, 2130, 4441 },
        [DamageType.Fire] = new[] { 1805, 1806, 1807, 1808, 1809, 1810, 2138, 4449 },
        [DamageType.Cold] = new[] { 1817, 1818, 1819, 1820, 1821, 1822, 2146, 4457 },
        [DamageType.Electric] = new[] { 1823, 1824, 1825, 1826, 1827, 1828, 2150, 4461 },
        [DamageType.Slash] = new[] { 1835, 1836, 1837, 1838, 1839, 1840, 2156, 4467 },
        [DamageType.Bludgeon] = new[] { 1829, 1830, 1831, 1832, 1833, 1834, 2154, 4465 },
        [DamageType.Pierce] = new[] { 1811, 1812, 1813, 1814, 1815, 1816, 2142, 4453 }, // Force Streak
        [DamageType.Nether] = new[] { 5366, 5367, 5368, 5369, 5354, 5355, 5356, 5357 },
    };

    // Arc spells by damage type
    private static readonly Dictionary<DamageType, int[]> ArcSpells = new()
    {
        [DamageType.Acid] = new[] { 2720, 2721, 2722, 2723, 2724, 2725, 2726, 4430 },
        [DamageType.Fire] = new[] { 2748, 2749, 2750, 2751, 2752, 2753, 2754, 4432 },
        [DamageType.Cold] = new[] { 2734, 2735, 2736, 2737, 2738, 2739, 2740, 4434 },
        [DamageType.Electric] = new[] { 2741, 2742, 2743, 2744, 2745, 2746, 2747, 4435 },
        [DamageType.Slash] = new[] { 2762, 2763, 2764, 2765, 2766, 2767, 2768, 4431 },
        [DamageType.Bludgeon] = new[] { 2755, 2756, 2757, 2758, 2759, 2760, 2761, 4436 },
        [DamageType.Pierce] = new[] { 2727, 2728, 2729, 2730, 2731, 2732, 2733, 4433 }, // Force Arc
        [DamageType.Nether] = new[] { 5378, 5371, 5372, 5373, 5374, 5375, 5376, 5377 },
    };

    // Volley spells by damage type
    private static readonly Dictionary<DamageType, int[]> VolleySpells = new()
    {
        [DamageType.Acid] = new[] { 3663, 3664, 136, 137, 138, 139, 2132, 4443 },
        [DamageType.Fire] = new[] { 3672, 3673, 152, 153, 154, 155, 2139, 4450 },
        [DamageType.Cold] = new[] { 3680, 3681, 144, 145, 146, 147, 2147, 4458 },
        [DamageType.Electric] = new[] { 3684, 3685, 148, 149, 150, 151, 2151, 4462 },
        [DamageType.Slash] = new[] { 3667, 3668, 160, 161, 162, 163, 2134, 4445 },
        [DamageType.Bludgeon] = new[] { 3669, 850271, 850272, 850273, 3670, 140, 141, 142, 143, 2135, 4446 },
        [DamageType.Pierce] = new[] { 3676, 3677, 156, 157, 158, 159, 2143, 4454 }, // Force Volley
        [DamageType.Nether] = new[] { 0, 0, 0, 0, 0, 0, 0, 0 }, // No nether volley
    };

    // Bloodmage: HealthBolt (LifeProjectile) tiers 1-8
    private static readonly int[] HealthBoltIds = new[] { 2769, 2770, 2771, 2772, 2773, 2774, 2775, 4437 };

    // Bloodmage: Drain spells tiers 1-8
    private static readonly int[] DrainHealthIds = new[] { 1237, 1238, 1239, 1240, 1241, 1242, 2328, 4643 };
    private static readonly int[] DrainStaminaIds = new[] { 1249, 1250, 1251, 1252, 1253, 1254, 2330, 4645 };
    private static readonly int[] DrainManaIds = new[] { 1260, 1261, 1262, 1263, 1264, 1265, 2329, 4644 };

    // -- Main DamageTarget Patch -----------------------------------------

    public static void PostDamageTargetHybridSpells(Creature target, WorldObject damageSource, Player __instance, ref DamageEvent __result)
    {
        var player = __instance;

        if (__result is null || !__result.HasDamage || target == null)
            return;

        if (__result.CombatType != CombatType.Melee)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableCombatClasses != true)
            return;

        string? activeClass = SummoningClasses.GetPlayerClass(player);

        var hybridSettings = settings.CombatClasses;

        // Windwalker: Light Weapons + War Magic → elemental streaks at all enemies in range
        if (activeClass == "Windwalker")
        {
            var damageType = GetWeaponDamageType(damageSource, __result);
            int tier = GetSpellTier(player, Skill.WarMagic, hybridSettings.Windwalker.SkillPerTier);
            CastStreakAtNearbyEnemies(player, target, damageType, tier, hybridSettings.Windwalker);
        }
        // Battlemage: Two-Handed + War Magic → elemental arc at hit target
        else if (activeClass == "Battlemage")
        {
            var damageType = GetWeaponDamageType(damageSource, __result);
            int tier = GetSpellTier(player, Skill.WarMagic);
            CastArcAtTarget(player, target, damageType, tier, hybridSettings.Battlemage);
        }
        // Death Knight: Heavy/Two-Handed + Void Magic → nether spells
        else if (activeClass == "DeathKnight")
        {
            int tier = GetDeathKnightVoidSpellTier(player, hybridSettings.DeathKnight);
            if (IsTwoHandedWeapon(damageSource))
                CastStreakAtNearbyEnemies(player, target, DamageType.Nether, tier, hybridSettings.DeathKnight);
            else if (IsHeavyWeapon(damageSource))
                CastArcAtTarget(player, target, DamageType.Nether, tier, hybridSettings.DeathKnight);
        }
        // Bloodmage: Life Magic + Mana Conversion + Arcane Lore → hecatomb echoes + drain finale
        else if (activeClass == "Bloodmage")
        {
            int tier = GetSpellTier(player, Skill.LifeMagic);
            CastHecatombAtTarget(player, target, tier, hybridSettings.Bloodmage);
        }
    }

    // -- Spell Casting Helpers -------------------------------------------

    static void CastStreakAtNearbyEnemies(Player player, Creature primaryTarget, DamageType damageType, int tier, object settings)
    {
        if (!StreakSpells.TryGetValue(damageType, out var streakIds))
        {
            DebugLog($"No streak spell mapping for damage type {damageType}.");
            return;
        }

        double range = 15.0;
        double manaMult = 1.0;
        if (settings is WindwalkerSettings ww) { range = ww.StreakRangeMeters; manaMult = ww.ManaCostMultiplier; }
        else if (settings is DeathKnightSettings dk) { manaMult = dk.ManaCostMultiplier; }

        // Find all enemies in range
        var lb = primaryTarget.CurrentLandblock;
        if (lb == null) return;

        var candidates = new List<Creature>();
        foreach (var obj in lb.GetWorldObjectsForPhysicsHandling())
        {
            if (obj is not Creature c || c == primaryTarget || c.IsDead || c is Player)
                continue;
            if (obj.Location == null) continue;
            float dist = player.GetDistance(obj);
            if (dist <= range && dist > 0.5f)
                candidates.Add(c);
        }

        if (candidates.Count == 0) return;

        // Cast streak at each candidate (with tier fallback)
        foreach (var enemy in candidates)
            BssAutoCaster.TryCastSpellWithFallback(player, streakIds, tier, enemy, manaMult);

        // Echo: streak → volley if spec ManaC (Windwalker/Battlemage) or spec Arcane Lore (Death Knight)
        bool shouldEcho = false;
        if (settings is WindwalkerSettings wws && wws.EchoEnabled)
            shouldEcho = player.GetCreatureSkill(Skill.ManaConversion).AdvancementClass == SkillAdvancementClass.Specialized;
        else if (settings is DeathKnightSettings dks && dks.EchoEnabled)
            shouldEcho = player.GetCreatureSkill(Skill.ArcaneLore).AdvancementClass == SkillAdvancementClass.Specialized;

        if (shouldEcho && VolleySpells.TryGetValue(damageType, out var volleyIds) && volleyIds[0] != 0)
        {
            foreach (var enemy in candidates)
                BssAutoCaster.TryCastSpellWithFallback(player, volleyIds, tier, enemy, manaMult);
        }
    }

    static void CastArcAtTarget(Player player, Creature target, DamageType damageType, int tier, object settings)
    {
        if (!ArcSpells.TryGetValue(damageType, out var arcIds))
            return;

        double manaMult = 1.0;
        if (settings is BattlemageSettings bms) manaMult = bms.ManaCostMultiplier;
        else if (settings is DeathKnightSettings dk) manaMult = dk.ManaCostMultiplier;

        BssAutoCaster.TryCastSpellWithFallback(player, arcIds, tier, target, manaMult);
        DebugLog($"Arc tier {tier} on {target.Name}");

        // Echo: arc → volley → volley if spec ManaC
        bool shouldEcho = false;
        if (settings is BattlemageSettings bms2 && bms2.EchoEnabled)
            shouldEcho = player.GetCreatureSkill(Skill.ManaConversion).AdvancementClass == SkillAdvancementClass.Specialized;
        else if (settings is DeathKnightSettings dks && dks.EchoEnabled)
            shouldEcho = player.GetCreatureSkill(Skill.ArcaneLore).AdvancementClass == SkillAdvancementClass.Specialized;

        if (shouldEcho && VolleySpells.TryGetValue(damageType, out var volleyIds) && volleyIds[0] != 0)
        {
            BssAutoCaster.TryCastSpellWithFallback(player, volleyIds, tier, target, manaMult);
            BssAutoCaster.TryCastSpellWithFallback(player, volleyIds, tier, target, manaMult);
            DebugLog($"Echo volley x2 tier {tier} on {target.Name}");
        }
    }

    static void CastHecatombAtTarget(Player player, Creature target, int tier, BloodmageSettings settings)
    {
        int echoCount = Math.Max(1, settings.EchoCount);
        int tierDrop = Math.Max(0, settings.EchoTierDrop);
        double manaMult = settings.ManaCostMultiplier;

        for (int i = 0; i < echoCount; i++)
        {
            int echoTier = Math.Max(1, tier - (i * tierDrop));
            BssAutoCaster.TryCastSpellWithFallback(player, HealthBoltIds, echoTier, target, manaMult);
        }

        // Finale: DrainHealth (with tier fallback from 8 down)
        BssAutoCaster.TryCastSpellWithFallback(player, DrainHealthIds, 8, target, manaMult);
    }

    // -- Helpers ---------------------------------------------------------

    internal static int GetSpellTier(Player player, Skill magicSkill, int? skillPerTier = null)
    {
        var skill = player.GetCreatureSkill(magicSkill);
        if (skill == null) return 1;
        // Use base skill (unbuffed) for tier to avoid inflated tiers from short-term buffs
        int value = (int)skill.Base;
        int divider = skillPerTier ?? 50;
        if (divider <= 0) divider = 50;
        int tier = value / divider;
        int clamped = Math.Min(8, Math.Max(1, tier));
        return clamped;
    }

    static int GetDeathKnightVoidSpellTier(Player player, DeathKnightSettings dk)
    {
        var skill = player.GetCreatureSkill(Skill.VoidMagic);
        if (skill == null) return 1;
        // Base skill (unbuffed) — same rationale as GetSpellTier; Current can spike tiers from short buffs
        int value = (int)skill.Base;
        int divider = Math.Max(1, dk.SkillPerTier);
        int tier = value / divider;
        // Clamp cap to 1–8; invalid/zero JSON used to fall through to "8" and disabled the cap
        int cap = Math.Clamp(dk.MaxVoidSpellTier, 1, 8);
        tier = Math.Min(tier, cap);
        return Math.Clamp(tier, 1, 8);
    }

    static readonly DamageType[] MeleeDamageTypePriority = new[]
    {
        DamageType.Slash, DamageType.Pierce, DamageType.Bludgeon,
        DamageType.Fire, DamageType.Cold, DamageType.Acid, DamageType.Electric,
        DamageType.Nether
    };

    static DamageType GetWeaponDamageType(WorldObject? weapon, DamageEvent damageEvent)
    {
        // Prefer weapon's configured damage type, fallback to damage event type
        DamageType dt = DamageType.Undef;
        if (weapon != null && weapon.W_DamageType != DamageType.Undef)
            dt = weapon.W_DamageType;
        else
            dt = damageEvent.DamageType;

        // If it's already a single type (power of 2), use it directly
        if (dt != DamageType.Undef && (dt & (dt - 1)) == 0)
            return dt;

        // Composite type (e.g., Slash|Pierce) — resolve via priority list
        foreach (var candidate in MeleeDamageTypePriority)
        {
            if ((dt & candidate) != 0)
                return candidate;
        }

        return DamageType.Undef;
    }

    static bool IsTwoHandedWeapon(WorldObject? weapon)
    {
        if (weapon == null) return false;
        // Check weapon skill or WieldRequirements
        return weapon.WeaponSkill == Skill.TwoHandedCombat;
    }

    static bool IsHeavyWeapon(WorldObject? weapon)
    {
        if (weapon == null) return false;
        return weapon.WeaponSkill == Skill.HeavyWeapons;
    }

    static int GetDrainSpellTier(Spell spell)
    {
        int id = (int)spell.Id;
        for (int tier = 0; tier < 8; tier++)
        {
            if (DrainHealthIds[tier] == id || DrainStaminaIds[tier] == id || DrainManaIds[tier] == id)
                return tier + 1;
        }
        return 0;
    }

    // -- Bloodmage Drain AoE ---------------------------------------------

    static bool IsInBloodmageDrainAoE;

    public static void PostTryCastSpellDrainAoE(Spell spell, WorldObject target, WorldObject itemCaster, WorldObject weapon, bool isWeaponSpell, bool fromProc, bool tryResist, WorldObject __instance)
    {
        if (IsInBloodmageDrainAoE) return;
        if (__instance is not Player player) return;
        if (SummoningClasses.GetPlayerClass(player) != "Bloodmage") return;
        if (GetDrainSpellTier(spell) <= 0) return;

        var settings = PatchClass.Settings?.CombatClasses.Bloodmage;
        if (settings == null) return;

        var lb = player.CurrentLandblock;
        if (lb == null) return;

        IsInBloodmageDrainAoE = true;
        try
        {
            int extraTargets = 0;
            foreach (var obj in lb.GetWorldObjectsForPhysicsHandling())
            {
                if (obj is not Creature c || c == target || c.IsDead || c is Player) continue;
                if (player.GetDistance(obj) > settings.DrainSpellRangeMeters) continue;
                // AoE splash is free (original cast already paid costs)
                player.TryCastSpell(spell, c);
                extraTargets++;
            }
            if (extraTargets > 0)
                player.SendMessage($"[Bloodmage] Drain spell splashed to {extraTargets} additional enemies.", ChatMessageType.System);
        }
        finally
        {
            IsInBloodmageDrainAoE = false;
        }
    }

    // -- Death Knight Aura -----------------------------------------------

    static readonly ConcurrentDictionary<uint, double> LastAuraTick = new();

    public static void PostHeartbeatAura(double currentUnixTime, WorldObject __instance)
    {
        if (__instance is not Player player)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableCombatClasses != true)
            return;

        string? activeClass = SummoningClasses.GetPlayerClass(player);
        if (activeClass != "DeathKnight" && activeClass != "Bloodmage")
            return;

        var profile = PlayerProfileStore.GetOrCreate(player.Guid.Full);
        if (!profile.AuraEnabled)
            return;

        uint pid = player.Guid.Full;
        double last = LastAuraTick.GetValueOrDefault(pid);
        if (last <= 0) last = currentUnixTime - 1.0;

        var lb = player.CurrentLandblock;
        if (lb == null) return;

        if (activeClass == "DeathKnight")
        {
            var dkSettings = settings.CombatClasses.DeathKnight;
            if (dkSettings.AuraDamagePerTick <= 0 || dkSettings.AuraRangeMeters <= 0)
                return;

            double dt = currentUnixTime - last;
            if (dt < dkSettings.AuraTickSeconds)
                return;

            dt = Math.Clamp(dt, dkSettings.AuraTickSeconds, 10.0);
            LastAuraTick[pid] = currentUnixTime;

            float range = (float)dkSettings.AuraRangeMeters;
            var targets = new List<Creature>();
            foreach (var obj in lb.GetWorldObjectsForPhysicsHandling())
            {
                if (obj is not Creature c || c is Player || c.IsDead)
                    continue;
                if (!IsHostileToPlayer(c, player))
                    continue;
                float dist = player.GetDistance(obj);
                if (dist <= range)
                    targets.Add(c);
            }

            foreach (var enemy in targets)
            {
                enemy.TakeDamage(player, DamageType.Nether, dkSettings.AuraDamagePerTick);
            }
        }
        else if (activeClass == "Bloodmage")
        {
            var bmSettings = settings.CombatClasses.Bloodmage;
            if (bmSettings.AuraDrainPerTick <= 0 || bmSettings.AuraRangeMeters <= 0)
                return;

            double dt = currentUnixTime - last;
            if (dt < bmSettings.AuraTickSeconds)
                return;

            dt = Math.Clamp(dt, bmSettings.AuraTickSeconds, 10.0);
            LastAuraTick[pid] = currentUnixTime;

            float range = (float)bmSettings.AuraRangeMeters;
            int totalDrain = 0;
            foreach (var obj in lb.GetWorldObjectsForPhysicsHandling())
            {
                if (obj is not Creature c || c is Player || c.IsDead)
                    continue;
                if (!IsHostileToPlayer(c, player))
                    continue;
                float dist = player.GetDistance(obj);
                if (dist > range) continue;

                c.TakeDamage(player, DamageType.Health, bmSettings.AuraDrainPerTick);
                totalDrain += bmSettings.AuraDrainPerTick;
            }

            if (totalDrain > 0 && player.Health != null)
            {
                player.UpdateVital(player.Health, (uint)Math.Min(player.Health.Current + totalDrain, player.Health.MaxValue));
            }
        }
    }

    static bool IsHostileToPlayer(Creature creature, Player player)
    {
        // Check if creature is attacking player or fellowship member
        if (creature.AttackTarget == player)
            return true;

        if (player.Fellowship != null)
        {
            var members = player.Fellowship.GetFellowshipMembers();
            foreach (var member in members.Values)
            {
                if (member != null && creature.AttackTarget == member)
                    return true;
            }
        }

        // Fallback: check if creature has player in its threat list / damage history
        // Also accept monsters that are not passive NPCs
        if (creature.IsMonster)
            return true;

        return false;
    }

    public static void PostEnterWorldAura(Player __instance)
    {
        LastAuraTick.TryRemove(__instance.Guid.Full, out _);
    }

    // -- /aura Command ---------------------------------------------------

    [CommandHandler("aura", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Toggle your class aura on or off.",
        "Usage: /aura")]
    public static void HandleAura(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        var profile = PlayerProfileStore.GetOrCreate(player.Guid.Full);
        profile.AuraEnabled = !profile.AuraEnabled;
        PlayerProfileStore.Save(player.Guid.Full, profile);

        string state = profile.AuraEnabled ? "ON" : "OFF";
        player.SendMessage($"Your class aura is now {state}.", ChatMessageType.System);
    }
}
