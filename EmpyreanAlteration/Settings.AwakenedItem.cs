namespace EmpyreanAlteration;

// Settings for player-driven item awakening via Coalesced Mana (absorbed from LivingEquipment).
public partial class Settings
{
    [JsonPropertyName("// LesserCoalescedManaWcid")]
    public string LesserCoalescedManaWcidDoc { get; init; } = "WCID of Lesser Coalesced Mana — raises item cap by +5 (or awakens to +5).";
    public uint LesserCoalescedManaWcid { get; set; } = 800000;

    [JsonPropertyName("// GreaterCoalescedManaWcid")]
    public string GreaterCoalescedManaWcidDoc { get; init; } = "WCID of Greater Coalesced Mana — raises item cap by +10 (or awakens to +10).";
    public uint GreaterCoalescedManaWcid { get; set; } = 800001;

    [JsonPropertyName("// AethericCoalescedManaWcid")]
    public string AethericCoalescedManaWcidDoc { get; init; } = "WCID of Aetheric Coalesced Mana — raises item cap by +15 (or awakens to +15).";
    public uint AethericCoalescedManaWcid { get; set; } = 800002;

    [JsonPropertyName("// ManualAwakenPrefix")]
    public string ManualAwakenPrefixDoc { get; init; } = "Prefix applied to manually awakened item names (Coalesced Mana use-on-target). Default 'Awakened' distinguishes player-driven awakening from loot 'Living' prefix.";
    public string ManualAwakenPrefix { get; set; } = "Awakened";

    [JsonPropertyName("// UseItemTypeInAwakenedName")]
    public string UseItemTypeInAwakenedNameDoc { get; init; } = "When true, manual awaken names use '{prefix} {ItemType}' (e.g. Awakened MeleeWeapon). When false, legacy behavior strips material prefix from the original name.";
    public bool UseItemTypeInAwakenedName { get; set; } = true;

    [JsonPropertyName("// EnableAwakenRandomSpells")]
    public string EnableAwakenRandomSpellsDoc { get; init; } = "When true and SpellSiphon is loaded, newly awakened items roll bonus magic spells using SpellSiphon's gem spell pool.";
    public bool EnableAwakenRandomSpells { get; set; } = true;

    [JsonPropertyName("// AwakenRandomSpellCountMin")]
    public string AwakenRandomSpellCountMinDoc { get; init; } = "Minimum bonus spells rolled onto an awakened item (SpellSiphon pool).";
    public int AwakenRandomSpellCountMin { get; set; } = 2;

    [JsonPropertyName("// AwakenRandomSpellCountMax")]
    public string AwakenRandomSpellCountMaxDoc { get; init; } = "Maximum bonus spells rolled onto an awakened item (SpellSiphon pool).";
    public int AwakenRandomSpellCountMax { get; set; } = 5;

    [JsonPropertyName("// AutoAwakenTier1Wcids")]
    public string AutoAwakenTier1WcidsDoc { get; init; } = "WCIDs that automatically awaken to default profile when entering a player's inventory. Academy starter weapons and Pathwarden starter armor.";
    public List<uint> AutoAwakenTier1Wcids { get; set; } = new()
    {
        // Academy weapons
        12750, 12751, 12752, 12753, 12754, 12755, 12756, 12757, 12758, 12759, 12760,
        41514, 45531, 45532, 45535, 45536, 45539, 45540, 45543, 45544, 45547, 45548,
        45551, 45552, 45555, 45556,
        // Pathwarden armor
        33597, 33598, 33599, 33600, 33601, 33602, 33603, 33604, 33605, 33606, 33607,
        40439, 40454, 40455, 40456, 41513
    };

    [JsonPropertyName("// ArcaneLoreDifficulty")]
    public string ArcaneLoreDifficultyDoc { get; init; } = "Arcane Lore skill check difficulty for awakening. Default 1 (cosmetic, always passes, clears cursor).";
    public int ArcaneLoreDifficulty { get; set; } = 1;

    [JsonPropertyName("// DefaultXpProfileName")]
    public string DefaultXpProfileNameDoc { get; init; } = "Name of the default PreAwakenXpProfile used for all awakened items (loot drops, manual awaken, auto-awaken).";
    public string DefaultXpProfileName { get; set; } = "QuickStart";

    [JsonPropertyName("// ItemXpCurveVersion")]
    public string ItemXpCurveVersionDoc { get; init; } = "Global curve version. When an item's stored CurveVersion differs, the item's progress is auto-migrated to the new curve (same level, new XP).";
    public int ItemXpCurveVersion { get; set; } = 1;

    [JsonPropertyName("// ItemLevelingKillPoints")]
    public string ItemLevelingKillPointsDoc { get; init; } = "Points awarded to every equipped awakened item when the player gets kill credit on a creature.";
    public int ItemLevelingKillPoints { get; set; } = 1;

    [JsonPropertyName("// ItemLevelingQuestCompletionPoints")]
    public string ItemLevelingQuestCompletionPointsDoc { get; init; } = "Points awarded to every equipped awakened item when the player completes a quest that would grant QB (via Loremaster bridge).";
    public int ItemLevelingQuestCompletionPoints { get; set; } = 100;

    [JsonPropertyName("// ItemLevelingBossKillMultiplier")]
    public string ItemLevelingBossKillMultiplierDoc { get; init; } = "Multiplier for points from boss creature kills (Creature.IsBoss). Applied on top of base kill points. 1 = no bonus.";
    public float ItemLevelingBossKillMultiplier { get; set; } = 5.0f;

    [JsonPropertyName("// ItemLevelingCap")]
    public string ItemLevelingCapDoc { get; init; } = "Absolute hard cap for awakened item max level.";
    public int ItemLevelingCap { get; set; } = 100;

    [JsonPropertyName("// HideExaminedBondedIvoryableOnAwakened")]
    public string HideExaminedBondedIvoryableOnAwakenedDoc { get; init; } = "When true, appraisal packets for awakened items show Bonded as Normal and Ivoryable as false so examine text matches tradable behavior (server logic unchanged).";
    public bool HideExaminedBondedIvoryableOnAwakened { get; set; } = true;

    [JsonPropertyName("// DisableAttunedGlobally")]
    public string DisableAttunedGloballyDoc { get; init; } = "When true, ALL items are treated as not attuned (AttunedStatus.Normal). Allows trading/selling of any item including quest rewards and Coalesced Mana.";
    public bool DisableAttunedGlobally { get; set; } = false;
}
