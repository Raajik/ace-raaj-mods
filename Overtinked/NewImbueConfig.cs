namespace Overtinked;

// Config for a single custom imbue type (Bleed, Cleaving, Nether Rending).
public class NewImbueConfig
{
    [JsonPropertyName("// SalvageWcids")]
    public string SalvageWcidsDoc { get; init; } = "Salvage WCIDs that apply this imbue (e.g. Serpentine for Bleed). Include both IDs for dual-WCID items.";

    [JsonPropertyName("// Name")]
    public string NameDoc { get; init; } = "Display name for logs.";

    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When false, this imbue type is disabled.";

    public uint[] SalvageWcids { get; set; } = Array.Empty<uint>();

    public string? Name { get; set; }
    public bool Enabled { get; set; } = true;
}

// Bleed-specific: stacking DoT. Stored here; combat tick logic can use these values.
public class BleedImbueConfig : NewImbueConfig
{
    [JsonPropertyName("// DamagePerTick")]
    public string DamagePerTickDoc { get; init; } = "Damage per tick (e.g. 1).";

    [JsonPropertyName("// MaxStacks")]
    public string MaxStacksDoc { get; init; } = "Max stacks (e.g. 10 or 20).";

    [JsonPropertyName("// TickIntervalSeconds")]
    public string TickIntervalSecondsDoc { get; init; } = "Tick interval in seconds (1 preferred; 3–5 if needed for performance).";

    public int DamagePerTick { get; set; } = 1;

    public int MaxStacks { get; set; } = 10;

    public float TickIntervalSeconds { get; set; } = 1f;
}

// Cleaving: splash damage to other creatures/players near the primary target (separate TakeDamage calls; does not recurse DamageTarget).
public class CleavingImbueCombatConfig : NewImbueConfig
{
    [JsonPropertyName("// SplashRadiusMeters")]
    public string SplashRadiusMetersDoc { get; init; } = "Radius in meters from the primary target for splash candidates.";

    [JsonPropertyName("// SplashDamageFraction")]
    public string SplashDamageFractionDoc { get; init; } = "Portion of the primary hit's final damage (after mitigation) applied as Health damage to each splash target.";

    [JsonPropertyName("// MaxSplashTargets")]
    public string MaxSplashTargetsDoc { get; init; } = "Cap on extra targets per swing (performance).";

    [JsonPropertyName("// SplashRespectCanDamageGate")]
    public string SplashRespectCanDamageGateDoc { get; init; } = "When true, splash only applies to victims the attacker is allowed to damage (Player.CanDamage).";

    [JsonPropertyName("// SplashDamagePlayerVictims")]
    public string SplashDamagePlayerVictimsDoc { get; init; } = "When false, cleave never damages Player victims (creatures only).";

    [JsonPropertyName("// SplashDamageCapPerTarget")]
    public string SplashDamageCapPerTargetDoc { get; init; } = "When greater than 0, caps raw splash damage per target per swing (after fraction, before TakeDamage). 0 = no cap.";

    public float SplashRadiusMeters { get; set; } = 5f;

    public float SplashDamageFraction { get; set; } = 0.35f;

    public int MaxSplashTargets { get; set; } = 8;

    public bool SplashRespectCanDamageGate { get; set; } = true;

    public bool SplashDamagePlayerVictims { get; set; } = true;

    public float SplashDamageCapPerTarget { get; set; }
}

// Nether Rending: extra Nether-type damage on the primary target only, keyed off the main hit's final damage.
public class NetherRendingImbueCombatConfig : NewImbueConfig
{
    [JsonPropertyName("// NetherDamageFraction")]
    public string NetherDamageFractionDoc { get; init; } = "Portion of primary final damage dealt again as Nether (mitigations apply again inside TakeDamage).";

    [JsonPropertyName("// MaxNetherBonusDamage")]
    public string MaxNetherBonusDamageDoc { get; init; } = "When greater than 0, caps the Nether bonus per swing (before target resists).";

    [JsonPropertyName("// NetherBonusVsCreaturesMultiplier")]
    public string NetherBonusVsCreaturesMultiplierDoc { get; init; } = "Extra multiplier after fraction/cap vs creatures (1 = default).";

    [JsonPropertyName("// NetherBonusVsPlayersMultiplier")]
    public string NetherBonusVsPlayersMultiplierDoc { get; init; } = "Extra multiplier vs players; lower if Nether bonus feels too strong vs natural Nether resistance.";

    [JsonPropertyName("// NetherBonusSoftCap")]
    public string NetherBonusSoftCapDoc { get; init; } = "When greater than 0, caps Nether bonus damage before TakeDamage (after fraction and player/creature multipliers). 0 = no cap.";

    public float NetherDamageFraction { get; set; } = 0.25f;

    public float MaxNetherBonusDamage { get; set; } = 0f;

    public float NetherBonusVsCreaturesMultiplier { get; set; } = 1f;

    public float NetherBonusVsPlayersMultiplier { get; set; } = 1f;

    public float NetherBonusSoftCap { get; set; }
}
