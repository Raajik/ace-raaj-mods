namespace EmpyreanAlteration;

// Loot/quest item XP, max-level rolls, custom XP curves, level-up growth, and spell growth.
public partial class Settings
{
    [JsonPropertyName("// AttuneLeveledItemsWhenReachingLevelOne")]
    public string AttuneLeveledItemsWhenReachingLevelOneDoc { get; init; } =
        "DEPRECATED: Attune-on-level system has been removed. Kept for JSON backward compatibility.";

    [JsonPropertyName("// ItemXpGeometricFirstLevelTotal")]
    public string ItemXpGeometricFirstLevelTotalDoc { get; init; } = "Geometric mode: total XP to reach item level 1 from 0.";

    [JsonPropertyName("// ItemXpGeometricMultiplierPerStep")]
    public string ItemXpGeometricMultiplierPerStepDoc { get; init; } = "Geometric mode: per-level multiplier on the first-level step.";

    [JsonPropertyName("// UseTierScaledItemMaxLevel")]
    public string UseTierScaledItemMaxLevelDoc { get; init; } =
        "When true, ItemMaxLevel = tier * ItemMaxLevelsPerTreasureTier. When false, use weighted random rolls.";

    [JsonPropertyName("// ItemMaxLevelsPerTreasureTier")]
    public string ItemMaxLevelsPerTreasureTierDoc { get; init; } = "Tier scaling factor: ItemMaxLevel = tier * n when UseTierScaledItemMaxLevel is true.";

    [JsonPropertyName("// ItemXpCurveMode")]
    public string ItemXpCurveModeDoc { get; init; } =
        "Geometric (default): mild per-step growth from ItemXpGeometricFirstLevelTotal / ItemXpGeometricMultiplierPerStep; EmpyreanAlteration clamps ItemMaxLevel to what fits in ulong — safe for very high rolled caps. AceGeometric: stock ACE doubling curve; use for perfect client bar alignment. CharacterTable: character XP table deltas. Geometric and CharacterTable patch ExperienceSystem on the server; the client item panel may disagree with server messages unless the client matches.";

    [JsonPropertyName("// ItemXpVirtualCharacterLevel")]
    public string ItemXpVirtualCharacterLevelDoc { get; init; } = "Character XP table anchor for CharacterTable mode.";

    [JsonPropertyName("// ItemXpCharacterCurveMultiplier")]
    public string ItemXpCharacterCurveMultiplierDoc { get; init; } = "Multiplies character per-level deltas in CharacterTable mode.";

    [JsonPropertyName("// ItemXpDummyBaseXp")]
    public string ItemXpDummyBaseXpDoc { get; init; } = "Dummy ItemBaseXp when CharacterTable or Geometric (ACE requires ItemBaseXp > 0 for HasItemLevel).";

    [JsonPropertyName("// QuestGrowthSalvageRules")]
    public string QuestGrowthSalvageRulesDoc { get; init; } =
        "Salvage-like tinker rules used by quest item level-up growth (separate from mutator loot rules). Copy WCID pairs from Overtinked SalvageRules if desired.";

    [JsonPropertyName("// QuestGrowthMaxImbueEffects")]
    public string QuestGrowthMaxImbueEffectsDoc { get; init; } = "Cap on imbue effect bits for quest growth level-up imbue rolls.";

    [JsonPropertyName("// SpellGrowth")]
    public string SpellGrowthDoc { get; init; } = "Spell and cantrip growth on quest-growth item level-up.";

    [JsonPropertyName("// QuestGrowthUtility")]
    public string QuestGrowthUtilityDoc { get; init; } =
        "Weighted rolls for Value reduction, Burden reduction, and Item Max Mana on quest level-up when higher-priority growth does not apply (all equippable categories).";

    [JsonPropertyName("// ArmorClothingGrowth")]
    public string ArmorClothingGrowthDoc { get; init; } =
        "Non-jewelry clothing: chance for +Armor Level (steel-style) or random ArmorModVs* protection (marble/reedshark-style).";

    [JsonPropertyName("// ArmorJewelryRatingGrowth")]
    public string ArmorJewelryRatingGrowthDoc { get; init; } =
        "After spell growth: chance to roll Damage/Crit/Resist ratings, Healing Boost (jewelry), or Vitality (GearMaxHealth) on armor slots, jewelry, or shields.";

