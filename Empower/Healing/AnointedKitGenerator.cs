using ACE.Database.Models.World;
using ACE.Server.Factories.Enum;
using ACE.Server.Factories.Tables.Wcids;

namespace Empower.Healing;

/// <summary>
/// Replaces vanilla healing kit loot rolls with Anointed Kit generation.
/// Uses a ThreadStatic to capture tier info from the roll for use during item creation.
/// </summary>
internal static class AnointedKitGenerator
{
    [ThreadStatic]
    public static int CurrentLootTier; // 0-based (0 = T1, 7 = T8)

    [ThreadStatic]
    public static float CurrentLootQualityMod;

    private static readonly Random _rng = new();

    /// <summary>
    /// Prefix on HealKitWcids.Roll — returns our Anointed kit WCID instead of vanilla.
    /// Captures the tier and LootQualityMod for later randomization.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(HealKitWcids), nameof(HealKitWcids.Roll))]
    public static bool PreHealKitWcidsRoll(TreasureDeath profile, ref ACE.Server.Factories.Enum.WeenieClassName __result)
    {
        var settings = S.Settings?.AnointedKits;
        if (settings == null || !(S.Settings?.EnableAnointedHealingKits ?? false))
            return true; // Allow vanilla roll

        // Drop rate: only replace with Anointed kit if random check passes
        double dropChance = settings.DropChance;
        if (dropChance < 1.0 && ThreadSafeRandom.Next(0.0f, 1.0f) > dropChance)
        {
            // Don't drop any healing kit this time (no vanilla fallback)
            __result = 0;
            return false;
        }

        CurrentLootTier = Math.Clamp(profile.Tier - 1, 0, 7);
        CurrentLootQualityMod = profile.LootQualityMod;

        __result = (ACE.Server.Factories.Enum.WeenieClassName)settings.AnointedKitWcid;
        return false; // Skip original HealKitWcids.Roll
    }

