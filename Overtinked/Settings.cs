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

    // Max number of tinkers allowed per item (recipe check uses MaxTries - 1).
    public int MaxTries { get; set; } = 50;

    // Difficulty step between each extra tinker tier.
    public float Scale { get; set; } = .5f;

    // Max imbue effects allowed on an item (checked via bit count of ImbuedEffect).
    public int MaxImbueEffects { get; set; } = 5;

    // Harmony patch category for RecipeManager patches; keep distinct from other tinkering mods.
    public const string RecipeManagerCategory = "OvertinkedRecipeManagerPatch";

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
}
