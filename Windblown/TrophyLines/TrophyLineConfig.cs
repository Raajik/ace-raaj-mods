namespace Windblown.TrophyLines;

/// <summary>
/// JSON schema for a single trophy line. One file under Content/TrophyLines/*.json may contain many lines.
/// </summary>
internal sealed class TrophyLineConfigFile
{
    public string? Description { get; set; }
    public List<TrophyLineConfig> Lines { get; set; } = new();
}

internal sealed class TrophyLineConfig
{
    /// <summary>Operator-friendly identifier (e.g. "DrudgeCharm", "RatTail"). Logged on register.</summary>
    public string Name { get; set; } = "";

    public bool Enabled { get; set; } = true;

    /// <summary>
    /// CreatureType enum name (e.g. "Drudge", "Rat", "PhyntosWasp"). Drops only roll on creatures of this species.
    /// </summary>
    public string CreatureTypeGate { get; set; } = "";

    /// <summary>Display name shown in turn-in chat messages (e.g. "Bloodletter Drudge Charm", "Rat Tail").</summary>
    public string TurnInDisplayName { get; set; } = "";

    public List<TrophyTier> Tiers { get; set; } = new();

    /// <summary>
    /// Vanilla sibling WCIDs that should be replaced with this line's base WCID (Tiers[0].Wcid) at corpse-drop time.
    /// E.g. for Rat Tail line: [3681, 3682, 3683, 3684, 3685, 4134, 8223] all swap to 4133. Empty = no replacement.
    /// </summary>
    public List<uint> ReplaceSiblingWcids { get; set; } = new();

    /// <summary>
    /// PropertyInt64 id used for bank credit on turn-in. 39999 (FakeInt64.LedgerBankCash) is the LLL convention.
    /// </summary>
    public int BankCashProperty { get; set; } = 39999;

    public bool EnableBulkTurnIn { get; set; } = true;

    /// <summary>
    /// NPC WCIDs that should NOT have their Give emotes intercepted for this trophy line.
    /// E.g. mask makers who should still receive heads and give masks instead of XP/bank credit.
    /// </summary>
    public List<uint> ExcludedNpcWcids { get; set; } = new();
}

internal sealed class TrophyTier
{
    /// <summary>Display label for the tier (e.g. "Regular", "Quality", "Pristine", "Perfect").</summary>
    public string TierName { get; set; } = "";

    /// <summary>Weenie class id for this tier. Tiers[0] is treated as the base/regular tier.</summary>
    public uint Wcid { get; set; }

    /// <summary>0..1 chance per kill to roll one of this tier (independent rolls per tier).</summary>
    public double DropChance { get; set; }

    /// <summary>
    /// Optional: if populated, only creatures whose WeenieClassId is in this list can roll this tier.
    /// If empty/null, falls back to the line-level CreatureTypeGate (current default behavior).
    /// Use for per-creature gating where different mobs of the same CreatureType drop different items
    /// (e.g. specific olthoi pincer types from specific olthoi varieties).
    /// </summary>
    public List<uint>? CreatureWcidGate { get; set; }

    /// <summary>Fraction of `GetXPBetweenLevels(level, level+1)` granted per turned-in unit.</summary>
    public float XpFraction { get; set; }

    /// <summary>Bank-cash credit per turned-in unit, deposited via LeyLineLedgerBankInterop.IncBanked.</summary>
    public long BankCredit { get; set; }
}
