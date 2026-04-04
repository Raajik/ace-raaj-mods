namespace Overtinked;

// Item XP curve: AceGeometric = stock ACE ExperienceSystem. CharacterTable = dat CharacterLevelXPList. Geometric = first-level total + per-step multiplier (Overtinked).
public enum ItemXpCurveMode
{
    AceGeometric,
    CharacterTable,
    Geometric,
}

// Overtinked configuration. Controls max tinker attempts, difficulty scaling, imbue limits, salvage rules, and failure behavior.
public class Settings
{
    // Max number of tinkers allowed per item (recipe check uses MaxTries - 1).
    public int MaxTries { get; set; } = 50;

    // Difficulty step between each extra tinker tier.
    public float Scale { get; set; } = .5f;

    // Max imbue effects allowed on an item (checked via bit count of ImbuedEffect).
    public int MaxImbueEffects { get; set; } = 5;

    // Harmony patch category for RecipeManager patches; keep distinct from other tinkering mods.
    public const string RecipeManagerCategory = "OvertinkedRecipeManagerPatch";

    // Loot init, inventory quest init, item XP curve, and OnItemLevelUp growth — off = salvage/tinkering only.
    public const string ItemLevelingHarmonyCategory = "OvertinkedItemLeveling";

    // When false, only uncategorized/salvage flow applies (RecipeManager category still follows EnableRecipeManagerPatch).
    public bool EnableItemLevelingHooks { get; set; } = false;

    // When true, patches RecipeManager.UseObjectOnTarget (and related) for tinkering flow.
    public bool EnableRecipeManagerPatch { get; set; } = true;

    // Per-salvage tinker rules (random or fixed). Include both WCIDs for quest-reward pairs.
    public List<SalvageTinkerRule> SalvageRules { get; set; } = new();

    // When true, failed tinkers apply the opposite effect instead of destroying the item.
    public bool EnableFailureRedesign { get; set; } = true;

    // When true, failed imbue tinkers (standard + custom) add +1 Workmanship to the item instead of destroying it, capped at 10.
    public bool EnableDefaultImbueFailureWorkmanship { get; set; } = true;

    // Bleed imbue (e.g. Serpentine 21075). Apply SalvageWcids with both IDs for dual-WCID items.
    public BleedImbueConfig BleedImbue { get; set; } = new();

    // Cleaving imbue (e.g. Tiger Eye 21081).
    public CleavingImbueCombatConfig CleavingImbue { get; set; } = new();

    // Nether Rending imbue (e.g. Onyx 21064).
    public NetherRendingImbueCombatConfig NetherRendingImbue { get; set; } = new();

    // Buffed jewelry imbues (Hematite HP, Malachite Stam + melee, Lavender Jade mana + damage from mana, etc.).
    public List<BuffedImbueRule> BuffedImbueRules { get; set; } = new();

    // When true, send the player a short message when a custom salvage/imbue is applied.
    public bool ShowPlayerSalvageMessage { get; set; } = true;

    // When true, quest items are given workmanship on creation so they can be tinkered like standard lootgen items.
    public bool EnableQuestItemWorkmanship { get; set; } = true;

    // When true, quest items roll initial tinkering-style effects (imbues/slayers/salvage-like boosts) on creation.
    public bool EnableQuestItemInitialEffects { get; set; } = true;

    // When true, quest items are initialized with item XP and can level up similarly to growth/rare items.
    public bool EnableQuestItemLeveling { get; set; } = true;

    // Minimum and maximum workmanship rolled for quest items when EnableQuestItemWorkmanship is true.
    public int QuestItemWorkmanshipMin { get; set; } = 4;
    public int QuestItemWorkmanshipMax { get; set; } = 8;

    // Base XP per quest-item level and global XP scale; aligns with EmpyreanAlteration growth-style loot settings when both are used.
    public long QuestItemXpBase { get; set; } = 10_000;
    public double QuestItemXpScale { get; set; } = 1.2;

    // Rolled cap for quest-given items only (InitializeQuestItemXp → ItemLevelingRolls.RollQuestItemMaxLevel). Ignored for loot drops.
    public int QuestItemMaxLevelMin { get; set; } = 3;
    public int QuestItemMaxLevelMax { get; set; } = 8;

    // When true, ItemMaxLevel uses GlobalItemMaxLevel when > 0 for quest rolls.
    public bool UseFixedGlobalItemMaxLevel { get; set; } = false;

    // Fallback fixed cap when UseFixedGlobalItemMaxLevel is true (or when min/max invalid).
    public int GlobalItemMaxLevel { get; set; } = 100;

    // Legacy geometric curve: scales ItemBaseXp (still used when ItemXpCurveMode is AceGeometric).
    public double GlobalItemXpPlayerScale { get; set; } = 2.0;

    // Skews rolled max toward the top of the quest min..max range (RollQuestItemMaxLevel).
    public double LootItemMaxLevelTierBias { get; set; } = 1.5;

