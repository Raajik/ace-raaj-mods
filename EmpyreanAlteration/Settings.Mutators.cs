namespace EmpyreanAlteration;

public partial class Settings
{
    [JsonPropertyName("// MutatorPath")]
    public string MutatorPathDoc { get; init; } = "Folder under the mod containing mutator type implementations; computed at runtime from ModPath.";

    // Mutator configuration
    public string MutatorPath => Path.Combine(Mod.Instance.ModPath, "Mutators");

    [JsonPropertyName("// Mutators")]
    public string MutatorsDoc { get; init; } = "Registered mutator definitions (mutation name, events, odds, targets).";

    public List<MutatorSettings> Mutators { get; set; } =
        new()
        {
            // Growth-style leveling from treasure containers.
            new MutatorSettings(Mutation.GrowthItem.ToString())
            {
                Odds = nameof(OddsGroup.Always),
                TreasureTargets = nameof(TargetGroup.Weapon),
                Events = MutationEvent.Containers
            },
            // LootGrowthItem: generalized loot leveling + pre-imbues for eligible equipables.
            new MutatorSettings(Mutation.LootGrowthItem.ToString())
            {
                Odds = nameof(OddsGroup.Always),
                TreasureTargets = nameof(TargetGroup.Equipables),
                Events = MutationEvent.Containers | MutationEvent.Loot
            },
        };

    [JsonPropertyName("// GrowthAugments")]
    public string GrowthAugmentsDoc { get; init; } = "Maps WeenieType to AugmentGroup name on GrowthItem level-up.";

    // GrowthItem mutator settings
    public Dictionary<WeenieType, string> GrowthAugments { get; set; } = new()
    {
        [WeenieType.MeleeWeapon] = nameof(AugmentGroup.Weapon),
        [WeenieType.Caster] = nameof(AugmentGroup.Weapon),
        [WeenieType.MissileLauncher] = nameof(AugmentGroup.Weapon),
    };

    [JsonPropertyName("// GrowthFixedLevelAugments")]
    public string GrowthFixedLevelAugmentsDoc { get; init; } = "Per WeenieType, fixed item level → Augment granted.";

    public Dictionary<WeenieType, Dictionary<int, Augment>> GrowthFixedLevelAugments { get; set; } = new()
    {
        [WeenieType.MeleeWeapon] = new Dictionary<int, Augment>()
        {
            [1] = Augment.RendAll,
        },
        [WeenieType.Caster] = new Dictionary<int, Augment>()
        {
            [1] = Augment.RendAll,
        },
        [WeenieType.MissileLauncher] = new Dictionary<int, Augment>()
        {
            [1] = Augment.RendAll,
        }
    };

    [JsonPropertyName("// GrowthTierLevelRange")]
    public string GrowthTierLevelRangeDoc { get; init; } =
        "Treasure tier → allowed item level range for GrowthItem mutator when UseTreasureTierItemMaxLevelBand is false. When true, bands are [5*T, 10*T] instead.";

    public Dictionary<int, IntRange> GrowthTierLevelRange { get; set; } =
        Enumerable.Range(1, 8).ToDictionary(x => x, x => Range.Int(5 * x, 10 * x));

    [JsonPropertyName("// UseTreasureTierItemMaxLevelBand")]
    public string UseTreasureTierItemMaxLevelBandDoc { get; init; } =
        "When true (default), LootGrowthItem and GrowthItem roll ItemMaxLevel uniformly in [5*T, 10*T] for treasure tier T (clamped to Min/Max tier keys). Ignores biased LootItemMaxLevelRollPower / soft cap / elite band for that roll.";

    public bool UseTreasureTierItemMaxLevelBand { get; set; } = true;

    [JsonPropertyName("// TreasureTierItemMaxLevelBandMinTier")]
    public string TreasureTierItemMaxLevelBandMinTierDoc { get; init; } = "Minimum ACE treasure tier used for the 5x/10x band (default 1).";

    public int TreasureTierItemMaxLevelBandMinTier { get; set; } = 1;

    [JsonPropertyName("// TreasureTierItemMaxLevelBandMaxTier")]
    public string TreasureTierItemMaxLevelBandMaxTierDoc { get; init; } = "Maximum ACE treasure tier clamp for the 5x/10x band (default 8).";

    public int TreasureTierItemMaxLevelBandMaxTier { get; set; } = 8;