    [JsonPropertyName("// WeaponQuestGrowth")]
    public string WeaponQuestGrowthDoc { get; init; } = "Weapon level-up growth: spell ladder, imbues, stat rolls, and minor outcomes.";

    public bool AttuneLeveledItemsWhenReachingLevelOne { get; set; } = true;

    public long ItemXpGeometricFirstLevelTotal { get; set; } = 50_000;

    public double ItemXpGeometricMultiplierPerStep { get; set; } = 1.08;

    public bool UseTierScaledItemMaxLevel { get; set; } = false;

    public int ItemMaxLevelsPerTreasureTier { get; set; } = 5;

    [JsonConverter(typeof(JsonStringEnumConverter))]
    public ItemXpCurveMode ItemXpCurveMode { get; set; } = ItemXpCurveMode.Geometric;

    public int ItemXpVirtualCharacterLevel { get; set; } = 6;

    public double ItemXpCharacterCurveMultiplier { get; set; } = 1.0;

    public long ItemXpDummyBaseXp { get; set; } = 1;

    public List<QuestGrowthSalvageTinkerRule> QuestGrowthSalvageRules { get; set; } = new();

    public int QuestGrowthMaxImbueEffects { get; set; } = 5;

    [JsonPropertyName("// QuestGrowthCatchUpSummarizeMinLevels")]
    public string QuestGrowthCatchUpSummarizeMinLevelsDoc { get; init; } =
        "When (current item level - previous) is >= this value, growth still runs every skipped level but player chat is one combined summary (instead of many per-level lines). Per-level ModManager.Info logs for that catch-up are skipped to reduce console spam. Default 12. Raise (e.g. 25) to get more per-level chat on big jumps; lower (e.g. 5) to summarize sooner.";

    [JsonPropertyName("// EnableGenericRatingLevelUp")]
    public string EnableGenericRatingLevelUpDoc { get; init; } = "When true, ALL items with existing ratings (DamageRating, CritDamageRating, etc.) gain a small scaling bump on level-up, regardless of item type. This ensures BetterLootControl-generated ratings on weapons and armor both grow with awakened leveling.";

    [JsonPropertyName("// RatingLevelUpInterval")]
    public string RatingLevelUpIntervalDoc { get; init; } = "Ratings scale every N item levels (default 5). Set to 1 to scale every single level-up.";

    [JsonPropertyName("// CloakRatingLevelUpInterval")]
    public string CloakRatingLevelUpIntervalDoc { get; init; } =
        "Same as RatingLevelUpInterval but only for items with ValidLocations including Cloak (Living cloaks). Default 1 so cloak ratings bump every item level; non-cloaks still use RatingLevelUpInterval.";

    [JsonPropertyName("// RatingLevelUpAmount")]
    public string RatingLevelUpAmountDoc { get; init; } = "How much each existing rating increases per interval (default 1).";

    public bool EnableGenericRatingLevelUp { get; set; } = true;
    public int RatingLevelUpInterval { get; set; } = 5;
    public int CloakRatingLevelUpInterval { get; set; } = 1;
    public int RatingLevelUpAmount { get; set; } = 1;

    public int QuestGrowthCatchUpSummarizeMinLevels { get; set; } = 12;

    public SpellGrowthSettings SpellGrowth { get; set; } = new();

    public QuestGrowthUtilitySettings QuestGrowthUtility { get; set; } = new();

    public ArmorClothingGrowthSettings ArmorClothingGrowth { get; set; } = new();

    public ArmorJewelryRatingGrowthSettings ArmorJewelryRatingGrowth { get; set; } = new();

    public WeaponQuestGrowthSettings WeaponQuestGrowth { get; set; } = new();

    [JsonPropertyName("// EnableLootItemPreAwaken")]
    public string EnableLootItemPreAwakenDoc { get; init; } = "When true, equippable loot has a chance to drop pre-awakened with a Living profile (LE-style QuickStart/Steady/Brutal/Casual curves).";

