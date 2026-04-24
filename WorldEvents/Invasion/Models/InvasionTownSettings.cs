namespace WorldEvents.Invasion.Models;

public enum InvasionMode
{
    /// <summary>Fires the named ACE event; SQL-defined generators spawn the town's invasion mobs.</summary>
    Scripted,
    /// <summary>Spawns level-appropriate mobs (themed or vanilla) directly at the town center.</summary>
    Dynamic,
    /// <summary>Randomly chooses Scripted or Dynamic each wave.</summary>
    Random,
}

public sealed class InvasionTownSettings
{
    public string TownName { get; set; } = "";

    /// <summary>ACE event name (e.g. "HoltAttack"). Required for Scripted and Random modes.</summary>
    public string EventName { get; set; } = "";

    public InvasionMode Mode { get; set; } = InvasionMode.Dynamic;
    public bool Enabled { get; set; } = true;

    // ── Dynamic mode: fallback - scan these landblocks for vanilla creature instances ──
    /// <summary>
    /// Landblock IDs (decimal ints; upper 16 bits of ObjCellId) to scan for vanilla creature spawns.
    /// Only used in Dynamic mode when InvasionUseCreatureTypeTheme is false or no themed mobs found.
    /// </summary>
    public List<int> DynamicLandblocks { get; set; } = new();

    // ── Dynamic mode: themed invasion scatter position ─────────────────────────────
    /// <summary>
    /// Full ObjCellId (landblock + cell) of the town center where themed/scattered mobs spawn.
    /// Example: Holtburg courtyard = 0x00180110 (268566800 decimal). 0 = Dynamic mode disabled.
    /// </summary>
    public uint TownCenterObjCellId { get; set; } = 0;
    public float TownCenterX { get; set; } = 0f;
    public float TownCenterY { get; set; } = 0f;
    public float TownCenterZ { get; set; } = 0f;

    /// <summary>Radius (in local cell units, ~1 unit ≈ 1 meter) to scatter spawns around the town center.</summary>
    public float TownSpawnRadius { get; set; } = 30f;

    // ── Dynamic mode: level range used when tier system is off ─────────────────────
    public int DynamicLevelMin { get; set; } = 1;
    public int DynamicLevelMax { get; set; } = 60;

    /// <summary>Max number of creatures to spawn per Dynamic wave.</summary>
    public int DynamicMaxSpawns { get; set; } = 10;

    // ── Boss config ────────────────────────────────────────────────────────
    /// <summary>WCID of the boss creature to spawn when the kill threshold is reached. 0 = no boss.</summary>
    public uint BossWcid { get; set; } = 0;
}
