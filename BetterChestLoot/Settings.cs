using System;
using System.Collections.Generic;

namespace BetterChestLoot;

// Settings for BetterChestLoot (guaranteed chest drops). Tier chances and WCID pools live in Loremaster/LootConfig.json by default.

public class Settings
{
    public bool Enabled { get; init; } = true;

    // Only these chest WCIDs receive guaranteed loot; empty = all chests that pass other checks.
    public List<int> AllowedChestWCIDs { get; init; } = new();

    // Random count of guaranteed items per trigger: 1..MaxGuaranteedItems.
    public int MaxGuaranteedItems { get; init; } = 2;

    // Optional override for LootConfig.json. Empty = Mods/Loremaster/LootConfig.json.
    public string LootConfigPath { get; init; } = "";

    public int MinChestTier { get; init; } = 1;
    public int MaxChestTier { get; init; } = 8;

    public bool EnableDebugLogging { get; init; } = false;

    public int MinResetIntervalSeconds { get; init; } = 600;
    public int MaxResetIntervalSeconds { get; init; } = 1200;

    public double DoubleItemChance { get; init; } = 0.1;
}
