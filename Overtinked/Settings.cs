namespace Overtinked;

// Overtinked configuration. Controls max tinker attempts, difficulty scaling, imbue limits, salvage rules, and failure behavior.
public class Settings
{
    [JsonPropertyName("// Overtinked")]
    public string RootDoc { get; init; } = "Reading order: every // key is documentation; the following keys are real settings in the same order. Constants (RecipeManagerCategory, etc.) are not serialized. Nested objects use // lines first, then values (same order).";

    [JsonPropertyName("// MaxTries")]
    public string MaxTriesDoc { get; init; } = "Max number of tinkers allowed per item (recipe check uses MaxTries - 1).";

    [JsonPropertyName("// Scale")]
    public string ScaleDoc { get; init; } = "Difficulty step between each extra tinker tier.";

    [JsonPropertyName("// MaxImbueEffects")]
    public string MaxImbueEffectsDoc { get; init; } = "Max imbue effects allowed on an item (checked via bit count of ImbuedEffect).";

    [JsonPropertyName("// EnableRecipeManagerPatch")]
    public string EnableRecipeManagerPatchDoc { get; init; } = "When true, patches RecipeManager.UseObjectOnTarget (and related) for tinkering flow.";

    [JsonPropertyName("// SalvageRules")]
    public string SalvageRulesDoc { get; init; } = "Per-salvage tinker rules (random or fixed). Include both WCIDs for quest-reward pairs. Each array element: // keys first, then values.";

    [JsonPropertyName("// EnableFailureRedesign")]
    public string EnableFailureRedesignDoc { get; init; } = "When true, failed tinkers apply the opposite effect instead of destroying the item.";

    [JsonPropertyName("// EnableDefaultImbueFailureWorkmanship")]
    public string EnableDefaultImbueFailureWorkmanshipDoc { get; init; } = "When true, failed imbue tinkers add +1 Workmanship instead of destroying the item, capped at 10.";

    [JsonPropertyName("// BleedImbue")]
    public string BleedImbueDoc { get; init; } = "Bleed imbue (e.g. Serpentine 21075). Apply SalvageWcids with both IDs for dual-WCID items. Inside: // lines first, then values.";

    [JsonPropertyName("// CleavingImbue")]
    public string CleavingImbueDoc { get; init; } = "Cleaving imbue (e.g. Tiger Eye 21081). Inside: // lines first, then values.";

    [JsonPropertyName("// NetherRendingImbue")]
    public string NetherRendingImbueDoc { get; init; } = "Nether Rending imbue (e.g. Onyx 21064). Inside: // lines first, then values.";

    [JsonPropertyName("// BuffedImbueRules")]
    public string BuffedImbueRulesDoc { get; init; } = "Buffed jewelry imbues (Hematite HP, Malachite, Lavender Jade, etc.). Each array element: // keys first, then values.";

    [JsonPropertyName("// ShowPlayerSalvageMessage")]
    public string ShowPlayerSalvageMessageDoc { get; init; } = "When true, send the player a short message when a custom salvage/imbue is applied.";

    [JsonPropertyName("// EnableLesserImbueUpgradeToFull")]
    public string EnableLesserImbueUpgradeToFullDoc { get; init; } =
        "When true (default), before OR-ing the new imbue bit, strip the weaker effect on the item: Armor Cleaving (IgnoreArmor) for Sunstone; Biting Strike (CriticalFrequency) for Black Opal; Crushing Blow-style crit mult (CriticalMultiplier) for Fire Opal; quest Resistance Cleaving (ResistanceModifierType + ResistanceModifier) when upgrading to the matching elemental/physical rending imbue.";

    [JsonPropertyName("// EnableQuestItemInventoryInit")]
    public string EnableQuestItemInventoryInitDoc { get; init; } =
        "When true, postfixes Container.TryAddToInventory and runs quest-item workmanship / initial effects on eligible gear when it enters a player pack (loot, quest rewards, etc.). Default false: Overtinked only affects manual tinkering (RecipeManager). Item leveling lives in EmpyreanAlteration.";

    [JsonPropertyName("// EnableQuestItemWorkmanship")]
    public string EnableQuestItemWorkmanshipDoc { get; init; } =
        "When EnableQuestItemInventoryInit is true: roll workmanship on first inventory add so plain quest/loot gear can be tinkered.";

