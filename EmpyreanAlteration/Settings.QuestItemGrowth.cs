namespace EmpyreanAlteration;

// Quest-given item XP, max-level rolls, custom XP curves, salvage-like level-up growth, and spell growth (moved from Overtinked).
public partial class Settings
{
    [JsonPropertyName("// EnableQuestItemLeveling")]
    public string EnableQuestItemLevelingDoc { get; init; } =
        "When true (default), eligible equippable items get item XP on first player inventory add and EmpyreanAlteration level-up growth (Harmony category EmpyreanAlterationQuestItemGrowth). Per-slot rolls and weights use QuestGrowthSalvageRules, SpellGrowth, and growth engine settings. After ImbuedEffect is non-zero, further imbues are deferred until the spellbook has at least four entries (spell/cantrip growth and other non-imbue effects run first).";

    [JsonPropertyName("// QuestItemXpBase")]
    public string QuestItemXpBaseDoc { get; init; } = "Base XP for quest items when ItemXpCurveMode is AceGeometric (stock ACE geometric).";

    [JsonPropertyName("// QuestItemXpScale")]
    public string QuestItemXpScaleDoc { get; init; } = "Per-tier scale applied to QuestItemXpBase for quest init.";

    [JsonPropertyName("// QuestItemMaxLevelMin")]
    public string QuestItemMaxLevelMinDoc { get; init; } = "Rolled cap minimum for quest-given items (inventory init).";

    [JsonPropertyName("// QuestItemMaxLevelMax")]
    public string QuestItemMaxLevelMaxDoc { get; init; } = "Rolled cap maximum for quest-given items.";

    [JsonPropertyName("// QuestItemMaxLevelRollPower")]
    public string QuestItemMaxLevelRollPowerDoc { get; init; } =
        "Exponent p in w=U^p for uniform U; p>1 makes low ItemMaxLevel rolls more common. 1.0 = uniform between min and max.";

    [JsonPropertyName("// UseFixedGlobalItemMaxLevel")]
    public string UseFixedGlobalItemMaxLevelDoc { get; init; } = "When true, ItemMaxLevel uses GlobalItemMaxLevel when greater than 0 for quest rolls.";

    [JsonPropertyName("// GlobalItemMaxLevel")]
    public string GlobalItemMaxLevelDoc { get; init; } = "Fixed cap when UseFixedGlobalItemMaxLevel is true (or invalid min/max).";

    [JsonPropertyName("// GlobalItemXpPlayerScale")]
    public string GlobalItemXpPlayerScaleDoc { get; init; } = "Legacy geometric: scales ItemBaseXp when ItemXpCurveMode is AceGeometric.";

    [JsonPropertyName("// QuestItemMaxLevelTier")]
    public string QuestItemMaxLevelTierDoc { get; init; } = "Tier passed into quest max-level roll (no TreasureDeath at inventory init).";

    [JsonPropertyName("// ItemXpGeometricFirstLevelTotal")]
    public string ItemXpGeometricFirstLevelTotalDoc { get; init; } = "Geometric mode: total XP to reach item level 1 from 0.";

    [JsonPropertyName("// ItemXpGeometricMultiplierPerStep")]
    public string ItemXpGeometricMultiplierPerStepDoc { get; init; } = "Geometric mode: per-level multiplier on the first-level step.";

    [JsonPropertyName("// UseTierScaledItemMaxLevel")]
    public string UseTierScaledItemMaxLevelDoc { get; init; } =
        "When true, ItemMaxLevel = tier * ItemMaxLevelsPerTreasureTier (clamped by QuestItemMaxLevelMax). When false, use weighted random rolls.";

    [JsonPropertyName("// ItemMaxLevelsPerTreasureTier")]
    public string ItemMaxLevelsPerTreasureTierDoc { get; init; } = "Tier 1 => max level 5 * n per tier step before QuestItemMaxLevelMax ceiling when UseTierScaledItemMaxLevel is true.";

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
    public string WeaponQuestGrowthDoc { get; init; } = "Ordered weapon spell ladder, imbues, stat rolls, and minor outcomes for quest-growth weapons.";

    [JsonPropertyName("// EnableQuestItemWorkmanship")]
    public string EnableQuestItemWorkmanshipDoc { get; init; } =
        "When true (default), roll random workmanship on the same first-inventory pass as quest item XP init so plain quest gear can be tinkered. Stored with EAQuestItemWorkmanshipInitBool (40107); Overtinked skips its own workmanship roll when that flag is set.";

    [JsonPropertyName("// QuestItemWorkmanshipMin")]
    public string QuestItemWorkmanshipMinDoc { get; init; } = "Minimum workmanship when EnableQuestItemWorkmanship is true.";

    [JsonPropertyName("// QuestItemWorkmanshipMax")]
    public string QuestItemWorkmanshipMaxDoc { get; init; } = "Maximum workmanship when EnableQuestItemWorkmanship is true.";

    public bool EnableQuestItemLeveling { get; set; } = true;

    public long QuestItemXpBase { get; set; } = 50_000;

    public double QuestItemXpScale { get; set; } = 1.2;

    public int QuestItemMaxLevelMin { get; set; } = 5;

    public int QuestItemMaxLevelMax { get; set; } = 250;

    public double QuestItemMaxLevelRollPower { get; set; } = 2.2;

    public bool UseFixedGlobalItemMaxLevel { get; set; } = false;

    public int GlobalItemMaxLevel { get; set; } = 250;

    public double GlobalItemXpPlayerScale { get; set; } = 2.0;

    public int QuestItemMaxLevelTier { get; set; } = 1;

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

    public int QuestGrowthCatchUpSummarizeMinLevels { get; set; } = 12;

    public SpellGrowthSettings SpellGrowth { get; set; } = new();

    public QuestGrowthUtilitySettings QuestGrowthUtility { get; set; } = new();

    public ArmorClothingGrowthSettings ArmorClothingGrowth { get; set; } = new();

    public ArmorJewelryRatingGrowthSettings ArmorJewelryRatingGrowth { get; set; } = new();

    public WeaponQuestGrowthSettings WeaponQuestGrowth { get; set; } = new();

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
}

public class SpellGrowthSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "Master toggle for spell/cantrip growth on item level-up.";

    [JsonPropertyName("// AutoPopulateFromDat")]
    public string AutoPopulateFromDatDoc { get; init; } =
        "When true and explicit ID lists are empty, auto-populate spell and cantrip pools from DatManager.PortalDat.SpellTable by name matching.";

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
