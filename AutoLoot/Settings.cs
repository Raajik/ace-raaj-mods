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

    [JsonPropertyName("// BankCashProperty")]
    public string BankCashPropertyDoc { get; init; } = "Must match LeyLineLedger Settings.CashProperty when using that mod (default 39999).";
    public int BankCashProperty { get; set; } = 39999;

    [JsonPropertyName("// LootProfilePath")]
    public string LootProfilePathDoc { get; init; } = "Folder for .utl loot profiles. Default empty: PatchClass sets Path.Combine(ModPath, \"LootProfiles\") after load. Override to any server path; /autoloot creates the folder if missing.";
    public string LootProfilePath { get; set; } = "";

    [JsonPropertyName("// DefaultProfile")]
    public string DefaultProfileDoc { get; init; } = "Profile auto-enabled the first time a player uses /autoloot in a session. Empty string = no profile active by default.";
    public string DefaultProfile { get; set; } = "PyrealsTradeNotes.utl";

    [JsonPropertyName("// NoDuplicateNames")]
    public string NoDuplicateNamesDoc { get; init; } = "Name substrings (case-insensitive): if an item matches and the player already has same WCID in inventory, skip loot — reduces quest-timer bypass via stockpiling. Add more fragments as needed.";
    public List<string> NoDuplicateNames { get; set; } = ["Pincer", "Tusk", "Matron"];
}
