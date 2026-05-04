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

    [JsonPropertyName("// EnableJewelryCleaveBonus")]
    public string EnableJewelryCleaveBonusDoc { get; init; } = "When true, equipped jewelry with PropertyInt.Cleaving adds bonus cleave targets to melee attacks (even on non-cleaving weapons).";

    [JsonPropertyName("// SalvageRules")]
    public string SalvageRulesDoc { get; init; } =
        "Per-salvage tinker rules (random or fixed). Include both WCIDs for quest-reward pairs. Server math: FixedValue / MinValue..MaxValue + EffectKind (no SQL). Optional per-rule strings EffectSummaryFormat, BankEffectFormat, BankDescriptionFormat — string.Format InvariantCulture with {0}=magnitude, {1}=signed value, {2}=Name, {3}=EffectKind. /bank material hints match rule.Name (e.g. Steel) so bank lines track JSON.";

    [JsonPropertyName("// EnableFailureRedesign")]
    public string EnableFailureRedesignDoc { get; init; } = "When true, failed tinkers trigger chaotic POSITIVE effects (overcharge, cascade, mana surge, workmanship bloom, spell whisper) instead of destruction.";

    [JsonPropertyName("// EnableDefaultImbueFailureWorkmanship")]
    public string EnableDefaultImbueFailureWorkmanshipDoc { get; init; } = "When true, failed imbue tinkers add +1 Workmanship instead of destroying the item, capped at 10.";

    [JsonPropertyName("// ChaosDamageShuffleBonusPercent")]
    public string ChaosDamageShuffleBonusPercentDoc { get; init; } =
        "EnableFailureRedesign chaos path 'damage shuffle': additive percent to one rolled stat (DamageMod, ElementalDamageMod, WeaponOffense, WeaponDefense). 5 = +0.05 (former hardcoded bump).";

    [JsonPropertyName("// ChaosLightEncumbranceVal")]
    public string ChaosLightEncumbranceValDoc { get; init; } = "Light-as-a-feather chaos: EncumbranceVal (non-negative). Default 1.";

    [JsonPropertyName("// ChaosLightPyrealValue")]
    public string ChaosLightPyrealValueDoc { get; init; } = "Light-as-a-feather chaos: Value / pyreal base (non-negative). Default 1.";

    [JsonPropertyName("// ChaosBlessedBurdenEncumbranceVal")]
    public string ChaosBlessedBurdenEncumbranceValDoc { get; init; } = "Blessed Burden chaos: EncumbranceVal for the joke crush. Default 5000.";

    [JsonPropertyName("// ChaosOverchargeMultiplierMin")]
    public string ChaosOverchargeMultiplierMinDoc { get; init; } = "Overcharge chaos: Random.Next inclusive lower bound. Must be less than ChaosOverchargeMultiplierMaxExclusive.";

    [JsonPropertyName("// ChaosOverchargeMultiplierMaxExclusive")]
    public string ChaosOverchargeMultiplierMaxExclusiveDoc { get; init; } = "Overcharge chaos: Random.Next exclusive upper bound (default 6 → multipliers 2-5 when Min is 2).";

    [JsonPropertyName("// HemorrhageImbue")]
    public string HemorrhageImbueDoc { get; init; } = "Hemorrhage imbue (e.g. Salvaged Yellow Garnet 21087). Flat DoT stacks + AoE stack spread. Legacy JSON key BleedImbue still deserializes into BleedImbueLegacy. Inside: // lines first, then values.";

    [JsonPropertyName("// CleavingImbue")]
    public string CleavingImbueDoc { get; init; } = "Cleaving imbue (e.g. Tiger Eye 21081). Inside: // lines first, then values.";

    [JsonPropertyName("// NetherRendingImbue")]
    public string NetherRendingImbueDoc { get; init; } = "Nether Rending imbue (e.g. Onyx 21064). Inside: // lines first, then values.";

    [JsonPropertyName("// JewelryCleaveImbue")]
    public string JewelryCleaveImbueDoc { get; init; } = "Jewelry cleave imbue (e.g. Obsidian 21063). Adds PropertyInt.Cleaving to jewelry so equipped pieces grant bonus cleave targets via JewelryCleaveBonus.";

    [JsonPropertyName("// BuffedImbueRules")]
    public string BuffedImbueRulesDoc { get; init; } = "Buffed jewelry imbues (Hematite HP, Malachite, Lavender Jade, etc.). Each array element: // keys first, then values.";

    [JsonPropertyName("// ShowPlayerSalvageMessage")]
    public string ShowPlayerSalvageMessageDoc { get; init; } = "When true, send the player a short message when a custom salvage/imbue is applied.";

    [JsonPropertyName("// DefenseImbueBonus")]
    public string DefenseImbueBonusDoc { get; init; } = "Multiplier on vanilla defense-imbue contribution (imbued-piece count is added to effective Melee/Missile/Magic Defense skill). 0 = vanilla (+1 per imbued piece). 5 = +5 per imbued piece (two pieces => +10).";

    [JsonPropertyName("// OverrideDefenseSalvageLongDescInAppraise")]
    public string OverrideDefenseSalvageLongDescInAppraiseDoc { get; init; } = "When true and DefenseImbueBonus > 0, examine LongDesc for defense salvage WCIDs is taken from JSON format strings below (so operators can change bonus text without SQL).";

    [JsonPropertyName("// OverrideNumericSalvageBagLongDescInAppraise")]
    public string OverrideNumericSalvageBagLongDescInAppraiseDoc { get; init; } =
        "When true, examine LongDesc for numeric SalvageRules bags (TinkeringMaterial) matches live JSON: BankDescriptionFormat when set, else rule name + effect text + optional bane clause. Defense salvage WCIDs keep priority when defense override applies.";

    [JsonPropertyName("// MergeSalvageTinkerEffectIntoBroadcast")]
    public string MergeSalvageTinkerEffectIntoBroadcastDoc { get; init; } =
        "When true with ShowPlayerSalvageMessage, folds custom salvage effect (and bane summary) into the single local tinkering broadcast instead of separate craft lines. Buffed jewelry stat roll uses the same merge.";

    [JsonPropertyName("// DefenseSalvageLongDescSalvagedFormat")]
    public string DefenseSalvageLongDescSalvagedFormatDoc { get; init; } = "Optional format for salvaged Peridot/Topaz/Zircon long description. Placeholders: {0} = DefenseImbueBonus, {1} = Melee or Missile or Magic. Empty = built-in English.";

    [JsonPropertyName("// DefenseSalvageLongDescFoolproofFormat")]
    public string DefenseSalvageLongDescFoolproofFormatDoc { get; init; } = "Optional format for foolproof Peridot/Topaz/Zircon long description. Same placeholders as salvaged. Empty = built-in English.";

    [JsonPropertyName("// EnableLesserImbueUpgradeToFull")]
    public string EnableLesserImbueUpgradeToFullDoc { get; init; } =
        "When true (default), before OR-ing the new imbue bit, strip the weaker effect on the item: Armor Cleaving (IgnoreArmor) for Sunstone; Biting Strike (CriticalFrequency) for Black Opal; Crushing Blow-style crit mult (CriticalMultiplier) for Fire Opal; quest Resistance Cleaving (ResistanceModifierType + ResistanceModifier) when upgrading to the matching elemental/physical rending imbue.";

    [JsonPropertyName("// DebugCraftInventorySync")]
    public string DebugCraftInventorySyncDoc { get; init; } =
        "When true, logs one line per tinkering CreateDestroyItems: recipe id, success, whether modified is null, target in modified set, wield slot, FindObject(MyInventory). Use to verify HandleRecipe UpdateObj / MoveItemToFirstContainerSlot prerequisites; grep ACE_Log for [CraftInventorySync].";

    [JsonPropertyName("// MirrorRecipeUpdateObjAfterOvertinkedShortCircuit")]
    public string MirrorRecipeUpdateObjAfterOvertinkedShortCircuitDoc { get; init; } =
        "When true, after a successful tinkering HandleRecipe, runs the same broadcast + MoveItemToFirstContainerSlot as RecipeManager.UpdateObj again when Overtinked short-circuited TryMutate (custom imbue/salvage). Vanilla already runs UpdateObj once when target is in modified; enable only if client/server pack order still wrong. Default false to avoid duplicate packets.";

    // Max number of tinkers allowed per item (recipe check uses MaxTries - 1).
    public int MaxTries { get; set; } = 10;

    // Difficulty step between each extra tinker tier.
    public float Scale { get; set; } = .5f;

    // Max imbue effects allowed on an item (checked via bit count of ImbuedEffect).
    public int MaxImbueEffects { get; set; } = 5;

    // Harmony patch category for RecipeManager patches; keep distinct from other tinkering mods.
    public const string RecipeManagerCategory = "OvertinkedRecipeManagerPatch";

    // Jewelry cleave bonus combat patch category.
    public const string JewelryCleaveCategory = "OvertinkedJewelryCleave";

    // When true, patches RecipeManager.UseObjectOnTarget (and related) for tinkering flow.
    public bool EnableRecipeManagerPatch { get; set; } = true;

    // When true, equipped jewelry with PropertyInt.Cleaving adds bonus cleave targets to melee attacks.
    public bool EnableJewelryCleaveBonus { get; set; } = true;

    // Per-salvage tinker rules (random or fixed). Include both WCIDs for quest-reward pairs.
    public List<SalvageTinkerRule> SalvageRules { get; set; } = new();

    // When true, failed tinkers apply the opposite effect instead of destroying the item.
    public bool EnableFailureRedesign { get; set; } = true;

    // When true, failed imbue tinkers (standard + custom) add +1 Workmanship to the item instead of destroying it, capped at 10.
    public bool EnableDefaultImbueFailureWorkmanship { get; set; } = true;

    // Chaos failure redesign tuning (see doc properties).
    public float ChaosDamageShuffleBonusPercent { get; set; } = 5f;

    public int ChaosLightEncumbranceVal { get; set; } = 1;

    public int ChaosLightPyrealValue { get; set; } = 1;

    public int ChaosBlessedBurdenEncumbranceVal { get; set; } = 5000;

    public int ChaosOverchargeMultiplierMin { get; set; } = 2;

    public int ChaosOverchargeMultiplierMaxExclusive { get; set; } = 6;

    // Hemorrhage imbue (replaces Bleed). Apply SalvageWcids with both IDs for dual-WCID items.
    public HemorrhageImbueConfig HemorrhageImbue { get; set; } = new();

    // Legacy Settings.json key from Bleed imbue; merged into HemorrhageImbue in RefreshSettingsAndSalvageLookup when Hemorrhage has no salvage WCIDs.
    [JsonPropertyName("BleedImbue")]
    public HemorrhageImbueConfig? BleedImbueLegacy { get; set; }

    // Cleaving imbue (e.g. Tiger Eye 21081).
    public CleavingImbueCombatConfig CleavingImbue { get; set; } = new();

    // Nether Rending imbue (e.g. Onyx 21064).
    public NetherRendingImbueCombatConfig NetherRendingImbue { get; set; } = new();

    // Jewelry cleave imbue (e.g. Obsidian 21063).
    public JewelryCleaveImbueConfig JewelryCleaveImbue { get; set; } = new();

    // Buffed jewelry imbues (Hematite HP, Malachite Stam + melee, Lavender Jade mana + damage from mana, etc.).
    public List<BuffedImbueRule> BuffedImbueRules { get; set; } = new();

    // When true, send the player a short message when a custom salvage/imbue is applied.
    public bool ShowPlayerSalvageMessage { get; set; } = true;

    // Multiplier on imbued-piece count added to effective defense skill (Melee/Missile/Magic). 0 = vanilla (+1 per piece).
    public int DefenseImbueBonus { get; set; } = 0;

    // When true and DefenseImbueBonus > 0, rewrite examine LongDesc for defense salvage bags from optional format strings.
    public bool OverrideDefenseSalvageLongDescInAppraise { get; set; } = true;

    // When true, numeric SalvageRules bags get LongDesc from live rules (see doc property).
    public bool OverrideNumericSalvageBagLongDescInAppraise { get; set; } = true;

    // When true with ShowPlayerSalvageMessage, append effect summary to tinkering broadcast (see doc property).
    public bool MergeSalvageTinkerEffectIntoBroadcast { get; set; } = true;

    // Optional LongDesc formats; see doc properties. Null/whitespace uses hardcoded defaults.
    public string? DefenseSalvageLongDescSalvagedFormat { get; set; }

    public string? DefenseSalvageLongDescFoolproofFormat { get; set; }

    // When true, strip weaker fixed stats / quest fields before applying the matching imbue (see LesserImbueUpgrade).
    public bool EnableLesserImbueUpgradeToFull { get; set; } = true;

    // Logs tinkering craft inventory sync diagnostics (see doc property).
    public bool DebugCraftInventorySync { get; set; } = false;

    // Second UpdateObj-style sync after Overtinked TryMutate short-circuit (see doc property).
    public bool MirrorRecipeUpdateObjAfterOvertinkedShortCircuit { get; set; } = false;
}
