namespace AutoLoot;

// Holds configurable settings for AutoLoot. ACE.BaseMod creates Settings.json beside the DLL on first run.
// Use PatchClass.Settings; reload picks up JSON changes in OnWorldOpen().
public class Settings
{
    [JsonPropertyName("// AutoLoot")]
    public string AutoLootDoc { get; init; } = "Reading order: every // key is documentation; real settings follow in the same order. DebugLogging through NoDuplicateNames.";

    [JsonPropertyName("// DebugLogging")]
    public string DebugLoggingDoc { get; init; } = "When true, logs PostGenerateTreasure entry and early-return reasons to Ace_Log (verbose; disable after debugging).";
    public bool DebugLogging { get; set; }

    [JsonPropertyName("// DepositLootedCurrencyToBank")]
    public string DepositLootedCurrencyToBankDoc { get; init; } = "When true, looted pyreal stacks and trade notes are credited to banked pyreals (PropertyInt64) instead of inventory.";
    public bool DepositLootedCurrencyToBank { get; set; } = true;

    [JsonPropertyName("// DepositAltCurrencyToBank")]
    public string DepositAltCurrencyToBankDoc { get; init; } = "When true, looted alt currency (Olthoi Venom, A'nekshay Token, etc) are credited to bank + sync Zefs.";
    public bool DepositAltCurrencyToBank { get; set; } = true;

    [JsonPropertyName("// BankCashProperty")]
    public string BankCashPropertyDoc { get; init; } = "Must match LeyLineLedger Settings.CashProperty when using that mod (default 39999).";
    public int BankCashProperty { get; set; } = 39999;

    [JsonPropertyName("// AltCurrencyProperty")]
    public string AltCurrencyPropertyDoc { get; init; } = "PropertyInt64 for banked Zefs (must match LeyLineLedger).";
    public int AltCurrencyProperty { get; set; } = 40120;

    [JsonPropertyName("// AltCurrencyWcidToZefValue")]
    public string AltCurrencyWcidToZefValueDoc { get; init; } = "WCID to Zefs value (×100 scale).";
    public Dictionary<uint, int> AltCurrencyWcidToZefValue { get; set; } = new()
    {
        { 36376, 100 },   // Small Olthoi Venom Sac
        { 44240, 500 },   // A'nekshay Token
        { 43142, 300 },   // Ornate Gear Marker
        { 36518, 500 },   // Colosseum Coin
        { 35383, 300 },   // Ancient Mhoire Coin
        { 43901, 100 },   // Promissory Note
        { 11710, 500 },   // Writ of Refuge
    };

    [JsonPropertyName("// LootProfilePath")]
    public string LootProfilePathDoc { get; init; } = "Folder for .utl loot profiles. Default empty: PatchClass sets Path.Combine(ModPath, \"LootProfiles\") after load. Override to any server path; /autoloot creates the folder if missing.";
    public string LootProfilePath { get; set; } = "";

    [JsonPropertyName("// DefaultActiveProfiles")]
    public string DefaultActiveProfilesDoc { get; init; } =
        "Shipped default: five LootProfiles/*.utl filenames (allowlist for /autoloot and new characters). When empty and DefaultProfile empty: /autoloot lists every .utl on disk; first-login still uses Autoloot.BundledDefaultProfileFileNames.";
    public List<string> DefaultActiveProfiles { get; set; } =
    [
        "Currency.utl",
        "PyrealMotes.utl",
    ];

    [JsonPropertyName("// DefaultProfile")]
    public string DefaultProfileDoc { get; init; } =
        "Legacy: single default filename when DefaultActiveProfiles is empty. Leave empty to use bundled list for first-login defaults only; disk-wide /autoloot menu when DefaultActiveProfiles is also empty.";
    public string DefaultProfile { get; set; } = "";

    [JsonPropertyName("// NoDuplicateNames")]
    public string NoDuplicateNamesDoc { get; init; } = "Name substrings (case-insensitive): if an item matches and the player already has same WCID in inventory, skip loot — reduces quest-timer bypass via stockpiling. Add more fragments as needed.";
    public List<string> NoDuplicateNames { get; set; } = ["Pincer", "Tusk", "Matron"];

    [JsonPropertyName("// ProfileTierRequirements")]
    public string ProfileTierRequirementsDoc { get; init; } = "Minimum Achievement Tier (Loremaster FakeInt 11050) required to activate each .utl profile filename. Profiles not listed here are always available. New characters start with DefaultActiveProfiles only; players must earn tiers to unlock the rest.";
    public Dictionary<string, int> ProfileTierRequirements { get; set; } = new()
    {
        ["Trophies.utl"] = 1,
        ["Rares.utl"] = 2,
        ["BetterKeys.utl"] = 3,
    };

    [JsonPropertyName("// DepositCurrencyRequiredTier")]
    public string DepositCurrencyRequiredTierDoc { get; init; } = "Minimum Achievement Tier to use the DepositLootedCurrencyToBank feature. 0 = always available.";
    public int DepositCurrencyRequiredTier { get; set; } = 3;
}
