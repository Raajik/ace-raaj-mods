namespace Overtinked;

// Config for a single custom imbue type (Bleed, Cleaving, Nether Rending).
public class NewImbueConfig
{
    // Salvage WCIDs that apply this imbue (e.g. Serpentine for Bleed). Include both IDs for dual-WCID items.
    public uint[] SalvageWcids { get; set; } = Array.Empty<uint>();

    public string? Name { get; set; }
    public bool Enabled { get; set; } = true;
}

// Bleed-specific: stacking DoT. Stored here; combat tick logic can use these values.
public class BleedImbueConfig : NewImbueConfig
{
    // Damage per tick (e.g. 1).
    public int DamagePerTick { get; set; } = 1;

    // Max stacks (e.g. 10 or 20).
    public int MaxStacks { get; set; } = 10;

    // Tick interval in seconds (1 preferred; 3–5 if needed for performance).
    public float TickIntervalSeconds { get; set; } = 1f;
}

// Cleaving: splash damage to other creatures/players near the primary target (separate TakeDamage calls; does not recurse DamageTarget).
public class CleavingImbueCombatConfig : NewImbueConfig
{
    // Radius in meters from the primary target for splash candidates.
    public float SplashRadiusMeters { get; set; } = 5f;

    // Portion of the primary hit's final damage (after mitigation) applied as Health damage to each splash target.
    public float SplashDamageFraction { get; set; } = 0.35f;

    // Cap on extra targets per swing (performance).
    public int MaxSplashTargets { get; set; } = 8;

    // When true (default), splash only applies to victims the attacker is allowed to damage (Player.CanDamage). Stricter for PvP than Attackable-only.
    public bool SplashRespectCanDamageGate { get; set; } = true;

    // When false, cleave never damages Player victims (creatures only).
    public bool SplashDamagePlayerVictims { get; set; } = true;

    // When > 0, caps raw splash damage per target per swing (after fraction, before TakeDamage). 0 = no cap.
    public float SplashDamageCapPerTarget { get; set; }
}

// Nether Rending: extra Nether-type damage on the primary target only, keyed off the main hit's final damage.
public class NetherRendingImbueCombatConfig : NewImbueConfig
{
    // Portion of primary final damage dealt again as Nether (mitigations apply again inside TakeDamage).
    public float NetherDamageFraction { get; set; } = 0.25f;

    // When > 0, caps the Nether bonus per swing (before target resists).
    public float MaxNetherBonusDamage { get; set; } = 0f;

    // Extra multiplier after fraction/cap (1 = default). Lower on players if Nether bonus feels too strong vs natural Nether resistance.
    public float NetherBonusVsCreaturesMultiplier { get; set; } = 1f;

    public float NetherBonusVsPlayersMultiplier { get; set; } = 1f;

    // When > 0, caps Nether bonus damage before TakeDamage (after fraction and player/creature multipliers). 0 = no cap.
    public float NetherBonusSoftCap { get; set; }
}
