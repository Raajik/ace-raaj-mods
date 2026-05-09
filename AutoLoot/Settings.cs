namespace AutoLoot;

public class Settings
{
    [JsonPropertyName("// AutoLoot")]
    public string AutoLootDoc { get; init; } = "Reading order: every // key is documentation; real settings follow in the same order. DebugLogging through LockpickLootBankPercent.";

    [JsonPropertyName("// DebugLogging")]
    public string DebugLoggingDoc { get; init; } = "When true, logs PostGenerateTreasure entry and early-return reasons to Ace_Log (verbose; disable after debugging).";
    public bool DebugLogging { get; set; }

    [JsonPropertyName("// DepositLootedCurrencyToBank")]
    public string DepositLootedCurrencyToBankDoc { get; init; } = "When true, looted pyreal stacks and trade notes are credited to banked pyreals (PropertyInt64) instead of inventory.";
    public bool DepositLootedCurrencyToBank { get; set; } = true;

    [JsonPropertyName("// BankCashProperty")]
    public string BankCashPropertyDoc { get; init; } = "Must match LeyLineLedger Settings.CashProperty when using that mod (default 39999).";
    public int BankCashProperty { get; set; } = 39999;

    [JsonPropertyName("// LootProfilePath")]
    public string LootProfilePathDoc { get; init; } = "Folder for .utl loot profiles. Default empty: PatchClass sets Path.Combine(ModPath, \"LootProfiles\"). Override to any server path; /autoloot creates the folder if missing.";
    public string LootProfilePath { get; set; } = "";

    [JsonPropertyName("// DefaultActiveProfiles")]
    public string DefaultActiveProfilesDoc { get; init; } =
        "Archived. .utl profiles are no longer used; all banking is handled by C# code (currencies, trophies, keys, lockpicks, salvage). Keep empty.";
    public List<string> DefaultActiveProfiles { get; set; } = [];

    [JsonPropertyName("// DefaultProfile")]
    public string DefaultProfileDoc { get; init; } =
        "Legacy: single default filename when DefaultActiveProfiles is empty. Leave empty with empty DefaultActiveProfiles for disk-wide menu + bundled first-login profile set.";
    public string DefaultProfile { get; set; } = "";

    [JsonPropertyName("// NoDuplicateNames")]
    public string NoDuplicateNamesDoc { get; init; } = "Name substrings (case-insensitive): if an item matches and the player already has same WCID in inventory, skip loot — reduces quest-timer bypass via stockpiling. Add more fragments as needed.";
    public List<string> NoDuplicateNames { get; set; } = ["Pincer", "Tusk", "Matron"];

    [JsonPropertyName("// UpgradedTrophyWeenieClassIds")]
    public string UpgradedTrophyWeenieClassIdsDoc { get; init; } = "Physical custom-trophy WCIDs: Pass 1 pulls these from corpse/chest into the player's pack before any .utl profile (no LLL ledger — real items). Includes drudge charms, rat tails, wasp wings, mob heads, and quest letters. See Windblown/docs/TrophyLineRegistry.md when adding new trophy lines.";
    public List<uint> UpgradedTrophyWeenieClassIds { get; set; } =
    [
        // Drudge Charms
        24835u, 850271u, 850272u, 850273u,
        // Rat Tails
        3681u,  // Black Rat Tail
        3682u,  // Brown Rat Tail
        4133u,  // Rat Tail (base, after sibling replacement)
        // Rat Tail tiers
        850280u, 850281u, 850282u,
        // Wasp Wings
        3699u,  // Blue Phyntos Wasp Wing
        3700u,  // Gold Phyntos Wasp Wing
        3701u,  // Green Phyntos Wasp Wing
        3702u,  // Mire Phyntos Wasp Wing
        3703u,  // Red Phyntos Wasp Wing
        7603u,  // White Phyntos Wasp Wing (base)
        8426u,  // Jungle Phyntos Wasp Wing
        13089u, // Carpenter Wasp Wing
        // Wasp Wing tiers
        850283u, 850284u, 850285u,
        // Mob Heads
        8144u,  // Banderling Head
        8145u,  // Drudge Head
        8146u,  // Mosswart Head
        8147u,  // Tusker Head
        9097u,  // Ursuin Head
        12215u, // Pumpkin Head
        12216u, // Sclavus Head
        12225u, // Zombie Head
        3680u,  // Olthoi Head
        3687u,  // Skeleton's Skull
        4121u,  // Lich Skull
        19446u, // Olthoi Head (alt)
        22059u, // Eviscerator Head
        24846u, // Mutilator Head
        25554u, // Knath Head
        25561u, // Moarsman Head
        28886u, // Burun Guruk Head
        28888u, // Chittick Head
        28889u, // Mite Head
        34029u, // Shadow Head
        36359u, // Cow Head
        36362u, // Mukkir Head
        // Quest Letters
        8701u,  // Lucky Gold Letter
        8702u,  // Scarlet Red Letter
        45875u, // Lucky Gold Letter (variant)
        45876u, // Scarlet Red Letter (variant)
        // Olthoi Pincers
        10843u, // Eviscerator Pincer
        10844u, // Gardener Pincer
        10845u, // Harvester Pincer
        10846u, // Legionary Pincer
        10847u, // Soldier Pincer
        27589u, // Mutilator Pincer
        27590u, // Warrior Pincer
        27591u, // Worker Pincer
        51211u, // Hive Eviscerator Pincer
        51214u, // Hive Warrior Pincer
    ];

