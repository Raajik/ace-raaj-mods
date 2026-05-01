namespace LivingEquipment;

public class Settings
{
    [JsonPropertyName("// LivingEquipment")]
    public string LivingEquipmentDoc { get; init; } = "Reading order: every // key is documentation; real settings follow in the same order.";

    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "Master switch for LivingEquipment patches and behavior.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// Verbose")]
    public string VerboseDoc { get; init; } = "Extra logging for diagnostics.";
    public bool Verbose { get; set; } = false;

    // Coalesced Mana WCIDs
    [JsonPropertyName("// LesserCoalescedManaWcid")]
    public string LesserCoalescedManaWcidDoc { get; init; } = "WCID of Lesser Coalesced Mana — awakens items to max level 25.";
    public uint LesserCoalescedManaWcid { get; set; } = 42516;

    [JsonPropertyName("// GreaterCoalescedManaWcid")]
    public string GreaterCoalescedManaWcidDoc { get; init; } = "WCID of Greater Coalesced Mana — awakens items to max level 50 (or upgrades Lesser).";
    public uint GreaterCoalescedManaWcid { get; set; } = 42517;

    [JsonPropertyName("// AethericCoalescedManaWcid")]
    public string AethericCoalescedManaWcidDoc { get; init; } = "WCID of Aetheric Coalesced Mana — awakens items to max level 75 (or upgrades Lesser/Greater).";
    public uint AethericCoalescedManaWcid { get; set; } = 42518;

    // Max levels per tier
    [JsonPropertyName("// LesserMaxLevel")]
    public string LesserMaxLevelDoc { get; init; } = "Maximum item level granted by Lesser Coalesced Mana.";
    public int LesserMaxLevel { get; set; } = 25;

    [JsonPropertyName("// GreaterMaxLevel")]
    public string GreaterMaxLevelDoc { get; init; } = "Maximum item level granted by Greater Coalesced Mana.";
    public int GreaterMaxLevel { get; set; } = 50;

    [JsonPropertyName("// AethericMaxLevel")]
    public string AethericMaxLevelDoc { get; init; } = "Maximum item level granted by Aetheric Coalesced Mana.";
    public int AethericMaxLevel { get; set; } = 75;

    // XP Curve Profiles
    [JsonPropertyName("// XpProfiles")]
    public string XpProfilesDoc { get; init; } = "Named XP curve profiles. When an item awakens, a profile is randomly assigned. Each profile controls ItemBaseXp (steepness) and description.";
    public List<XpProfile> XpProfiles { get; set; } = new()
    {
        new XpProfile { Name = "QuickStart", ItemBaseXp = 15000, Description = "Fast levels 1-10, sharp curve after" },
        new XpProfile { Name = "Steady", ItemBaseXp = 25000, Description = "Moderate, consistent grind throughout" },
        new XpProfile { Name = "Brutal", ItemBaseXp = 40000, Description = "Sharp from level 1, very grindy" },
        new XpProfile { Name = "Casual", ItemBaseXp = 8000, Description = "Very easy, minimal grind" }
    };

    // Profile assignment weights by tier (manual awakening)
    [JsonPropertyName("// LesserProfileWeights")]
    public string LesserProfileWeightsDoc { get; init; } = "Relative weights for profile assignment when manually awakening with Lesser Coalesced Mana. Order: QuickStart, Steady, Brutal, Casual.";
    public List<float> LesserProfileWeights { get; set; } = new() { 0.50f, 0.30f, 0.15f, 0.05f };

    [JsonPropertyName("// GreaterProfileWeights")]
    public string GreaterProfileWeightsDoc { get; init; } = "Relative weights for profile assignment when manually awakening with Greater Coalesced Mana. Order: QuickStart, Steady, Brutal, Casual.";
    public List<float> GreaterProfileWeights { get; set; } = new() { 0.25f, 0.25f, 0.25f, 0.25f };

    [JsonPropertyName("// AethericProfileWeights")]
    public string AethericProfileWeightsDoc { get; init; } = "Relative weights for profile assignment when manually awakening with Aetheric Coalesced Mana. Order: QuickStart, Steady, Brutal, Casual.";
    public List<float> AethericProfileWeights { get; set; } = new() { 0.05f, 0.20f, 0.50f, 0.25f };

    // Loot integration
    [JsonPropertyName("// EnableLootIntegration")]
    public string EnableLootIntegrationDoc { get; init; } = "When true, loot generation may produce pre-awakened and pre-imbued items.";
    public bool EnableLootIntegration { get; set; } = true;

    [JsonPropertyName("// PreAwakenedChance")]
    public string PreAwakenedChanceDoc { get; init; } = "Chance (percent) for equippable loot to drop pre-awakened. Default 0.2% for fairly rare occurrence.";
    public float PreAwakenedChance { get; set; } = 0.2f;

    [JsonPropertyName("// PreAwakenedTierWeights")]
    public string PreAwakenedTierWeightsDoc { get; init; } = "Relative weights for pre-awakened drop tiers. Order: Lesser, Greater, Aetheric.";
    public List<float> PreAwakenedTierWeights { get; set; } = new() { 0.70f, 0.25f, 0.05f };

    [JsonPropertyName("// PreImbuedChance")]
    public string PreImbuedChanceDoc { get; init; } = "Chance (percent) for weapon/armor loot to drop with 1-3 free pre-existing tinkers/imbues.";
    public float PreImbuedChance { get; set; } = 2.0f;

    [JsonPropertyName("// PreImbuedCountMin")]
    public string PreImbuedCountMinDoc { get; init; } = "Minimum number of free pre-imbues on a pre-imbued drop.";
    public int PreImbuedCountMin { get; set; } = 1;

    [JsonPropertyName("// PreImbuedCountMax")]
    public string PreImbuedCountMaxDoc { get; init; } = "Maximum number of free pre-imbues on a pre-imbued drop.";
    public int PreImbuedCountMax { get; set; } = 3;

    [JsonPropertyName("// PreImbuedDoNotCountAgainstTinkerCap")]
    public string PreImbuedDoNotCountAgainstTinkerCapDoc { get; init; } = "When true, pre-imbued tinkers are free bonuses and do not increment NumTimesTinkered.";
    public bool PreImbuedDoNotCountAgainstTinkerCap { get; set; } = true;

    // Naming
    [JsonPropertyName("// AwakenedPrefix")]
    public string AwakenedPrefixDoc { get; init; } = "Prefix applied to awakened item names, replacing the material type.";
    public string AwakenedPrefix { get; set; } = "Awakened";

    [JsonPropertyName("// ArcaneLoreDifficulty")]
    public string ArcaneLoreDifficultyDoc { get; init; } = "Arcane Lore skill check difficulty for awakening. Default 1 (cosmetic, always passes, clears cursor).";
    public int ArcaneLoreDifficulty { get; set; } = 1;

    [JsonPropertyName("// AutoAwakenTier1Wcids")]
    public string AutoAwakenTier1WcidsDoc { get; init; } = "WCIDs that automatically awaken to Tier 1 (max level 25, Casual profile) when entering a player's inventory. Academy starter weapons and Pathwarden starter armor.";
    public List<uint> AutoAwakenTier1Wcids { get; set; } = new()
    {
        // Academy weapons
        12750, 12751, 12752, 12753, 12754, 12755, 12756, 12757, 12758, 12759, 12760,
        41514, 45531, 45532, 45535, 45536, 45539, 45540, 45543, 45544, 45547, 45548,
        45551, 45552, 45555, 45556,
        // Pathwarden armor (hauberks, leggings, sollerets, gauntlets, helm, robes, trinket)
        33597, 33598, 33599, 33600, 33601, 33602, 33603, 33604, 33605, 33606, 33607,
        40439, 40454, 40455, 40456, 41513
    };

    // Visual
    [JsonPropertyName("// AwakenedItemUiEffects")]
    public string AwakenedItemUiEffectsDoc { get; init; } = "UiEffects bitmask for awakened items. Default: BoostHealth|BoostStamina = 20 (perceived as red outline by some). Other options: Magical=1 (blue), Poisoned=2 (green), BoostHealth=4 (yellow), BoostMana=8 (blue), BoostStamina=16 (yellow), Fire=32 (red), Lightning=64 (purple), Frost=128 (white), Acid=256 (green), Nether=4096 (dark purple). Combinations are bitwise OR.";
    public uint AwakenedItemUiEffects { get; set; } = 20; // BoostHealth|BoostStamina = perceived red outline
}

public class XpProfile
{
    public string Name { get; set; } = "QuickStart";
    public long ItemBaseXp { get; set; } = 15000;
    public string Description { get; set; } = "";
}