    [JsonPropertyName("// LootItemPreAwakenChance")]
    public string LootItemPreAwakenChanceDoc { get; init; } = "Percent chance (0-100) for equippable loot to drop pre-awakened. Default 0.2 = 0.2%.";

    [JsonPropertyName("// LootItemPreAwakenTierWeights")]
    public string LootItemPreAwakenTierWeightsDoc { get; init; } = "Relative weights for pre-awakened tier (Lesser, Greater, Aetheric). Order: Lesser, Greater, Aetheric.";

    [JsonPropertyName("// LootItemPreAwakenMaxLevels")]
    public string LootItemPreAwakenMaxLevelsDoc { get; init; } = "Max levels per pre-awakened tier. Order: Lesser, Greater, Aetheric.";

    [JsonPropertyName("// LootItemPreAwakenXpProfiles")]
    public string LootItemPreAwakenXpProfilesDoc { get; init; } = "Named XP curve profiles for pre-awakened items. Each has Name, ItemBaseXp, Description.";

    [JsonPropertyName("// LootItemPreAwakenProfileWeights")]
    public string LootItemPreAwakenProfileWeightsDoc { get; init; } = "Profile weights per tier. Each entry is a list of 4 floats (QuickStart, Steady, Brutal, Casual). Order: Lesser, Greater, Aetheric.";

    [JsonPropertyName("// LootItemPreAwakenPrefix")]
    public string LootItemPreAwakenPrefixDoc { get; init; } = "Prefix applied to pre-awakened item names, replacing the material type.";

    [JsonPropertyName("// LootItemPreAwakenUiEffects")]
    public string LootItemPreAwakenUiEffectsDoc { get; init; } = "UiEffects bitmask for pre-awakened items. Default 20 = BoostHealth|BoostStamina (renders as red outline in AC client).";

    public bool EnableLootItemPreAwaken { get; set; } = true;
    public float LootItemPreAwakenChance { get; set; } = 0.2f;
    public List<float> LootItemPreAwakenTierWeights { get; set; } = new() { 1.0f, 0.3f, 0.01f };
    public List<int> LootItemPreAwakenMaxLevels { get; set; } = new() { 25, 50, 75 };
    public List<PreAwakenXpProfile> LootItemPreAwakenXpProfiles { get; set; } = new()
    {
        new() { Name = "QuickStart", ItemBaseXp = 15, Divisor = 8.0, Power = 3.2, Description = "Fast early levels, dramatic ramp after 20. ~300k total points to cap." },
        new() { Name = "Steady",    ItemBaseXp = 25, Divisor = 15.0, Power = 2.5, Description = "Moderate, consistent grind. ~150k total points to cap." },
        new() { Name = "Brutal",    ItemBaseXp = 50, Divisor = 5.0, Power = 4.0, Description = "Steep from level 1, very grindy. ~1M total points to cap." },
        new() { Name = "Casual",    ItemBaseXp = 5,  Divisor = 20.0, Power = 2.0, Description = "Very easy, minimal grind. ~30k total points to cap." },
    };
    public List<List<float>> LootItemPreAwakenProfileWeights { get; set; } = new()
    {
        new() { 0.50f, 0.30f, 0.15f, 0.05f },
        new() { 0.25f, 0.25f, 0.25f, 0.25f },
        new() { 0.05f, 0.20f, 0.50f, 0.25f },
    };
    public string LootItemPreAwakenPrefix { get; set; } = "Living";
    public uint LootItemPreAwakenUiEffects { get; set; } = 20;

    public bool EnableQuestItemWorkmanship { get; set; } = true;

    public int QuestItemWorkmanshipMin { get; set; } = 4;

    public int QuestItemWorkmanshipMax { get; set; } = 8;
}

