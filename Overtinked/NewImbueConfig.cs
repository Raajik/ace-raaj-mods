namespace Overtinked;

// Config for a single custom imbue type (Hemorrhage, Cleaving, Nether Rending).
public class NewImbueConfig
{
    [JsonPropertyName("// SalvageWcids")]
    public string SalvageWcidsDoc { get; init; } = "Salvage WCIDs that apply this imbue (e.g. Salvaged Yellow Garnet for Hemorrhage). Include both IDs for dual-WCID items.";

    [JsonPropertyName("// Name")]
    public string NameDoc { get; init; } = "Display name for logs.";

    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When false, this imbue type is disabled.";

    public uint[] SalvageWcids { get; set; } = Array.Empty<uint>();

    public string? Name { get; set; }
    public bool Enabled { get; set; } = true;
}

// Hemorrhage: flat stacking DoT + AoE stack application on primary weapon hit.
public class HemorrhageImbueConfig : NewImbueConfig
{
    [JsonPropertyName("// BaseRecipeId")]
    public string BaseRecipeIdDoc { get; init; } = "ACE world recipe id used when GetRecipe has no cookbook/GetNewRecipe match for Hemorrhage salvage (vanilla never registers yellow garnet). TryMutate still applies Hemorrhage from salvage WCID; this only satisfies craft pipeline. Default 4452 (Red Garnet weapon imbue line). Change if VerifyRequirements/GetRecipeChance misbehave for your DB.";

    [JsonPropertyName("// StacksPerApplication")]
    public string StacksPerApplicationDoc { get; init; } = "Stacks added to primary target and each AoE victim per qualifying hit.";

    [JsonPropertyName("// MaxStacks")]
    public string MaxStacksDoc { get; init; } = "Max stacks per victim (cap).";

    [JsonPropertyName("// AoERadiusYards")]
    public string AoERadiusYardsDoc { get; init; } = "Radius in yards (×0.9144 for GetDistance meters). Default 10. When 0, AoERadiusMeters is used (legacy).";

    [JsonPropertyName("// AoERadiusMeters")]
    public string AoERadiusMetersDoc { get; init; } = "Legacy fallback when AoERadiusYards is 0.";

    [JsonPropertyName("// TickIntervalSeconds")]
    public string TickIntervalSecondsDoc { get; init; } = "Seconds between each burst of per-stack damage.";

    [JsonPropertyName("// DamagePerStackPerTick")]
    public string DamagePerStackPerTickDoc { get; init; } = "Health damage per active stack per tick (usually 1).";

    [JsonPropertyName("// StaggerBetweenHitsSeconds")]
    public string StaggerBetweenHitsSecondsDoc { get; init; } = "Delay between each 1-damage TakeDamage in a burst so combat text streams.";

    public uint BaseRecipeId { get; set; } = 4452;

    public int StacksPerApplication { get; set; } = 3;

    public int MaxStacks { get; set; } = 15;

    public float AoERadiusYards { get; set; } = 10f;

    public float AoERadiusMeters { get; set; } = 10f;

    public float TickIntervalSeconds { get; set; } = 1f;

    public int DamagePerStackPerTick { get; set; } = 1;

    public float StaggerBetweenHitsSeconds { get; set; } = 0.05f;
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

// Jewelry Cleave: bonus cleave targets when equipped on finger/wrist/neck slots.
public class JewelryCleaveImbueConfig : NewImbueConfig
{
    [JsonPropertyName("// BonusTargets")]
    public string BonusTargetsDoc { get; init; } = "Number of extra cleave targets granted when this imbue is worn. ACE subtracts 1 internally, so 1 bonus target = Cleaving=2.";

    public int BonusTargets { get; set; } = 1;
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

// Shatter: stacking debuff on creatures (40134 stacks, 40135 broken at max); weapon flag on 40133. Damage multiplier per stack on target; extra multiplier on Bludgeon when broken.
public class ShatterImbueConfig : NewImbueConfig
{
    [JsonPropertyName("// BaseRecipeId")]
    public string BaseRecipeIdDoc { get; init; } = "ACE world recipe id when GetRecipe has no cookbook match for Shatter salvage (same pattern as Hemorrhage). Default 4452.";

    [JsonPropertyName("// StacksPerHit")]
    public string StacksPerHitDoc { get; init; } = "Debuff stacks added to the creature per qualifying hit from a Shatter weapon.";

    [JsonPropertyName("// MaxStacks")]
    public string MaxStacksDoc { get; init; } = "Stack cap; at cap the target is treated as broken for Bludgeon bonus.";

    [JsonPropertyName("// DamageBonusPerStack")]
    public string DamageBonusPerStackDoc { get; init; } = "Additive damage multiplier per stack already on the target before this hit (0.2 = +20% per stack).";

    [JsonPropertyName("// BludgeonBonusWhenBroken")]
    public string BludgeonBonusWhenBrokenDoc { get; init; } = "Extra multiplier on Health damage when target is broken and this hit's DamageType is Bludgeon (0.25 = +25%).";

    public uint BaseRecipeId { get; set; } = 4452;

    public int StacksPerHit { get; set; } = 1;

    public int MaxStacks { get; set; } = 5;

    public float DamageBonusPerStack { get; set; } = 0.2f;

    public float BludgeonBonusWhenBroken { get; set; } = 0.25f;
}
