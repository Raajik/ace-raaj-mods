namespace Empower;

public enum Features
{
    AnointedHealingKits,
}

public class Settings
{
    [JsonPropertyName("// FeatureToggles")]
    public string FeatureTogglesDoc { get; init; } = "Toggle switches for Empower modules.";

    [JsonPropertyName("// EnableAnointedHealingKits")]
    public string EnableAnointedHealingKitsDoc { get; init; } = "When true, all healing kit loot drops are replaced with Anointed Kits (unlimited use, randomized stats + perks).";
    public bool EnableAnointedHealingKits { get; set; } = true;

    [JsonPropertyName("// AnointedKits")]
    public string AnointedKitsSectionDoc { get; init; } = "Anointed Healing Kit generation and perk settings.";
    public AnointedKitSettings AnointedKits { get; set; } = new();
}

public class AnointedKitSettings
{
    // Weenie class ID for the Anointed Healing Kit template
    [JsonPropertyName("// AnointedKitWcid")]
    public string AnointedKitWcidDoc { get; init; } = "WCID of the Anointed Healing Kit weenie template. Must exist in the world database.";
    public uint AnointedKitWcid { get; set; } = 900_000;

    // Stat ranges per tier — min = floor (>= best vanilla at that tier)
    [JsonPropertyName("// StatRanges")]
    public string StatRangesDoc { get; init; } = "Per-tier min/max for Healing Skill Bonus and Restoration %. Index 0 = T1, 7 = T8.";
    public TierStatRange[] StatRanges { get; set; } = new[]
    {
        new TierStatRange { MinSkill = 50,  MaxSkill = 100,  MinRestoration = 1.0,  MaxRestoration = 1.5 },   // T1
        new TierStatRange { MinSkill = 75,  MaxSkill = 150,  MinRestoration = 1.0,  MaxRestoration = 1.75 },  // T2
        new TierStatRange { MinSkill = 100, MaxSkill = 200,  MinRestoration = 1.5,  MaxRestoration = 2.5 },   // T3
        new TierStatRange { MinSkill = 100, MaxSkill = 250,  MinRestoration = 1.75, MaxRestoration = 3.0 },   // T4
        new TierStatRange { MinSkill = 150, MaxSkill = 300,  MinRestoration = 2.0,  MaxRestoration = 3.5 },   // T5
        new TierStatRange { MinSkill = 200, MaxSkill = 400,  MinRestoration = 2.5,  MaxRestoration = 5.0 },   // T6
        new TierStatRange { MinSkill = 200, MaxSkill = 400,  MinRestoration = 2.5,  MaxRestoration = 5.0 },   // T7
        new TierStatRange { MinSkill = 200, MaxSkill = 400,  MinRestoration = 2.5,  MaxRestoration = 5.0 },   // T8
    };

    [JsonPropertyName("// DropChance")]
    public string DropChanceDoc { get; init; } = "Chance (0-1) that a healing kit loot drop is an Anointed kit instead of a vanilla kit. 0.15 = 15%.";
    public double DropChance { get; set; } = 0.15;

    // Perk count ranges per tier
    [JsonPropertyName("// PerkCountRanges")]
    public string PerkCountRangesDoc { get; init; } = "Min/max number of perks per kit by tier.";
    public TierPerkCount[] PerkCountRanges { get; set; } = new[]
    {
        new TierPerkCount { Min = 2, Max = 2 }, // T1
        new TierPerkCount { Min = 2, Max = 3 }, // T2
        new TierPerkCount { Min = 2, Max = 3 }, // T3
        new TierPerkCount { Min = 3, Max = 4 }, // T4
        new TierPerkCount { Min = 3, Max = 4 }, // T5
        new TierPerkCount { Min = 4, Max = 5 }, // T6
        new TierPerkCount { Min = 4, Max = 5 }, // T7
        new TierPerkCount { Min = 4, Max = 5 }, // T8
    };

    // Per-setting: which perk pool items are enabled, and their tier-scaled value ranges
    [JsonPropertyName("// PerkSettings")]
    public string PerkSettingsDoc { get; init; } = "Per-perk enabled flag and per-tier value ranges. Values are interpreted differently per perk type.";
    public PerkSettingsConfig Perks { get; set; } = new();
}

public class TierStatRange
{
    public int MinSkill { get; set; }
    public int MaxSkill { get; set; }
    public double MinRestoration { get; set; }
    public double MaxRestoration { get; set; }
}

public class TierPerkCount
{
    public int Min { get; set; }
    public int Max { get; set; }
}

public class PerkSettingsConfig
{
    // Omni-Heal: % of main heal splashed to other vitals
    [JsonPropertyName("// OmniHeal")]
    public string OmniHealDoc { get; init; } = "Splash % range to other vitals.";
    public PerkTierRange OmniHeal { get; set; } = new()
    {
        Enabled = true,
        TierValues = new double[8, 2]
        {
            { 0.10, 0.20 }, { 0.10, 0.20 },  // T1-T2
            { 0.15, 0.30 }, { 0.15, 0.30 },  // T3-T4
            { 0.25, 0.40 }, { 0.25, 0.40 },  // T5-T6
            { 0.30, 0.50 }, { 0.30, 0.50 },  // T7-T8
        }
    };