public class WeaponQuestGrowthSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, quest weapon level-ups use the weapon ladder (Blood Drinker chain, imbues, stat rolls, minor pool).";

    [JsonPropertyName("// SecondaryImbueChance")]
    public string SecondaryImbueChanceDoc { get; init; } = "Chance for a non-elemental secondary imbue after elemental rend is satisfied (Armor Rending, Crippling Blow, Critical Strike).";

    [JsonPropertyName("// SpellUpgradeChance")]
    public string SpellUpgradeChanceDoc { get; init; } = "Chance to upgrade an existing ladder spell before trying to add (when no imbue this level).";

    [JsonPropertyName("// SpellAddChance")]
    public string SpellAddChanceDoc { get; init; } = "Chance to add the next missing ladder spell if upgrade did not apply.";

    [JsonPropertyName("// LowMinorOutcomeChance")]
    public string LowMinorOutcomeChanceDoc { get; init; } = "Chance for the minor outcome pool (cantrips, +base damage, +damage rating, +crit damage rating) after stat branch would fail.";

    [JsonPropertyName("// MinorCantripWeight")]
    public string MinorCantripWeightDoc { get; init; } = "Relative weight for cantrip sub-pool inside minor success (vs flat damage and rating bumps).";

    [JsonPropertyName("// MinorFlatDamageWeight")]
    public string MinorFlatDamageWeightDoc { get; init; } = "Relative weight for +1 base Damage (not Damage Rating) in minor pool.";

    [JsonPropertyName("// MinorCritDamageWeight")]
    public string MinorCritDamageWeightDoc { get; init; } = "Relative weight for +1 Crit Damage Rating in minor pool (paired tuning with MinorDamageRatingWeight).";

    [JsonPropertyName("// MinorDamageRatingWeight")]
    public string MinorDamageRatingWeightDoc { get; init; } = "Relative weight for +1 Damage Rating in minor pool; default matches MinorCritDamageWeight for equal odds between the two ratings.";

    [JsonPropertyName("// OakSpeedDelta")]
    public string OakSpeedDeltaDoc { get; init; } = "WeaponTime reduction when Oak-equivalent stat is rolled (same as Oak salvage).";

    [JsonPropertyName("// MeleeDamageVarianceTightenPercent")]
    public string MeleeDamageVarianceTightenPercentDoc { get; init; } =
        "Melee stat branch only: each hit tightens DamageVariance like Granite (multiply by 1 - p/100); same selection weight as +1 Damage.";

    [JsonPropertyName("// RareWeaponPropertyGrowthEnabled")]
    public string RareWeaponPropertyGrowthEnabledDoc { get; init; } =
        "When true (default), each quest weapon level-up can rarely grant +1 Cleaving (PropertyInt.Cleaving) and/or +1 LumAugSurgeChanceRating (surge / multistrike-style rating). Rolled first before imbues and ladder. Each chance is clamped to at most 0.01 (1%).";

    [JsonPropertyName("// RareCleavingChancePerLevel")]
    public string RareCleavingChancePerLevelDoc { get; init; } =
        "Independent chance per level-up for +1 Cleaving when below RareCleavingMax (default 0.01; values above 0.01 are clamped).";

    [JsonPropertyName("// RareSurgeChancePerLevel")]
    public string RareSurgeChancePerLevelDoc { get; init; } =
        "Chance per level-up to grant +1 LumAugSurgeChanceRating only when the weapon has no surge rating yet (0; clamped to 1%). No rare surge roll if LumAugSurgeChanceRating is already on the item.";

    [JsonPropertyName("// RareCleavingMax")]
    public string RareCleavingMaxDoc { get; init; } =
        "Cleaving stacks +1 per successful rare proc across level-ups until this cap.";

    [JsonPropertyName("// RareSurgeMax")]
    public string RareSurgeMaxDoc { get; init; } =
        "Legacy: rare surge no longer stacks; surge is at most one +1 when starting from 0. Kept for JSON compatibility.";

    public bool Enabled { get; set; } = true;

    public double SecondaryImbueChance { get; set; } = 0.05;

    public double SpellUpgradeChance { get; set; } = 0.10;

    public double SpellAddChance { get; set; } = 0.25;

    public double LowMinorOutcomeChance { get; set; } = 0.15;

    public double MinorCantripWeight { get; set; } = 0.60;

    public double MinorFlatDamageWeight { get; set; } = 0.20;

    public double MinorCritDamageWeight { get; set; } = 0.10;

    public double MinorDamageRatingWeight { get; set; } = 0.10;

    public int OakSpeedDelta { get; set; } = 50;

    public int MeleeDamageVarianceTightenPercent { get; set; } = 20;

    public bool RareWeaponPropertyGrowthEnabled { get; set; } = true;

    public double RareCleavingChancePerLevel { get; set; } = 0.01;

    public double RareSurgeChancePerLevel { get; set; } = 0.01;

    public int RareCleavingMax { get; set; } = 5;

    public int RareSurgeMax { get; set; } = 5;
}

