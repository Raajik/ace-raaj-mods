namespace EmpyreanAlteration;

// Quest-growth salvage-like rolls (mirrors Overtinked SalvageTinkerRule for JSON portability).
public class QuestGrowthSalvageTinkerRule
{
    [JsonPropertyName("// Wcids")]
    public string WcidsDoc { get; init; } = "Both normal and quest-reward WCIDs so behavior is consistent (e.g. 20993 and 29581 for Steel).";

    [JsonPropertyName("// Name")]
    public string NameDoc { get; init; } = "Display name for logs/config (e.g. Iron, Salvaged Steel).";

    [JsonPropertyName("// EffectKind")]
    public string EffectKindDoc { get; init; } = "Kind of effect: Damage, DamageVariance, WeaponSpeed, ArmorLevel, DamageMod, WeaponDefense, WeaponOffense, ArmorModVsAcid, etc.";

    [JsonPropertyName("// MinValue")]
    public string MinValueDoc { get; init; } = "Random range low (inclusive). Ignored if FixedValue is set.";

    [JsonPropertyName("// MaxValue")]
    public string MaxValueDoc { get; init; } = "Random range high (inclusive). Ignored if FixedValue is set.";

    [JsonPropertyName("// FixedValue")]
    public string FixedValueDoc { get; init; } = "If set, use this value instead of rolling MinValue..MaxValue.";

    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When false, this salvage rule is skipped.";

    public uint[] Wcids { get; set; } = Array.Empty<uint>();

    public string? Name { get; set; }

    public string EffectKind { get; set; } = "";

    public int MinValue { get; set; }
    public int MaxValue { get; set; }

    public int? FixedValue { get; set; }

    public bool Enabled { get; set; } = true;
}