    // Tier passed into max-level roll for quest-given items (no TreasureDeath in inventory init).
    public int QuestItemMaxLevelTier { get; set; } = 1;

    // Geometric: total XP to reach level 1 (from 0). Each further level adds XP scaled by ItemXpGeometricMultiplierPerStep on the first-level amount (see ItemXpCurve).
    public long ItemXpGeometricFirstLevelTotal { get; set; } = 25_000;

    // Per-level growth: XP to go from L to L+1 equals firstStep * mult^L (0-based exponent on the step); cumulative totals use the geometric series.
    public double ItemXpGeometricMultiplierPerStep { get; set; } = 1.25;

    // When true, ItemMaxLevel = tier * ItemMaxLevelsPerTreasureTier (clamped by QuestItemMaxLevelMax). When false, use random rolls in ItemLevelingRolls (quest init only).
    public bool UseTierScaledItemMaxLevel { get; set; } = true;

    // Tier 1 => max level 5, tier 2 => 10, etc., before QuestItemMaxLevelMax ceiling (quest init only).
    public int ItemMaxLevelsPerTreasureTier { get; set; } = 5;

    // Character XP table–based item leveling (requires ItemXpCurvePatches).
    [JsonConverter(typeof(JsonStringEnumConverter))]
    public ItemXpCurveMode ItemXpCurveMode { get; set; } = ItemXpCurveMode.Geometric;

    // Anchors which character XP "chunks" each item level uses: step 1 ~= table[virtualLevel]-table[virtualLevel-1].
    // High values (15–20+) use huge per-level totals (same bracket as leveling a character at those levels) — item XP will barely move.
    // Use ~3–10 for normal play; raise only if you want very slow item progression.
    public int ItemXpVirtualCharacterLevel { get; set; } = 6;

    // Multiplies each character per-level delta applied to item steps.
    public double ItemXpCharacterCurveMultiplier { get; set; } = 1.0;

    // Dummy base XP when using CharacterTable or Geometric (ACE requires ItemBaseXp > 0 for HasItemLevel); curve math uses ItemXpGeometric* / portal table, not this value.
    public long ItemXpDummyBaseXp { get; set; } = 1;

    // Global knobs for initial quest-item effects; favors imbues, then slayers, then salvage-like boosts.
    public QuestItemEffectSettings QuestItemEffects { get; set; } = new();

    // Spell and cantrip growth for item level-ups.
    public SpellGrowthSettings SpellGrowth { get; set; } = new();
}

public class SpellGrowthSettings
{
    public bool Enabled { get; set; } = true;

    // When true and explicit ID lists are empty, auto-populate spell and cantrip pools from DatManager.PortalDat.SpellTable by name matching.
    public bool AutoPopulateFromDat { get; set; } = true;

    // Relative weights when choosing a spell vs a cantrip outcome.
    public int SpellOutcomeWeight { get; set; } = 2;
    public int CantripOutcomeWeight { get; set; } = 1;

    // Unused: spell/cantrip growth always tries upgrades before new lines (retained for JSON compatibility).
    public double SpellUpgradeChance { get; set; } = 0.35;
    public double CantripUpgradeChance { get; set; } = 0.50;

    // When non-empty, replaces auto weapon spell pools (no weapon-type allow-list is applied to these IDs).
    public List<int> WeaponSpellIds { get; set; } = new();
    public List<int> ArmorOrJewelrySpellIds { get; set; } = new();
    public List<int> GenericSpellIds { get; set; } = new();

    // Name fragments used for auto-population (case-insensitive).
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

    // Cantrip lines are ordered tiers; the helper will add base tier then upgrade upward.
    public List<CantripLine> CantripLines { get; set; } = new();
}

public class CantripLine
{
    public string Name { get; set; } = "";

    // Ordered tiers: Minor -> Moderate -> Major -> Epic -> Legendary, etc.
    public List<int> TierIds { get; set; } = new();
}

// High-level quest-item effect configuration. Keeps v1 simple with global weights and flags.
public class QuestItemEffectSettings
{
    // Allow standard imbues (ImbuedEffectType flags) to roll on quest items.
    public bool AllowStandardImbues { get; set; } = true;

    // Allow Overtinked custom imbues (Bleed/Cleaving/Nether Rending) to roll where appropriate.
    public bool AllowCustomImbues { get; set; } = true;

    // Allow slayer mods (SlayerCreatureType / SlayerDamageBonus) to roll on quest items.
    public bool AllowSlayer { get; set; } = true;

    // Allow small numeric boosts using SalvageEffectApplier (Damage, ArmorLevel, ArmorModVsX, etc.).
    public bool AllowSalvageLikeBoosts { get; set; } = true;

    // Relative weights when picking initial effects; higher values increase likelihood.
    public int ImbueWeight { get; set; } = 3;
    public int SlayerWeight { get; set; } = 2;
    public int SalvageWeight { get; set; } = 1;
}
