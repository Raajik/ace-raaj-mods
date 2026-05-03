namespace Overtinked;

// Single salvage tinker rule: applies to all WCIDs in Wcids (use both IDs for quest-reward pairs).
// EffectKind matches retail behavior; use MinValue/MaxValue for random, or FixedValue for static.
public class SalvageTinkerRule
{
    [JsonPropertyName("// Wcids")]
    public string WcidsDoc { get; init; } = "Both normal and quest-reward WCIDs so behavior is consistent (e.g. 20993 and 29581 for Steel).";

    [JsonPropertyName("// Name")]
    public string NameDoc { get; init; } = "Display name for logs/config (e.g. Iron, Salvaged Steel).";

    [JsonPropertyName("// EffectKind")]
    public string EffectKindDoc { get; init; } = "Kind of effect: Damage, DamageVariance, WeaponSpeed, ArmorLevel, DamageMod, WeaponDefense, WeaponOffense, ArmorModVsAcid, ArmorModVsSlash, ArmorModVsBludgeon, ArmorModVsFire, ArmorModVsCold, ArmorModVsElectric, etc.";

    [JsonPropertyName("// MinValue")]
    public string MinValueDoc { get; init; } = "Random range low (inclusive). Ignored if FixedValue is set.";

    [JsonPropertyName("// MaxValue")]
    public string MaxValueDoc { get; init; } = "Random range high (inclusive). Ignored if FixedValue is set.";

    [JsonPropertyName("// FixedValue")]
    public string FixedValueDoc { get; init; } = "If set, use this value instead of rolling MinValue..MaxValue.";

    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When false, this salvage rule is skipped.";

    [JsonPropertyName("// BaneSpellIds")]
    public string BaneSpellIdsDoc { get; init; } = "Optional: spell IDs to apply or upgrade on success. First ID = initial spell, each subsequent ID = upgrade tier.";

    [JsonPropertyName("// EffectSummaryFormat")]
    public string EffectSummaryFormatDoc { get; init; } =
        "Optional craft chat line. string.Format(InvariantCulture, format, args): {0} rolled magnitude, {1} signed value (failure flips sign), {2} Name, {3} EffectKind. When set, overrides built-in wording for this rule.";

    [JsonPropertyName("// BankEffectFormat")]
    public string BankEffectFormatDoc { get; init; } =
        "Optional short line for /bank salvage (LLL) when this rule applies. Same placeholders as EffectSummaryFormat. Empty = EffectSummaryFormat if set, else built-in summary.";

    [JsonPropertyName("// BankDescriptionFormat")]
    public string BankDescriptionFormatDoc { get; init; } =
        "Optional long /bank description line. Same placeholders. Empty = generic description from rule name + ranges.";

    public uint[] Wcids { get; set; } = Array.Empty<uint>();

    public string? Name { get; set; }

    public string EffectKind { get; set; } = "";

    public int MinValue { get; set; }
    public int MaxValue { get; set; }

    public int? FixedValue { get; set; }

    public bool Enabled { get; set; } = true;

    public int[] BaneSpellIds { get; set; } = Array.Empty<int>();

    public string? EffectSummaryFormat { get; set; }

    public string? BankEffectFormat { get; set; }

    public string? BankDescriptionFormat { get; set; }
}