    // Regeneration: total HoT over 15s as % of main heal
    [JsonPropertyName("// Regeneration")]
    public string RegenerationDoc { get; init; } = "Total HoT % over duration.";
    public PerkTierRange Regeneration { get; set; } = new()
    {
        Enabled = true,
        TierValues = new double[8, 2]
        {
            { 0.30, 0.50 }, { 0.30, 0.50 },
            { 0.40, 0.75 }, { 0.40, 0.75 },
            { 0.50, 1.00 }, { 0.50, 1.00 },
            { 0.75, 1.50 }, { 0.75, 1.50 },
        }
    };

    // Auto-Self: binary (values ignored, now baseline on all Anointed kits)
    [JsonPropertyName("// AutoSelf")]
    public string AutoSelfDoc { get; init; } = "BASELINE — all Anointed kits auto-self-target. Removed from rollable perk pool.";
    public PerkEnabledOnly AutoSelf { get; set; } = new() { Enabled = false };

    // Efficiency: stamina cost reduction %
    [JsonPropertyName("// Efficiency")]
    public string EfficiencyDoc { get; init; } = "Stamina cost reduction %.";
    public PerkTierRange Efficiency { get; set; } = new()
    {
        Enabled = true,
        TierValues = new double[8, 2]
        {
            { 0.10, 0.25 }, { 0.10, 0.25 },
            { 0.20, 0.40 }, { 0.20, 0.40 },
            { 0.30, 0.50 }, { 0.30, 0.50 },
            { 0.40, 0.75 }, { 0.40, 0.75 },
        }
    };

    // Critical Surge: flat % added to crit heal chance
    [JsonPropertyName("// CriticalSurge")]
    public string CriticalSurgeDoc { get; init; } = "Additional crit heal chance % (base is 10%).";
    public PerkTierRange CriticalSurge { get; set; } = new()
    {
        Enabled = true,
        TierValues = new double[8, 2]
        {
            { 0.05, 0.10 }, { 0.05, 0.10 },
            { 0.08, 0.15 }, { 0.08, 0.15 },
            { 0.10, 0.20 }, { 0.10, 0.20 },
            { 0.15, 0.30 }, { 0.15, 0.30 },
        }
    };

    // Cleansing: % chance to remove one debuff on successful heal
    [JsonPropertyName("// Cleansing")]
    public string CleansingDoc { get; init; } = "Chance to dispel one debuff on successful heal.";
    public PerkTierRange Cleansing { get; set; } = new()
    {
        Enabled = true,
        TierValues = new double[8, 2]
        {
            { 0.10, 0.20 }, { 0.10, 0.20 },
            { 0.15, 0.30 }, { 0.15, 0.30 },
            { 0.20, 0.40 }, { 0.20, 0.40 },
            { 0.30, 0.50 }, { 0.30, 0.50 },
        }
    };

    // Reactive Barrier: DamageResistRating granted for 5s
    [JsonPropertyName("// ReactiveBarrier")]
    public string ReactiveBarrierDoc { get; init; } = "DamageResistRating granted on heal.";
    public PerkTierRange ReactiveBarrier { get; set; } = new()
    {
        Enabled = true,
        TierValues = new double[8, 2]
        {
            { 1, 2 }, { 1, 2 },
            { 2, 3 }, { 2, 3 },
            { 3, 5 }, { 3, 5 },
            { 4, 8 }, { 4, 8 },
        }
    };

    // Boon: % Healing skill buff for 10s on successful heal
    [JsonPropertyName("// Boon")]
    public string BoonDoc { get; init; } = "% Healing skill buff for 10s after heal.";
    public PerkTierRange Boon { get; set; } = new()
    {
        Enabled = true,
        TierValues = new double[8, 2]
        {
            { 0.05, 0.10 }, { 0.05, 0.10 },
            { 0.08, 0.15 }, { 0.08, 0.15 },
            { 0.10, 0.20 }, { 0.10, 0.20 },
            { 0.15, 0.25 }, { 0.15, 0.25 },
        }
    };
}

/// <summary>Perk with tier-scaled min/max values (0-1 range typically).</summary>
public class PerkTierRange
{
    public bool Enabled { get; set; } = true;
    /// <summary>[tier, (min, max)] — flattened to 8x2 array. Index 0 = T1, 7 = T8.</summary>
    public double[,] TierValues { get; set; } = new double[8, 2];
}

/// <summary>Binary perk (on/off, no scaling).</summary>
public class PerkEnabledOnly
{
    public bool Enabled { get; set; } = true;
}

public class CombatClassesSettings
{
    [JsonPropertyName("// Healer")]
    public string HealerSectionDoc { get; init; } = "Healer class bonuses — left unchanged from BSS. This mod only replaces loot kits, not class perks.";
}