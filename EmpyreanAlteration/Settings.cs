namespace EmpyreanAlteration;

public partial class Settings
{
    [JsonPropertyName("// EmpyreanAlteration")]
    public string RootDoc { get; init; } = "Reading order: every // key is documentation; the following keys are real settings in the same order. Shipped JSON may list only a subset; other properties use C# defaults until added.";

    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } =
        "Master toggle for EmpyreanAlteration mutator and alteration features (default true). When false, mutators and quest item leveling patches do not apply.";

    [JsonPropertyName("// Verbose")]
    public string VerboseDoc { get; init; } = "When true, extra logging for mutator and alteration diagnostics.";

    [JsonPropertyName("// Features")]
    public string FeaturesDoc { get; init; } = "Which alteration feature groups are active (AlterationFeature enum values).";

    [JsonPropertyName("// ItemLevelUpGrowthEnabled")]
    public string ItemLevelUpGrowthEnabledDoc { get; init; } = "When true, applies GrowthAugments / GrowthFixedLevelAugments / AugmentGroups when items with GrowthItem level up.";

    [JsonPropertyName("// ChaosTriggeredGrowth")]
    public string ChaosTriggeredGrowthDoc { get; init; } = "When true (default), replaces random Augment growth with intelligent chaos-tinker-triggered leveling. Items spawn with ItemTotalXp=0; chaos failure triggers direct level-up with free tinkers/imbues.";

    [JsonPropertyName("// BonusCaps")]
    public string BonusCapsDoc { get; init; } = "Min/max caps for fake int/float property bonuses (PropertyBonusSettings).";

    [JsonPropertyName("// CloakProcRate")]
    public string CloakProcRateDoc { get; init; } = "Base proc rate for cloak mutator effects (0.0–1.0).";

    [JsonPropertyName("// AetheriaProcRate")]
    public string AetheriaProcRateDoc { get; init; } = "Base proc rate for aetheria-related effects.";

    [JsonPropertyName("// LootProfilePath")]
    public string LootProfilePathDoc { get; init; } = "Directory for loot profile JSON; computed at runtime from mod path if not overridden.";

    [JsonPropertyName("// LootProfileUseUsername")]
    public string LootProfileUseUsernameDoc { get; init; } = "When true, per-player loot profile files use the account or character username.";

    [JsonPropertyName("// SpellSettings")]
    public string SpellSettingsDoc { get; init; } = "Splash/split spell behavior tuning (SpellSettings).";

    [JsonPropertyName("// Odds")]
    public string OddsDoc { get; init; } = "Named odds tables (OddsGroup keys) used by mutators.";

    [JsonPropertyName("// TargetGroups")]
    public string TargetGroupsDoc { get; init; } = "Named treasure item type sets mutators use for targeting.";

    [JsonPropertyName("// WeenieTypeGroups")]
    public string WeenieTypeGroupsDoc { get; init; } = "Named WeenieType sets for mutator targeting.";

    [JsonPropertyName("// CreatureTypeGroups")]
    public string CreatureTypeGroupsDoc { get; init; } = "Named CreatureType sets (e.g. slayer pools).";

    [JsonPropertyName("// EquipmentSetGroups")]
    public string EquipmentSetGroupsDoc { get; init; } = "Named equipment set groups for set mutators.";

    [JsonPropertyName("// SpellGroups")]
    public string SpellGroupsDoc { get; init; } = "Named spell ID groups (e.g. cloak-only) for proc configuration.";

    [JsonPropertyName("// AugmentGroups")]
    public string AugmentGroupsDoc { get; init; } = "Named augment lists referenced by GrowthAugments and similar.";

    public bool Enabled { get; set; } = true;

    public bool Verbose { get; set; }

    public List<AlterationFeature> Features { get; set; } = new()
    {
        AlterationFeature.MutatorHooks,
    };

    // Applies GrowthAugments / GrowthFixedLevelAugments / AugmentGroups when items with GrowthItem level up.
    public bool ItemLevelUpGrowthEnabled { get; set; } = true;

    // When true (default), replaces random Augment growth with intelligent chaos-tinker-triggered leveling.
    public bool ChaosTriggeredGrowth { get; set; } = true;

    public PropertyBonusSettings BonusCaps { get; set; } = new();

    public double CloakProcRate { get; set; } = 0.05;

    public float AetheriaProcRate { get; set; } = 0.05f;

    public string LootProfilePath { get; } = Path.Combine(ModManager.ModPath, "LootProfiles");

    public bool LootProfileUseUsername { get; set; } = true;

    public SpellSettings SpellSettings { get; set; } = new();

    public Dictionary<string, Odds> Odds { get; set; } = Enum.GetValues<OddsGroup>().ToDictionary(x => x.ToString(), x => x.OddsOf());

    public Dictionary<string, TreasureItemType_Orig[]> TargetGroups { get; set; } = new()
    {
        [nameof(TargetGroup.Accessories)] = TargetGroup.Accessories.SetOf(),
        [nameof(TargetGroup.ArmorClothing)] = TargetGroup.ArmorClothing.SetOf(),
        [nameof(TargetGroup.Equipables)] = TargetGroup.Equipables.SetOf(),
        [nameof(TargetGroup.Weapon)] = TargetGroup.Weapon.SetOf(),
        [nameof(TargetGroup.Wearables)] = TargetGroup.Wearables.SetOf(),
    };

    public Dictionary<string, WeenieType[]> WeenieTypeGroups { get; set; } = new()
    {
        [nameof(WeenieTypeGroup.Container)] = WeenieTypeGroup.Container.SetOf(),
    };

    public Dictionary<string, CreatureType[]> CreatureTypeGroups { get; set; } =
        Enum.GetValues<CreatureTypeGroup>().ToDictionary(x => x.ToString(), x => x.SetOf());

    public Dictionary<string, EquipmentSet[]> EquipmentSetGroups { get; set; } =
        Enum.GetValues<EquipmentSetGroup>().ToDictionary(x => x.ToString(), x => x.SetOf());

    public Dictionary<string, SpellId[]> SpellGroups { get; set; } =
        Enum.GetValues<SpellGroup>().ToDictionary(x => x.ToString(), x => x.SetOf());

    public Dictionary<string, Augment[]> AugmentGroups { get; set; } =
        Enum.GetValues<AugmentGroup>().ToDictionary(x => x.ToString(), x => x.SetOf());
}