    /// <summary>
    /// Applies randomized stats and perks to an Anointed Healing Kit WorldObject.
    /// Called from WorldObjectFactory.CreateNewWorldObject postfix when wcid matches.
    /// </summary>
    public static void ApplyAnointedKitStats(WorldObject kit)
    {
        var settings = S.Settings?.AnointedKits;
        if (settings == null) return;

        int tier = Math.Clamp(CurrentLootTier, 0, 7);

        // 1. Randomize stats
        var statRange = settings.StatRanges[tier];
        int skillBonus = _rng.Next(statRange.MinSkill, statRange.MaxSkill + 1);
        double restoration = statRange.MinRestoration + _rng.NextDouble() * (statRange.MaxRestoration - statRange.MinRestoration);

        kit.BoostValue = skillBonus;
        kit.HealkitMod = restoration;

        // 2. Mark as unlimited use — high Structure display + flag
        // Structure is what the client displays; UnlimitedUse prevents actual consumption
        kit.Structure = 9999;
        kit.MaxStructure = 9999;
        kit.UnlimitedUse = true;
        kit.SetProperty(PropertyBool.UnlimitedUse, true);

        // 5. Randomize BoosterEnum (vital type) FIRST so icon selection uses it
        // ACE's GetCreatureVital expects Health(2)/Stamina(4)/Mana(6), not MaxHealth(1)/MaxStamina(3)/MaxMana(5)
        var vitals = new[] { PropertyAttribute2nd.Health, PropertyAttribute2nd.Stamina, PropertyAttribute2nd.Mana };
        kit.BoosterEnum = vitals[_rng.Next(vitals.Length)];

        // 6. Set icon based on vital type + tier (must run AFTER BoosterEnum randomization)
        var boosterVal = kit.GetProperty(ACE.Entity.Enum.Properties.PropertyInt.BoosterEnum) ?? 2;
        uint iconDid = (boosterVal, tier) switch
        {
            (4, >=0 and <=2) => 0x06007094u,  // T1-3 Stamina → Lesser Stamina Kit
            (4, >=3 and <=4) => 0x06007093u,  // T4-5 Stamina → Greater Stamina Kit
            (4, 5)          => 0x06005B70u,   // T6 Stamina → Medicated Stamina Kit
            (4, 6)          => 0x06005B6Du,   // T7 Stamina → Eternal Stamina Kit
            (4, _)          => 0x0600753Du,   // T8 Stamina → Gauntlet Stamina Kit

            (6, >=0 and <=2) => 0x06007092u,  // T1-3 Mana → Lesser Mana Kit
            (6, >=3 and <=4) => 0x06007091u,  // T4-5 Mana → Greater Mana Kit
            (6, 5)          => 0x06005B6Fu,   // T6 Mana → Medicated Mana Kit
            (6, 6)          => 0x06005B6Cu,   // T7 Mana → Eternal Mana Kit
            (6, _)          => 0x0600753Cu,   // T8 Mana → Gauntlet Mana Kit

            (_, >=0 and <=2) => 0x060032F3u,  // T1-3 Health → Peerless Healing Kit
            (_, >=3 and <=4) => 0x060032E5u,  // T4-5 Health → Treated Healing Kit
            (_, 5)          => 0x06005B6Eu,  // T6 Health → Medicated Health Kit
            (_, 6)          => 0x06005B6Bu,  // T7 Health → Eternal Health Kit
            (_, _)          => 0x0600753Bu,  // T8 Health → Gauntlet Health Kit
        };
        kit.SetProperty(PropertyDataId.Icon, iconDid);

        // 7. Purple glow (Nether + Lightning) on all Anointed kits
        kit.SetProperty(ACE.Entity.Enum.Properties.PropertyInt.UiEffects,
            (int)(ACE.Entity.Enum.UiEffects.Nether | ACE.Entity.Enum.UiEffects.Lightning));

        // 5. Roll perks
        int perkCountMin = settings.PerkCountRanges[tier].Min;
        int perkCountMax = settings.PerkCountRanges[tier].Max;
        int perkCount = _rng.Next(perkCountMin, perkCountMax + 1);

        var perks = RollPerks(kit, tier, perkCount, settings.Perks);

        // 5b. AutoSelf is BASELINE — Food-type (18) avoids targeting reticle natively

        // 6. Build name based on vital type + perks — no "Anointed" prefix
        string typeName = kit.BoosterEnum switch
        {
            PropertyAttribute2nd.Stamina => "Stamina Kit",
            PropertyAttribute2nd.Mana => "Mana Kit",
            _ => "Healing Kit",
        };
        string suffix = BuildPerkSuffix(perks);
        kit.Name = $"{typeName}{suffix}";

        // 6b. Build examine text from perks
        kit.LongDesc = BuildPerkDescription(kit, perks, skillBonus, restoration, tier + 1, typeName);

        // 7. Store tier as PropertyInt for potential future use
        kit.SetProperty((PropertyInt)AnointedKitPropertyIds.KitTier, tier + 1);

        // 7. Adjust value based on quality
        long baseValue = 1000L * (tier + 1);
        long skillFactor = (long)(skillBonus * 10);
        long restFactor = (long)(restoration * 500);
        long perkFactor = (long)(perkCount * 2000);
        kit.Value = (int)Math.Min(baseValue + skillFactor + restFactor + perkFactor, int.MaxValue);
    }

    private static List<AnointedPerk> RollPerks(WorldObject kit, int tier, int count, PerkSettingsConfig perkSettings)
    {
        var available = new List<AnointedPerk>();
        var rolled = new List<AnointedPerk>();

        // Build pool of enabled perks
        if (perkSettings.OmniHeal.Enabled) available.Add(AnointedPerk.OmniHeal);
        if (perkSettings.Regeneration.Enabled) available.Add(AnointedPerk.Regeneration);
        if (perkSettings.AutoSelf.Enabled) available.Add(AnointedPerk.AutoSelf);
        if (perkSettings.Efficiency.Enabled) available.Add(AnointedPerk.Efficiency);
        if (perkSettings.CriticalSurge.Enabled) available.Add(AnointedPerk.CriticalSurge);
        if (perkSettings.Cleansing.Enabled) available.Add(AnointedPerk.Cleansing);
        if (perkSettings.ReactiveBarrier.Enabled) available.Add(AnointedPerk.ReactiveBarrier);
        if (perkSettings.Boon.Enabled) available.Add(AnointedPerk.Boon);

        if (available.Count == 0) return rolled;

        // Shuffle and take
        var shuffled = available.OrderBy(_ => _rng.Next()).ToList();
        int toTake = Math.Min(count, shuffled.Count);

        for (int i = 0; i < toTake; i++)
        {
            var perk = shuffled[i];
            rolled.Add(perk);

            // Set the flag property
            uint flagProp = AnointedKitPropertyIds.PerkFlagProperty(perk);
            if (flagProp != 0)
                kit.SetProperty((PropertyBool)flagProp, true);

            // Set the value property — roll within tier range
            double min, max;
            GetPerkTierRange(perk, tier, perkSettings, out min, out max);
            double rolledValue = min + _rng.NextDouble() * (max - min);
            uint valueProp = AnointedKitPropertyIds.PerkValueProperty(perk);
            if (valueProp != 0)
                kit.SetProperty((PropertyFloat)valueProp, rolledValue);
        }

        return rolled;
    }