public class SpellGrowthSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "Master toggle for spell/cantrip growth on item level-up.";

    [JsonPropertyName("// AutoPopulateFromDat")]
    public string AutoPopulateFromDatDoc { get; init; } =
        "When true and explicit ID lists are empty, auto-populate spell and cantrip pools from DatManager.PortalDat.SpellTable by name matching.";

    [JsonPropertyName("// RestrictNameContainsToPlayerSpells")]
    public string RestrictNameContainsToPlayerSpellsDoc { get; init; } =
        "When true (default), spells added via NameContains filters are also checked against PlayerSpellTable. When false, NameContains adds all matching spells from DAT regardless of what spells the player knows.";

    [JsonPropertyName("// SpellOutcomeWeight")]
    public string SpellOutcomeWeightDoc { get; init; } = "Relative weight when choosing a spell outcome.";

    [JsonPropertyName("// CantripOutcomeWeight")]
    public string CantripOutcomeWeightDoc { get; init; } = "Relative weight when choosing a cantrip outcome.";

    [JsonPropertyName("// SpellUpgradeChance")]
    public string SpellUpgradeChanceDoc { get; init; } = "Unused: retained for JSON compatibility.";

    [JsonPropertyName("// CantripUpgradeChance")]
    public string CantripUpgradeChanceDoc { get; init; } = "Unused: retained for JSON compatibility.";

    [JsonPropertyName("// WeaponSpellIds")]
    public string WeaponSpellIdsDoc { get; init; } = "When non-empty, replaces auto weapon spell pools.";

    [JsonPropertyName("// ArmorOrJewelrySpellIds")]
    public string ArmorOrJewelrySpellIdsDoc { get; init; } = "Explicit spell IDs for armor/jewelry when non-empty.";

    [JsonPropertyName("// GenericSpellIds")]
    public string GenericSpellIdsDoc { get; init; } = "Explicit generic spell IDs when non-empty.";

    [JsonPropertyName("// WeaponSpellNameContains")]
    public string WeaponSpellNameContainsDoc { get; init; } = "Name fragments for auto-population of weapon spells (case-insensitive).";

    [JsonPropertyName("// ArmorOrJewelrySpellNameContains")]
    public string ArmorOrJewelrySpellNameContainsDoc { get; init; } =
        "Legacy: name fragments merged into the shared armor/jewelry auto pool. Used when Jewelry/ArmorClothing-specific lists are empty.";

    [JsonPropertyName("// JewelrySpellIds")]
    public string JewelrySpellIdsDoc { get; init; } = "Optional explicit spell IDs for jewelry/trinkets (overrides auto pools when non-empty).";

    [JsonPropertyName("// JewelrySpellNameContains")]
    public string JewelrySpellNameContainsDoc { get; init; } = "Name fragments for jewelry column auto pool (hybrid with JewelrySpellIds).";

    [JsonPropertyName("// ArmorClothingSpellIds")]
    public string ArmorClothingSpellIdsDoc { get; init; } = "Optional explicit spell IDs for non-jewelry clothing/armor.";

    [JsonPropertyName("// ArmorClothingSpellNameContains")]
    public string ArmorClothingSpellNameContainsDoc { get; init; } = "Name fragments for armor/clothing column (non-jewelry).";

    [JsonPropertyName("// ShieldSpellIds")]
    public string ShieldSpellIdsDoc { get; init; } = "Optional explicit spell IDs for shields.";

    [JsonPropertyName("// ShieldSpellNameContains")]
    public string ShieldSpellNameContainsDoc { get; init; } = "Name fragments for shield spell auto pool.";

    [JsonPropertyName("// CantripLines")]
    public string CantripLinesDoc { get; init; } = "Cantrip lines are ordered tiers; the helper adds base tier then upgrade upward.";

    public bool Enabled { get; set; } = true;

    public bool AutoPopulateFromDat { get; set; } = true;

    public bool RestrictNameContainsToPlayerSpells { get; set; } = true;

    public int SpellOutcomeWeight { get; set; } = 2;

    public int CantripOutcomeWeight { get; set; } = 1;

    public double SpellUpgradeChance { get; set; } = 0.35;

    public double CantripUpgradeChance { get; set; } = 0.50;

    public List<int> WeaponSpellIds { get; set; } = new();

    public List<int> ArmorOrJewelrySpellIds { get; set; } = new();

    public List<int> JewelrySpellIds { get; set; } = new();

    public List<int> ArmorClothingSpellIds { get; set; } = new();

    public List<int> ShieldSpellIds { get; set; } = new();

    public List<int> GenericSpellIds { get; set; } = new();

    public List<string> WeaponSpellNameContains { get; set; } = new()
    {
        "Blood Drinker",
        "Heart Seeker",
        "Defender",
        "Heavy Weapon Mastery",
        "Light Weapon Mastery",
        "Finesse Weapon Mastery",
    };

    public List<string> ArmorOrJewelrySpellNameContains { get; set; } = new()
    {
        "Bludgeoning Protection",
        "Slashing Protection",
        "Piercing Protection",
        "Acid Protection",
        "Flame Protection",
        "Frost Protection",
        "Lightning Protection",
    };

    public List<string> JewelrySpellNameContains { get; set; } = new()
    {
        "Focus",
        "Willpower",
        "Coordination",
        "Quickness",
        "Self",
        "Strength",
        "Endurance",
        "Mana Renewal",
        "Regeneration",
        "Cunning",
        "Articulate",
        "Hermetic Link",
    };

    public List<string> ArmorClothingSpellNameContains { get; set; } = new()
    {
        "Bludgeoning Protection",
        "Slashing Protection",
        "Piercing Protection",
        "Acid Protection",
        "Flame Protection",
        "Frost Protection",
        "Lightning Protection",
    };

    public List<string> ShieldSpellNameContains { get; set; } = new()
    {
        "Bludgeoning Protection",
        "Slashing Protection",
        "Piercing Protection",
        "Acid Protection",
        "Flame Protection",
        "Frost Protection",
        "Lightning Protection",
        "Invulnerability",
        "Impenetrability",
        "Inertia",
    };

    public List<CantripLine> CantripLines { get; set; } = new();
}

public class QuestGrowthUtilitySettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, level-up may apply Value/Burden/MaxMana utility when salvage and other branches fail.";

    [JsonPropertyName("// ValueReductionWeight")]
    public string ValueReductionWeightDoc { get; init; } = "Relative weight for Pine-like Value scaling toward 1 pyreal.";

    [JsonPropertyName("// BurdenReductionWeight")]
    public string BurdenReductionWeightDoc { get; init; } = "Relative weight for EncumbranceVal reduction.";

    [JsonPropertyName("// ItemMaxManaWeight")]
    public string ItemMaxManaWeightDoc { get; init; } = "Relative weight for ItemMaxMana increase (moonstone-like).";

    [JsonPropertyName("// ValueMultiplier")]
    public string ValueMultiplierDoc { get; init; } = "Multiply Value by this each application (e.g. 0.75) until Value reaches 1.";

    [JsonPropertyName("// ItemMaxManaMin")]
    public string ItemMaxManaMinDoc { get; init; } = "Minimum delta when Item Max Mana is rolled.";

    [JsonPropertyName("// ItemMaxManaMax")]
    public string ItemMaxManaMaxDoc { get; init; } = "Maximum delta when Item Max Mana is rolled.";

    [JsonPropertyName("// BurdenReductionMin")]
    public string BurdenReductionMinDoc { get; init; } = "Minimum EncumbranceVal reduction per utility hit.";

    [JsonPropertyName("// BurdenReductionMax")]
    public string BurdenReductionMaxDoc { get; init; } = "Maximum EncumbranceVal reduction per utility hit.";

    public bool Enabled { get; set; } = true;

    public int ValueReductionWeight { get; set; } = 1;

    public int BurdenReductionWeight { get; set; } = 1;

    public int ItemMaxManaWeight { get; set; } = 1;

    public double ValueMultiplier { get; set; } = 0.75;

    public int ItemMaxManaMin { get; set; } = 25;

    public int ItemMaxManaMax { get; set; } = 75;

    public int BurdenReductionMin { get; set; } = 10;

    public int BurdenReductionMax { get; set; } = 50;
}

