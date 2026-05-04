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
        "Shipped default: two LootProfiles/*.utl filenames (allowlist for /autoloot menu and new characters). Empty []: bundled list in code for first-login defaults only; /autoloot lists every .utl on disk. AutoSalvage is now material-type based and does not require a .utl profile. Key banking is baked into core (no profile needed).";
    public List<string> DefaultActiveProfiles { get; set; } =
    [
        "Currency.utl",
        "Trophies.utl",
    ];

    [JsonPropertyName("// DefaultProfile")]
    public string DefaultProfileDoc { get; init; } =
        "Legacy: single default filename when DefaultActiveProfiles is empty. Leave empty with empty DefaultActiveProfiles for disk-wide menu + bundled first-login profile set.";
    public string DefaultProfile { get; set; } = "";

    [JsonPropertyName("// NoDuplicateNames")]
    public string NoDuplicateNamesDoc { get; init; } = "Name substrings (case-insensitive): if an item matches and the player already has same WCID in inventory, skip loot — reduces quest-timer bypass via stockpiling. Add more fragments as needed.";
    public List<string> NoDuplicateNames { get; set; } = ["Pincer", "Tusk", "Matron"];

    [JsonPropertyName("// UpgradedTrophyWeenieClassIds")]
    public string UpgradedTrophyWeenieClassIdsDoc { get; init; } = "WCIDs pulled during Pass 1 before .utl profiles (Drudge charm tiers). Empty = skip. Matches BetterSupportSkills DrudgeCharmTrophies tier ids by default.";
    public List<uint> UpgradedTrophyWeenieClassIds { get; set; } = [3669u, 850271u, 850272u, 850273u];

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
    public string EnableChestAutoLootDoc { get; init; } = "When true, opening a non-house chest runs profile autoloot immediately; closing runs salvage sweep only. House chests (HouseOwner) are never touched.";
    public bool EnableChestAutoLoot { get; set; } = true;

    [JsonPropertyName("// EnableLootStackConsolidation")]
    public string EnableLootStackConsolidationDoc { get; init; } = "When true (default), duplicate same-WCID items in a corpse are merged into a single stack after loot generation. Fixes separate-drudge-charm spawns and similar multi-entry create-list drops.";
    public bool EnableLootStackConsolidation { get; set; } = true;

    [JsonPropertyName("// EnableDelayedSalvageSweep")]
    public string EnableDelayedSalvageSweepDoc { get; init; } = "When true, on container/corpse close (excluding house storage), items with a MaterialType (or raw salvage bags) are auto-salvaged into the BSS material bank. Non-material items are left in the container.";
    public bool EnableDelayedSalvageSweep { get; set; } = true;

    [JsonPropertyName("// EnableLevel8CompsConversion")]
    public string EnableLevel8CompsConversionDoc { get; init; } = "When true, level 8 spellcrafting components (quills, inks, skill glyphs) are auto-looted and converted to pyreal value. When false, they are kept as physical items. Hidden from player toggle menu.";
    public bool EnableLevel8CompsConversion { get; set; } = true;

    [JsonPropertyName("// DefaultAutolootSalvageBundleApplied")]
    public string DefaultAutolootSalvageBundleAppliedDoc { get; init; } = "When true: first login (no prefs file) runs full /autoloot on + AutoSalvage; existing prefs with AutolootSalvageDefaultsApplied=false get the same once, then the flag is saved true.";
    public bool DefaultAutolootSalvageBundleApplied { get; set; } = true;
}
