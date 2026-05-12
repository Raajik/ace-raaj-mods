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
    public string LootProfilePathDoc { get; init; } = "Folder for .utl loot profiles only. Default empty: PatchClass sets Path.Combine(ModPath, \"LootProfiles\"). Override to any server path; /autoloot creates the folder if missing. Player prefs now persist separately under Server/ModData/AutoLoot/PlayerData.";
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

    [JsonPropertyName("// WindblownCollectorTrophyPass1WeenieClassIds")]
    public string WindblownCollectorTrophyPass1WeenieClassIdsDoc { get; init; } =
        "Windblown collector trophy WCIDs (850300-850361): Pass 1 pulls these from corpse/chest into the pack only when /autoloot trophies is ON. Tiered lines + mob heads + scalp + claw + sinew + stone + mnemosyne + tusk + tumerok. See Windblown/docs/TrophyLineRegistry.md.";
    public List<uint> WindblownCollectorTrophyPass1WeenieClassIds { get; set; } =
    [
        850300u, 850301u, 850302u, 850303u,
        850304u, 850305u, 850306u, 850307u,
        850308u, 850309u, 850310u, 850311u,
        850312u, 850313u, 850314u, 850315u,
        850316u, 850317u, 850318u, 850319u, 850320u, 850321u, 850322u, 850323u, 850324u, 850325u, 850326u, 850327u,
        850328u, 850329u, 850330u, 850331u, 850332u, 850333u, 850334u, 850335u, 850336u, 850337u, 850338u,
        850340u, 850341u, 850342u, 850343u,
        850344u, 850345u, 850346u, 850347u,
        850348u, 850349u, 850350u, 850351u,
        850352u, 850353u, 850354u,
        850355u, 850356u, 850357u,
        850358u, 850359u, 850360u, 850361u,
        850362u, 850363u, 850364u, 850365u,
    ];

    [JsonPropertyName("// OtherPhysicalPass1WeenieClassIds")]
    public string OtherPhysicalPass1WeenieClassIdsDoc { get; init; } =
        "Other physical quest items: Pass 1 pulls these into the pack regardless of /autoloot trophies (letters, olthoi pincers, etc.). Keep disjoint from WindblownCollectorTrophyPass1WeenieClassIds.";
    public List<uint> OtherPhysicalPass1WeenieClassIds { get; set; } =
    [
        8701u,
        8702u,
        800005u,
        800006u,
        10843u,
        10844u,
        10845u,
        10846u,
        10847u,
        27589u,
        27590u,
        27591u,
        51211u,
        51214u,
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
