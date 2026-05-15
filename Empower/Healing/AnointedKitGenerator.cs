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

        // 2. Mark as unlimited use
        kit.Structure = 0; // 0 uses left but...
        // We need to also set the UnlimitedUse flag. Looking at the Healer class,
        // the engine checks `UnlimitedUse` property on the WorldObject.
        // Let's set a high value so it never runs out.
        kit.UnlimitedUse = true;
        kit.Structure = 1; // Structure > 0 + some flag... actually UnlimitedUse is a bool on the base class.
        // Actually, looking at the Healer.DoHealing code more carefully:
        // if (!UnlimitedUse) { UsesLeft--; }
        // We need to set the UnlimitedUse property. It's a PropertyBool on the weenie.
        kit.SetProperty(PropertyBool.UnlimitedUse, true);

        // 3. Randomize BoosterEnum (vital type)
        var vitals = new[] { PropertyAttribute2nd.MaxHealth, PropertyAttribute2nd.MaxStamina, PropertyAttribute2nd.MaxMana };
        kit.BoosterEnum = vitals[_rng.Next(vitals.Length)];

        // 4. Roll perks
        int perkCountMin = settings.PerkCountRanges[tier].Min;
        int perkCountMax = settings.PerkCountRanges[tier].Max;
        int perkCount = _rng.Next(perkCountMin, perkCountMax + 1);

        var perks = RollPerks(kit, tier, perkCount, settings.Perks);

        // 5. Build name suffix from perks
        string suffix = BuildPerkSuffix(perks);
        kit.Name = $"Anointed Healing Kit{suffix}";

        // 6. Store tier as PropertyInt for potential future use
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
}