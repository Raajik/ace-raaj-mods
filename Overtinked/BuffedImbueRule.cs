namespace Overtinked;

// Buffed jewelry/imbue: replace default effect with configurable ranges (e.g. Hematite +25–50 HP).
public class BuffedImbueRule
{
    [JsonPropertyName("// Wcids")]
    public string WcidsDoc { get; init; } = "Salvage/material WCIDs this rule applies to.";

    [JsonPropertyName("// Name")]
    public string NameDoc { get; init; } = "Display name for logs.";

    [JsonPropertyName("// PrimaryStat")]
    public string PrimaryStatDoc { get; init; } = "Primary stat: MaxHealth, MaxStamina, MaxMana.";

    [JsonPropertyName("// PrimaryMin")]
    public string PrimaryMinDoc { get; init; } = "Minimum rolled primary stat bonus.";

    [JsonPropertyName("// PrimaryMax")]
    public string PrimaryMaxDoc { get; init; } = "Maximum rolled primary stat bonus.";

    [JsonPropertyName("// SecondaryStat")]
    public string SecondaryStatDoc { get; init; } = "Optional secondary stat (e.g. damage rating from mana/stam).";

    [JsonPropertyName("// SecondaryValue")]
    public string SecondaryValueDoc { get; init; } = "Value for secondary stat when applicable.";

    [JsonPropertyName("// ImbuedEffectTypeName")]
    public string ImbuedEffectTypeNameDoc { get; init; } = "ACE ImbuedEffectType name so the item shows the correct imbue (e.g. WarriorVitality, WarriorVigor).";

    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When false, this buffed imbue rule is skipped.";

    public uint[] Wcids { get; set; } = Array.Empty<uint>();
    public string? Name { get; set; }

    public string PrimaryStat { get; set; } = "";
    public int PrimaryMin { get; set; }
    public int PrimaryMax { get; set; }

    public string? SecondaryStat { get; set; }
    public double SecondaryValue { get; set; }

    public string? ImbuedEffectTypeName { get; set; }

    public bool Enabled { get; set; } = true;
}
