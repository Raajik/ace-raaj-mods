namespace EmpyreanAlteration;

public partial class Settings
{
    public bool Enabled { get; set; } = true;

    public bool Verbose { get; set; }

    public List<AlterationFeature> Features { get; set; } = new()
    {
        AlterationFeature.MutatorHooks,
    };

    // Applies GrowthAugments / GrowthFixedLevelAugments / AugmentGroups when items with GrowthItem level up.
    public bool ItemLevelUpGrowthEnabled { get; set; } = true;

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