    [JsonPropertyName("// LootLowTreasureTierMaxBandCutoff")]
    public string LootLowTreasureTierMaxBandCutoffDoc { get; init; } =
        "When > 0, treasure tiers T <= this value use LootLowTreasureTierItemMaxLevelMin/Max for ItemMaxLevel rolls instead of [5*T,10*T]. Set 0 to disable and use the linear band for all tiers.";

    public int LootLowTreasureTierMaxBandCutoff { get; set; } = 2;

    [JsonPropertyName("// LootLowTreasureTierItemMaxLevelMin")]
    public string LootLowTreasureTierItemMaxLevelMinDoc { get; init; } =
        "Inclusive low end of ItemMaxLevel when UseTreasureTierItemMaxLevelBand is true and clamped tier <= LootLowTreasureTierMaxBandCutoff.";

    public int LootLowTreasureTierItemMaxLevelMin { get; set; } = 10;

    [JsonPropertyName("// LootLowTreasureTierItemMaxLevelMax")]
    public string LootLowTreasureTierItemMaxLevelMaxDoc { get; init; } =
        "Inclusive high end of ItemMaxLevel for low treasure tiers (see LootLowTreasureTierMaxBandCutoff).";

    public int LootLowTreasureTierItemMaxLevelMax { get; set; } = 20;

    [JsonPropertyName("// GrowthXpBase")]
    public string GrowthXpBaseDoc { get; init; } = "Base XP for growth-style item leveling.";

    public long GrowthXpBase { get; set; } = 10_000;

    [JsonPropertyName("// GrowthXpScaleByTier")]
    public string GrowthXpScaleByTierDoc { get; init; } = "XP scale multiplier per treasure tier for growth items.";

    public double GrowthXpScaleByTier { get; set; } = 1.2;

    [JsonPropertyName("// EnableLootItemLeveling")]
    public string EnableLootItemLevelingDoc { get; init; } = "LootGrowthItem: enable loot-time item XP initialization.";

    // LootGrowthItem mutator: loot-time item XP init and optional pre-imbues (replaces former Overtinked loot init).
    public bool EnableLootItemLeveling { get; set; } = true;

    [JsonPropertyName("// EnableLootItemPreImbue")]
    public string EnableLootItemPreImbueDoc { get; init; } = "LootGrowthItem: roll pre-imbues on eligible loot.";

    public bool EnableLootItemPreImbue { get; set; } = true;

    [JsonPropertyName("// LootGrowthReplaceVanillaCapWithoutItemXp")]
    public string LootGrowthReplaceVanillaCapWithoutItemXpDoc { get; init; } =
        "When true (default), LootGrowthItem clears ACE 'cap-only' item level (e.g. MutateCloak ItemMaxLevel 1–5 with no ItemBaseXp/ScalesWithLevel track) so loot-time item XP can initialize. Set false to keep retail cloak caps untouched.";

    public bool LootGrowthReplaceVanillaCapWithoutItemXp { get; set; } = true;

    [JsonPropertyName("// LootItemXpBase")]
    public string LootItemXpBaseDoc { get; init; } = "Base XP for loot-time item leveling.";

    public long LootItemXpBase { get; set; } = 10_000;

    [JsonPropertyName("// LootItemXpScale")]
    public string LootItemXpScaleDoc { get; init; } = "XP scale for loot-time item leveling.";

    public double LootItemXpScale { get; set; } = 1.2;

    [JsonPropertyName("// LootItemMaxLevelMin")]
    public string LootItemMaxLevelMinDoc { get; init; } = "Minimum rolled max level for loot growth items.";

    public int LootItemMaxLevelMin { get; set; } = 5;

    [JsonPropertyName("// LootItemMaxLevelMax")]
    public string LootItemMaxLevelMaxDoc { get; init; } = "Maximum rolled max level for loot growth items.";

    public int LootItemMaxLevelMax { get; set; } = 250;

    [JsonPropertyName("// LootItemMaxLevelRollPower")]
    public string LootItemMaxLevelRollPowerDoc { get; init; } = "Loot/GrowthItem max-level rolls: exponent p in w=U^p; p>1 favors lower caps. 1.0 = uniform between LootItemMaxLevelMin and LootItemMaxLevelMax.";

    public double LootItemMaxLevelRollPower { get; set; } = 2.2;

