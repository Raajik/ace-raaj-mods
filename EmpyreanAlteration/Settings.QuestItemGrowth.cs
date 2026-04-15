namespace EmpyreanAlteration;

// Quest-given item XP, max-level rolls, custom XP curves, salvage-like level-up growth, and spell growth (moved from Overtinked).
public partial class Settings
{
    [JsonPropertyName("// EnableQuestItemLeveling")]
    public string EnableQuestItemLevelingDoc { get; init; } =
        "When true (default), eligible equippable items get item XP on first player inventory add and EmpyreanAlteration level-up growth (Harmony category EmpyreanAlterationQuestItemGrowth). Per-slot rolls and weights use QuestGrowthSalvageRules, SpellGrowth, and growth engine settings.";

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
    public string ItemXpCurveModeDoc { get; init; } = "AceGeometric, CharacterTable, or Geometric (string in JSON).";

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

    public double ItemXpGeometricMultiplierPerStep { get; set; } = 1.3;

    public bool UseTierScaledItemMaxLevel { get; set; } = false;

    public int ItemMaxLevelsPerTreasureTier { get; set; } = 5;

    [JsonConverter(typeof(JsonStringEnumConverter))]
    public ItemXpCurveMode ItemXpCurveMode { get; set; } = ItemXpCurveMode.Geometric;

    public int ItemXpVirtualCharacterLevel { get; set; } = 6;

    public double ItemXpCharacterCurveMultiplier { get; set; } = 1.0;

    public long ItemXpDummyBaseXp { get; set; } = 1;

    public List<QuestGrowthSalvageTinkerRule> QuestGrowthSalvageRules { get; set; } = new();

    public int QuestGrowthMaxImbueEffects { get; set; } = 5;

    public SpellGrowthSettings SpellGrowth { get; set; } = new();

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
    public string ArmorOrJewelrySpellNameContainsDoc { get; init; } = "Name fragments for auto-population of armor/jewelry spells (case-insensitive).";

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

    public List<CantripLine> CantripLines { get; set; } = new();
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
