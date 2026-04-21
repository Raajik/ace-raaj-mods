using System;
using System.Collections.Generic;

namespace BetterChestLoot;

/// <summary>
/// Settings for the BetterChestLoot mod.
/// </summary>
public class Settings
{
    /// <summary>
    /// Toggle mod on/off.
    /// Default: true
    /// </summary>
    public bool Enabled { get; init; } = true;

    /// <summary>
    /// List of allowed chest WCIDs. Only these chests will receive guaranteed loot.
    /// Leave empty to target all chests. Default: empty (all chests)
    /// </summary>
    public List<int> AllowedChestWCIDs { get; init; } = new();

    /// <summary>
    /// Maximum number of guaranteed items to add to a chest.
    /// Default: 2 (1-3 range)
    /// </summary>
    public int MaxGuaranteedItems { get; init; } = 2;

    /// <summary>
    /// Chance to add a common item - 0-1.
    /// Default: 0.8 (80%)
    /// </summary>
    public double CommonChance { get; init; } = 0.8;

    /// <summary>
    /// Chance to add an uncommon item - 0-1.
    /// Default: 0.1 (10%)
    /// </summary>
    public double UncommonChance { get; init; } = 0.1;

    /// <summary>
    /// Chance to add a rare item - 0-1.
    /// Default: 0.01 (1%)
    /// </summary>
    public double RareChance { get; init; } = 0.01;

    /// <summary>
    /// Chance to add an extremely rare item - 0-1.
    /// Default: 0.0001 (0.01%)
    /// </summary>
    public double ExtremelyRareChance { get; init; } = 0.0001;

    /// <summary>
    /// Minimum chest tier to affect (1-8).
    /// Default: 1
    /// </summary>
    public int MinChestTier { get; init; } = 1;

    /// <summary>
    /// Maximum chest tier to affect (1-8).
    /// Default: 8
    /// </summary>
    public int MaxChestTier { get; init; } = 8;

    /// <summary>
    /// Enable debug logging for troubleshooting.
    /// Default: false
    /// </summary>
    public bool EnableDebugLogging { get; init; } = false;

    /// <summary>
    /// Minimum reset interval in seconds (10 minutes).
    /// </summary>
    public int MinResetIntervalSeconds { get; init; } = 600;

    /// <summary>
    /// Maximum reset interval in seconds (20 minutes).
    /// </summary>
    public int MaxResetIntervalSeconds { get; init; } = 1200;

    /// <summary>
    /// Chance for 2 items instead of 1 (0-1).
    /// Default: 0.1 (10%)
    /// </summary>
    public double DoubleItemChance { get; init; } = 0.1;
}

/// <summary>
/// Loot configuration loaded from LootConfig.json
/// </summary>
public class LootConfig
{
    public LootCategory common { get; set; } = new();
    public LootCategory uncommon { get; set; } = new();
    public LootCategory rare { get; set; } = new();
    public LootCategory extremelyRare { get; set; } = new();
}

/// <summary>
/// A loot category (common, uncommon, rare, extremely rare)
/// </summary>
public class LootCategory
{
    public List<LootItem> items { get; set; } = new();
    public double stackSizeChance { get; set; } = 0;
}

/// <summary>
/// A single loot item
/// </summary>
public class LootItem
{
    public int wcid { get; set; }
    public string name { get; set; } = "";
    public int stackSize { get; set; } = 1;
}