    [JsonPropertyName("// LootItemMaxLevelTierBias")]
    public string LootItemMaxLevelTierBiasDoc { get; init; } =
        "On higher treasure tiers, relaxes max-level roll skew slightly (quest rolls and loot cap rolls).";

    public double LootItemMaxLevelTierBias { get; set; } = 1.5;

    [JsonPropertyName("// LootItemMaxLevelSoftCap")]
    public string LootItemMaxLevelSoftCapDoc { get; init; } =
        "Loot GrowthItem: most rolls use max level in LootItemMaxLevelMin..min(LootItemMaxLevelMax,this). Values above the soft cap require passing LootItemMaxLevelEliteBandChance, then roll in (softCap..max] with LootItemMaxLevelEliteRollPower (higher level progressively rarer). Set 0 to disable splitting and use a single roll over the full min..max.";

    public int LootItemMaxLevelSoftCap { get; set; } = 50;

    [JsonPropertyName("// LootItemMaxLevelEliteBandChance")]
    public string LootItemMaxLevelEliteBandChanceDoc { get; init; } =
        "Per eligible loot item, chance (0–1) to roll the elite band: ItemMaxLevel above LootItemMaxLevelSoftCap. Typical ~0.0003–0.001 (roughly one in a few thousand) so high caps stay a long-term carrot. 0 = never roll above soft cap. 1 = always use elite when max > soft cap.";

    public double LootItemMaxLevelEliteBandChance { get; set; } = 1.0 / 3000.0;

    [JsonPropertyName("// LootItemMaxLevelEliteRollPower")]
    public string LootItemMaxLevelEliteRollPowerDoc { get; init; } =
        "Exponent for w=U^w when rolling only within (softCap..max]; higher values make 51–80 much more common than 200+ within elite drops. Tier bias still applies.";

    public double LootItemMaxLevelEliteRollPower { get; set; } = 4.0;

    [JsonPropertyName("// LootItemPreImbueChance")]
    public string LootItemPreImbueChanceDoc { get; init; } = "Chance to apply a pre-imbue on eligible loot.";

    public double LootItemPreImbueChance { get; set; } = 0.05;

    [JsonPropertyName("// LootItemLevelingEligibleWeenieTypes")]
    public string LootItemLevelingEligibleWeenieTypesDoc { get; init; } = "Weenie types that may receive loot-time item XP / pre-imbues.";

    public WeenieType[] LootItemLevelingEligibleWeenieTypes { get; set; } =
    {
        WeenieType.MeleeWeapon,
        WeenieType.MissileLauncher,
        WeenieType.Caster,
        WeenieType.Clothing,
        WeenieType.Gem,
    };

    [JsonPropertyName("// ItemTypeEquipmentSets")]
    public string ItemTypeEquipmentSetsDoc { get; init; } = "Maps treasure item type to equipment set group for set mutators.";

    // Set mutator settings
    public Dictionary<TreasureItemType_Orig, EquipmentSetGroup> ItemTypeEquipmentSets { get; set; } = new()
    {
        [TreasureItemType_Orig.Armor] = EquipmentSetGroup.Armor,
        [TreasureItemType_Orig.Clothing] = EquipmentSetGroup.Armor,
        [TreasureItemType_Orig.Cloak] = EquipmentSetGroup.Cloak,
        [TreasureItemType_Orig.Jewelry] = EquipmentSetGroup.Cloak,
    };

    [JsonPropertyName("// Slayers")]
    public string SlayersDoc { get; init; } = "CreatureTypeGroup name used as default slayer pool.";

    // Slayer mutator settings
    public string Slayers { get; set; } = nameof(CreatureTypeGroup.Popular);

    [JsonPropertyName("// SlayerPower")]
    public string SlayerPowerDoc { get; init; } = "Treasure tier → slayer power multiplier.";

    public Dictionary<int, float> SlayerPower { get; set; } = new()
    {
        [0] = .5f,
        [1] = 1f,
        [2] = 1.5f,
        [3] = 2f,
        [4] = 2.5f,
        [5] = 3f,
        [6] = 3.5f,
        [7] = 4f,
        [8] = 4.5f,
    };

    [JsonPropertyName("// ProcOnSpells")]
    public string ProcOnSpellsDoc { get; init; } = "SpellGroup name limiting which spells can proc on-hit effects.";

    // ProcOnHit / proc settings
    public string ProcOnSpells { get; set; } = nameof(SpellGroup.CloakOnly);
}