public class ArmorClothingGrowthSettings
{
    [JsonPropertyName("// SteelArmorLevelChance")]
    public string SteelArmorLevelChanceDoc { get; init; } = "Per level-up attempt on non-jewelry clothing: chance to gain +SteelArmorLevelDelta Armor Level.";

    [JsonPropertyName("// SteelArmorLevelDelta")]
    public string SteelArmorLevelDeltaDoc { get; init; } = "Armor Level added when steel-style growth succeeds (default 20).";

    [JsonPropertyName("// RandomArmorModChance")]
    public string RandomArmorModChanceDoc { get; init; } = "If steel did not apply, chance to add RandomArmorModMin..Max to one random ArmorModVs* (0.01 = 1% in ACE float storage).";

    [JsonPropertyName("// RandomArmorModMin")]
    public string RandomArmorModMinDoc { get; init; } = "Minimum hundredths added (40 => +0.40% when applied as v/100).";

    [JsonPropertyName("// RandomArmorModMax")]
    public string RandomArmorModMaxDoc { get; init; } = "Maximum hundredths added (80 => +0.80%).";

    public double SteelArmorLevelChance { get; set; } = 0.12;

    public int SteelArmorLevelDelta { get; set; } = 20;

    public double RandomArmorModChance { get; set; } = 0.12;

    public int RandomArmorModMin { get; set; } = 40;

    public int RandomArmorModMax { get; set; } = 80;
}

public class ArmorJewelryRatingGrowthSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } =
        "When true, armor/jewelry/shield level-ups can gain ACE rating properties (Damage Rating on underwear-layer clothing, Crit Damage Rating on outer armor, resists, Healing Boost on jewelry, Vitality via GearMaxHealth).";

    [JsonPropertyName("// OutcomeChance")]
    public string OutcomeChanceDoc { get; init; } =
        "Per level-up attempt: chance to roll this rating pool when reached (after spell growth, before steel/protection or salvage).";

    [JsonPropertyName("// HealingBoostMin")]
    public string HealingBoostMinDoc { get; init; } = "Jewelry: minimum Healing Boost Rating added when that outcome is rolled.";

    [JsonPropertyName("// HealingBoostMax")]
    public string HealingBoostMaxDoc { get; init; } = "Jewelry: maximum Healing Boost Rating added when that outcome is rolled.";

    [JsonPropertyName("// VitalityGearMaxHealthMin")]
    public string VitalityGearMaxHealthMinDoc { get; init; } =
        "Minimum Vitality Rating (GearMaxHealth property) for clothing/armor/jewelry when that outcome is rolled.";

    [JsonPropertyName("// VitalityGearMaxHealthMax")]
    public string VitalityGearMaxHealthMaxDoc { get; init; } =
        "Maximum Vitality Rating (GearMaxHealth property) for clothing/armor/jewelry when that outcome is rolled.";

    public bool Enabled { get; set; } = true;

    public double OutcomeChance { get; set; } = 0.28;

    public int HealingBoostMin { get; set; } = 1;

    public int HealingBoostMax { get; set; } = 3;

    public int VitalityGearMaxHealthMin { get; set; } = 1;

    public int VitalityGearMaxHealthMax { get; set; } = 3;
}

public class CantripLine
{
    [JsonPropertyName("// Name")]
    public string NameDoc { get; init; } = "Line label for logs.";

    [JsonPropertyName("// TierIds")]
    public string TierIdsDoc { get; init; } = "Ordered tiers: Minor -> Moderate -> Major -> Epic -> Legendary, etc.";

    public string Name { get; set; } = "";

    public List<int> TierIds { get; set; } = new();
}

public class PreAwakenXpProfile
{
    public string Name { get; set; } = "QuickStart";
    public long ItemBaseXp { get; set; } = 15000;
    public double Divisor { get; set; } = 10.0;   // level-cost multiplier: (1 + L / Divisor)
    public double Power { get; set; } = 5.0;     // exponent on the multiplier: ^Power
    public string Description { get; set; } = "";
}