    [JsonPropertyName("// KeysUnlockThreshold")]
    public string KeysUnlockThresholdDoc { get; init; } = "DEPRECATED — Key auto-banking is now unconditional for all players. This setting is kept for notification/achievement tracking only.";
    public int KeysUnlockThreshold { get; set; } = 10;

    [JsonPropertyName("// LockpickUnlockThreshold")]
    public string LockpickUnlockThresholdDoc { get; init; } = "Number of objects unlocked with lockpicks required to unlock lockpick corpse-loot banking.";
    public int LockpickUnlockThreshold { get; set; } = 10;

    [JsonPropertyName("// SalvageUnlockThreshold")]
    public string SalvageUnlockThresholdDoc { get; init; } = "DEPRECATED — AutoSalvage is now available to all players from the start. Type /autoloot salvage or /autosalvage to toggle it.";
    public int SalvageUnlockThreshold { get; set; } = 0;

    [JsonPropertyName("// KeyBankProperties")]
    public string KeyBankPropertiesDoc { get; init; } = "WCID to PropertyInt64 mapping for key banking (must match LeyLineLedger Settings.Items).";
    public Dictionary<uint, int> KeyBankProperties { get; set; } = new()
    {
        { 6876, 40250 },   // Sturdy Iron Key
        { 24477, 40500 },  // Sturdy Steel Key
        { 38456, 40750 },  // Mana Forge Key
        { 48746, 41000 },  // Legendary Key
    };

    [JsonPropertyName("// LockpickBankProperty")]
    public string LockpickBankPropertyDoc { get; init; } = "PropertyInt64 for banked lockpick durability (must match LeyLineLedger / BetterSupportSkills).";
    public int LockpickBankProperty { get; set; } = 40130;

    [JsonPropertyName("// LockpickLootBankPercent")]
    public string LockpickLootBankPercentDoc { get; init; } = "Percent of lockpick structure banked when looted from corpses (0.10 = 10%).";
    public float LockpickLootBankPercent { get; set; } = 0.10f;

    [JsonPropertyName("// EnableChestAutoLoot")]
    public string EnableChestAutoLootDoc { get; init; } = "When true, opening a non-house chest runs profile autoloot immediately; closing runs the same banking/profile passes so leftovers credit LLL before ACE clears the chest (then EnableDelayedSalvageSweep controls material salvage). House chests (HouseOwner) are never touched.";
    public bool EnableChestAutoLoot { get; set; } = true;

    [JsonPropertyName("// EnableLootStackConsolidation")]
    public string EnableLootStackConsolidationDoc { get; init; } = "When true (default), duplicate same-WCID items in a corpse are merged into a single stack after loot generation. Fixes separate-drudge-charm spawns and similar multi-entry create-list drops.";
    public bool EnableLootStackConsolidation { get; set; } = true;

    [JsonPropertyName("// EnableDelayedSalvageSweep")]
    public string EnableDelayedSalvageSweepDoc { get; init; } = "When true, on corpse/chest close (non-house chest), runs BetterSupportSkills material salvage on leftovers. When false, skips that sweep (EnableChestAutoLoot still controls banking/profile on chest close).";
    public bool EnableDelayedSalvageSweep { get; set; } = true;

    [JsonPropertyName("// EnableLevel8CompsConversion")]
    public string EnableLevel8CompsConversionDoc { get; init; } = "When true, level 8 spellcrafting components (quills, inks, skill glyphs) are auto-looted and converted to pyreal value. When false, they are kept as physical items. Hidden from player toggle menu.";
    public bool EnableLevel8CompsConversion { get; set; } = true;

    [JsonPropertyName("// DefaultAutolootSalvageBundleApplied")]
    public string DefaultAutolootSalvageBundleAppliedDoc { get; init; } = "When true: first login (no prefs file) runs full /autoloot on + AutoSalvage; existing prefs with AutolootSalvageDefaultsApplied=false get the same once, then the flag is saved true.";
    public bool DefaultAutolootSalvageBundleApplied { get; set; } = true;
}