    [JsonPropertyName("// EnableQuestItemInitialEffects")]
    public string EnableQuestItemInitialEffectsDoc { get; init; } =
        "When EnableQuestItemInventoryInit is true: roll optional initial imbue/slayer/salvage-style perks on that first add.";

    [JsonPropertyName("// QuestItemWorkmanshipMin")]
    public string QuestItemWorkmanshipMinDoc { get; init; } = "Minimum workmanship rolled for quest items when EnableQuestItemWorkmanship is true.";

    [JsonPropertyName("// QuestItemWorkmanshipMax")]
    public string QuestItemWorkmanshipMaxDoc { get; init; } = "Maximum workmanship rolled for quest items when EnableQuestItemWorkmanship is true.";

    [JsonPropertyName("// QuestItemEffects")]
    public string QuestItemEffectsDoc { get; init; } = "Global knobs for initial quest-item effects. Inside QuestItemEffects: // lines first, then values.";

    // Max number of tinkers allowed per item (recipe check uses MaxTries - 1).
    public int MaxTries { get; set; } = 50;

    // Difficulty step between each extra tinker tier.
    public float Scale { get; set; } = .5f;

    // Max imbue effects allowed on an item (checked via bit count of ImbuedEffect).
    public int MaxImbueEffects { get; set; } = 5;

    // Harmony patch category for RecipeManager patches; keep distinct from other tinkering mods.
    public const string RecipeManagerCategory = "OvertinkedRecipeManagerPatch";

    // Quest workmanship + initial effects on successful inventory adds (not item XP; that is EmpyreanAlteration).
    public const string OvertinkedQuestInventoryCategory = "OvertinkedQuestInventory";

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

    // When true, strip weaker fixed stats / quest fields before applying the matching imbue (see LesserImbueUpgrade).
    public bool EnableLesserImbueUpgradeToFull { get; set; } = true;

    // When true, hook inventory adds for optional quest-item workmanship + initial effects (see EnableQuestItemWorkmanship / EnableQuestItemInitialEffects).
    public bool EnableQuestItemInventoryInit { get; set; }

    // When true (and EnableQuestItemInventoryInit), quest items are given workmanship on first add so they can be tinkered like standard lootgen items.
    public bool EnableQuestItemWorkmanship { get; set; } = true;

    // When true (and EnableQuestItemInventoryInit), quest items roll initial tinkering-style effects on first add.
    public bool EnableQuestItemInitialEffects { get; set; } = true;

    // Minimum and maximum workmanship rolled for quest items when EnableQuestItemWorkmanship is true.
    public int QuestItemWorkmanshipMin { get; set; } = 4;
    public int QuestItemWorkmanshipMax { get; set; } = 8;

    // Global knobs for initial quest-item effects; favors imbues, then slayers, then salvage-like boosts.
    public QuestItemEffectSettings QuestItemEffects { get; set; } = new();
}

// High-level quest-item effect configuration. Keeps v1 simple with global weights and flags.
public class QuestItemEffectSettings
{
    [JsonPropertyName("// AllowStandardImbues")]
    public string AllowStandardImbuesDoc { get; init; } = "Allow standard imbues (ImbuedEffectType flags) to roll on quest items.";

    [JsonPropertyName("// AllowCustomImbues")]
    public string AllowCustomImbuesDoc { get; init; } = "Allow Overtinked custom imbues (Bleed/Cleaving/Nether Rending) to roll where appropriate.";

    [JsonPropertyName("// AllowSlayer")]
    public string AllowSlayerDoc { get; init; } = "Allow slayer mods (SlayerCreatureType / SlayerDamageBonus) to roll on quest items.";

    [JsonPropertyName("// AllowSalvageLikeBoosts")]
    public string AllowSalvageLikeBoostsDoc { get; init; } = "Allow small numeric boosts using SalvageEffectApplier (Damage, ArmorLevel, ArmorModVsX, etc.).";

    [JsonPropertyName("// ImbueWeight")]
    public string ImbueWeightDoc { get; init; } = "Relative weight when picking initial imbue effects.";

    [JsonPropertyName("// SlayerWeight")]
    public string SlayerWeightDoc { get; init; } = "Relative weight when picking slayer outcomes.";

    [JsonPropertyName("// SalvageWeight")]
    public string SalvageWeightDoc { get; init; } = "Relative weight when picking salvage-like boosts.";

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