    private static bool HasAutoSelfFlag(WorldObject kit)
    {
        return kit.GetProperty((PropertyBool)AnointedKitPropertyIds.Perk_AutoSelf) ?? false;
    }

    private static void GetPerkTierRange(AnointedPerk perk, int tier, PerkSettingsConfig cfg, out double min, out double max)
    {
        min = 0; max = 0;
        PerkTierRange? range = perk switch
        {
            AnointedPerk.OmniHeal => cfg.OmniHeal,
            AnointedPerk.Regeneration => cfg.Regeneration,
            AnointedPerk.Efficiency => cfg.Efficiency,
            AnointedPerk.CriticalSurge => cfg.CriticalSurge,
            AnointedPerk.Cleansing => cfg.Cleansing,
            AnointedPerk.ReactiveBarrier => cfg.ReactiveBarrier,
            AnointedPerk.Boon => cfg.Boon,
            _ => null,
        };
        if (range == null) return;
        min = range.TierValues[tier, 0];
        max = range.TierValues[tier, 1];
    }

    private static string BuildPerkSuffix(List<AnointedPerk> perks)
    {
        if (perks.Count == 0) return "";

        var names = perks.Select(p => p switch
        {
            AnointedPerk.OmniHeal => "Omni",
            AnointedPerk.Regeneration => "Regen",
            AnointedPerk.AutoSelf => "Self",
            AnointedPerk.Efficiency => "Efficient",
            AnointedPerk.CriticalSurge => "Crit",
            AnointedPerk.Cleansing => "Clean",
            AnointedPerk.ReactiveBarrier => "Barrier",
            AnointedPerk.Boon => "Boon",
            _ => "?"
        }).ToList();

        return " of " + string.Join("-", names);
    }

    private static string BuildPerkDescription(WorldObject kit, List<AnointedPerk> perks, int skillBonus, double restoration, int tier, string typeName)
    {
        var lines = new List<string>
        {
            $"Tier {tier} {typeName}",
            $"Healing Skill Bonus: +{skillBonus}",
            $"Restoration: +{restoration * 100 - 100:F0}%",
            "Auto-Self: One-click self-heal",
            ""
        };

        if (perks.Count == 0)
        {
            lines.Add("No additional perks.");
            return string.Join("\n", lines);
        }

        lines.Add("Perks:");

        foreach (var perk in perks)
        {
            string desc = perk switch
            {
                AnointedPerk.OmniHeal => $"Omni-Heal: Splashes {(kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_OmniHeal) ?? 0) * 100:F0}% of healing to other vitals",
                AnointedPerk.Regeneration => $"Regeneration: {(kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Regeneration) ?? 0) * 100:F0}% HoT over 15s",
                AnointedPerk.Efficiency => $"Efficiency: Reduces stamina cost by {(kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Efficiency) ?? 0) * 100:F0}%",
                AnointedPerk.CriticalSurge => $"Critical Surge: +{(kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_CriticalSurge) ?? 0) * 100:F0}% crit chance",
                AnointedPerk.Cleansing => $"Cleansing: {(kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Cleansing) ?? 0) * 100:F0}% chance to remove harmful effects on heal",
                AnointedPerk.ReactiveBarrier => $"Barrier: {(kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_ReactiveBarrier) ?? 0):F0} Damage Resistance for 20s on heal",
                AnointedPerk.Boon => $"Boon: +{(kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Boon) ?? 0) * 100:F0}% Healing skill for 10s on heal",
                _ => "",
            };
            if (!string.IsNullOrEmpty(desc))
                lines.Add($"  {desc}");
        }

        return string.Join("\n", lines);
    }
}