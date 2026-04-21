namespace BetterSupportSkills;

public enum Features
{
    AlchemySkill,
    AlchemyEchoMessages,
    ArcaneLoreSkill,
    AssessCreatureSkill,
    CookingSkill,
    DeceptionSkill,
    DirtyFightingSkill,
    DualWieldSkill,
    FletchingSkill,
    HealingSkill,
    LeadershipSkill,
    LockpickSkill,
    LoyaltySkill,
    ManaConversionSkill,
    MissileDefenseSkill,
    RecklessnessSkill,
    ShieldSkill,
    SneakAttackSkill,
    TrophyDropsSkill,
}

public class Settings
{
    [JsonPropertyName("// FeatureToggles")]
    public string FeatureTogglesDoc { get; init; } = "Each Enable* flag turns one skill bonus patch group on or off — false = vanilla ACE for that skill.";

    [JsonPropertyName("// EnableAlchemy")]
    public string EnableAlchemyDoc { get; init; } = "Alchemy skill bonus — echoes potion effects and bonus potion drops.";
    public bool EnableAlchemy { get; set; } = false;

    [JsonPropertyName("// Alchemy")]
    public string AlchemySectionDoc { get; init; } = "Alchemy: potion echo interval and bonus loot settings.";
    public AlchemySettings Alchemy { get; set; } = new();

    [JsonPropertyName("// EnableArcaneLore")]
    public string EnableArcaneLoreDoc { get; init; } = "Arcane Lore skill bonus — chance to dodge spells completely.";
    public bool EnableArcaneLore { get; set; } = false;

    [JsonPropertyName("// ArcaneLore")]
    public string ArcaneLoreSectionDoc { get; init; } = "Arcane Lore: spell dodge chance based on skill.";
    public ArcaneLoreSettings ArcaneLore { get; set; } = new();

    [JsonPropertyName("// EnableAssessCreature")]
    public string EnableAssessCreatureDoc { get; init; } = "Assess Creature skill bonus — +DR vs all targets and extra trophy rolls.";
    public bool EnableAssessCreature { get; set; } = false;

    [JsonPropertyName("// EnableCooking")]
    public string EnableCookingDoc { get; init; } = "Cooking skill bonus — grants Legendary/Prodigal regeneration buffs.";
    public bool EnableCooking { get; set; } = true;

    [JsonPropertyName("// Cooking")]
    public string CookingSectionDoc { get; init; } = "Cooking skill bonus: spell IDs for regeneration buffs.";
    public CookingSettings Cooking { get; set; } = new();

    [JsonPropertyName("// EnableDeception")]
    public string EnableDeceptionDoc { get; init; } = "Deception skill bonus — placeholder for future extra effects.";
    public bool EnableDeception { get; set; } = false;

    [JsonPropertyName("// EnableDirtyFighting")]
    public string EnableDirtyFightingDoc { get; init; } = "Dirty Fighting skill bonus — stronger debuffs, longer duration, percentage-based bleed.";
    public bool EnableDirtyFighting { get; set; } = false;

    [JsonPropertyName("// DirtyFighting")]
    public string DirtyFightingSectionDoc { get; init; } = "Dirty Fighting: doubled values, 180s debuffs, percentage-based bleed.";
    public DirtyFightingSettings DirtyFighting { get; set; } = new();

    [JsonPropertyName("// EnableDualWield")]
    public string EnableDualWieldDoc { get; init; } = "Dual Wield skill bonus — placeholder for future extra effects.";
    public bool EnableDualWield { get; set; } = false;

    [JsonPropertyName("// EnableFletching")]
    public string EnableFletchingDoc { get; init; } = "Fletching skill bonus — placeholder for future extra effects.";
    public bool EnableFletching { get; set; } = false;

    [JsonPropertyName("// EnableHealing")]
    public string EnableHealingDoc { get; init; } = "Healing skill bonus — currently includes the Swiftmend HoT heal-over-time effect.";
    public bool EnableHealing { get; set; } = true;

    [JsonPropertyName("// EnableLeadership")]
    public string EnableLeadershipDoc { get; init; } = "Leadership skill bonus — placeholder for future extra effects.";
    public bool EnableLeadership { get; set; } = false;

    [JsonPropertyName("// EnableLockpick")]
    public string EnableLockpickDoc { get; init; } = "Lockpick skill bonus — placeholder for future extra effects.";
    public bool EnableLockpick { get; set; } = false;

    [JsonPropertyName("// EnableLoyalty")]
    public string EnableLoyaltyDoc { get; init; } = "Loyalty skill bonus — placeholder for future extra effects.";
    public bool EnableLoyalty { get; set; } = false;

    [JsonPropertyName("// EnableManaConversion")]
    public string EnableManaConversionDoc { get; init; } = "Mana Conversion skill bonus — adds spell cleave targets and equipment mana efficiency.";
    public bool EnableManaConversion { get; set; } = true;

    [JsonPropertyName("// ManaConversion")]
    public string ManaConversionSectionDoc { get; init; } = "Mana Conversion skill bonuses: CleaveTargets (extra spell targets when trained/specialized) and EquipmentManaEfficiency (bonus to ManaConversionMod on equipped items).";
    public ManaConversionSettings ManaConversion { get; set; } = new();

    [JsonPropertyName("// EnableMissileDefense")]
    public string EnableMissileDefenseDoc { get; init; } = "Missile Defense skill bonus — placeholder for future extra effects.";
    public bool EnableMissileDefense { get; set; } = false;

    [JsonPropertyName("// EnableRecklessness")]
    public string EnableRecklessnessDoc { get; init; } = "Recklessness skill bonus — placeholder for future extra effects.";
    public bool EnableRecklessness { get; set; } = false;

    [JsonPropertyName("// EnableShield")]
    public string EnableShieldDoc { get; init; } = "Shield skill bonus — thorns damage on evades/blocks when also trained in Dirty Fighting.";
    public bool EnableShield { get; set; } = false;

    [JsonPropertyName("// EnableSneakAttack")]
    public string EnableSneakAttackDoc { get; init; } = "Sneak Attack skill bonus — placeholder for future extra effects.";
    public bool EnableSneakAttack { get; set; } = false;

    [JsonPropertyName("// EnableTrophyDrops")]
    public string EnableTrophyDropsDoc { get; init; } = "Trophy drops bonus — extra loot rolls based on Assess Creature/Person skill.";
    public bool EnableTrophyDrops { get; set; } = false;

    [JsonPropertyName("// TrophyDrops")]
    public string TrophyDropsSectionDoc { get; init; } = "Trophy drops bonus: extra rolls based on Assess Creature/Person trained/specialized.";
    public TrophyDropsSettings TrophyDrops { get; set; } = new();

    [JsonPropertyName("// Replenish")]
    public string ReplenishSectionDoc { get; init; } = "Replenish: heal-over-time after using kits. Restores health, stamina, and mana over time based on Healing skill.";
    public ReplenishSettings Replenish { get; set; } = new();
}

public class ReplenishSettings
{
    [JsonPropertyName("// HotDurationSeconds")]
    public string HotDurationSecondsDoc { get; init; } = "Total duration for Replenish ticks (all 3 vitals).";
    public double HotDurationSeconds { get; set; } = 15.0;

    [JsonPropertyName("// HotTickSeconds")]
    public string HotTickSecondsDoc { get; init; } = "Seconds between each Replenish tick.";
    public double HotTickSeconds { get; set; } = 1.0;

    [JsonPropertyName("// BaseSkillPercentPerTick")]
    public string BaseSkillPercentPerTickDoc { get; init; } = "Fraction of Healing skill applied to all 3 vitals each tick.";
    public double BaseSkillPercentPerTick { get; set; } = 0.01;

    [JsonPropertyName("// SpecializedMultiplier")]
    public string SpecializedMultiplierDoc { get; init; } = "Multiplier applied to Replenish when Healing is specialized (3.0 = triple).";
    public double SpecializedMultiplier { get; set; } = 3.0;

    [JsonPropertyName("// EnableDebugMessages")]
    public string EnableDebugMessagesDoc { get; init; } = "Extra player/log output for Replenish diagnostics.";
    public bool EnableDebugMessages { get; set; } = false;
}

public class ManaConversionSettings
{
    [JsonPropertyName("// CleaveTargetsTrained")]
    public string CleaveTargetsTrainedDoc { get; init; } = "Additional spell targets when Mana Conversion is trained.";
    public int CleaveTargetsTrained { get; set; } = 1;

    [JsonPropertyName("// CleaveTargetsSpecialized")]
    public string CleaveTargetsSpecializedDoc { get; init; } = "Additional spell targets when Mana Conversion is specialized.";
    public int CleaveTargetsSpecialized { get; set; } = 2;

    [JsonPropertyName("// CleaveRange")]
    public string CleaveRangeDoc { get; init; } = "Range in meters to search for cleave targets.";
    public double CleaveRange { get; set; } = 15.0;

    [JsonPropertyName("// EquipmentManaEfficiencyTrained")]
    public string EquipmentManaEfficiencyTrainedDoc { get; init; } = "Bonus to ManaConversionMod on equipped items when trained (as decimal, e.g. 0.25 = 25%).";
    public double EquipmentManaEfficiencyTrained { get; set; } = 0.25;

    [JsonPropertyName("// EquipmentManaEfficiencySpecialized")]
    public string EquipmentManaEfficiencySpecializedDoc { get; init; } = "Bonus to ManaConversionMod on equipped items when specialized.";
    public double EquipmentManaEfficiencySpecialized { get; set; } = 0.50;
}

public class CookingSettings
{
    [JsonPropertyName("// LegendaryHealthSpell")]
    public string LegendaryHealthSpellDoc { get; init; } = "Spell ID for +60% Health Regen (Legendary Health Gain).";
    public int LegendaryHealthSpell { get; set; } = 6077;

    [JsonPropertyName("// LegendaryStaminaSpell")]
    public string LegendaryStaminaSpellDoc { get; init; } = "Spell ID for +60% Stamina Regen (Legendary Stamina Gain).";
    public int LegendaryStaminaSpell { get; set; } = 6076;

    [JsonPropertyName("// LegendaryManaSpell")]
    public string LegendaryManaSpellDoc { get; init; } = "Spell ID for +60% Mana Regen (Legendary Mana Gain).";
    public int LegendaryManaSpell { get; set; } = 6078;

    [JsonPropertyName("// ProdigalHealthSpell")]
    public string ProdigalHealthSpellDoc { get; init; } = "Spell ID for +1000% Health Regen (Prodigal Regeneration).";
    public int ProdigalHealthSpell { get; set; } = 3731;

    [JsonPropertyName("// ProdigalStaminaSpell")]
    public string ProdigalStaminaSpellDoc { get; init; } = "Spell ID for +1000% Stamina Regen (Prodigal Rejuvenation).";
    public int ProdigalStaminaSpell { get; set; } = 3732;

    [JsonPropertyName("// ProdigalManaSpell")]
    public string ProdigalManaSpellDoc { get; init; } = "Spell ID for +1000% Mana Regen (Prodigal Mana Renewal).";
    public int ProdigalManaSpell { get; set; } = 3749;
}

public class DirtyFightingSettings
{
    [JsonPropertyName("// DebuffDurationSeconds")]
    public string DebuffDurationSecondsDoc { get; init; } = "Duration for attack/defense/heal debuffs (180 = 3 minutes).";
    public int DebuffDurationSeconds { get; set; } = 180;

    [JsonPropertyName("// AttackDebuffTrained")]
    public int AttackDebuffTrained { get; set; } = -20;

    [JsonPropertyName("// AttackDebuffSpecialized")]
    public int AttackDebuffSpecialized { get; set; } = -40;

    [JsonPropertyName("// DefenseDebuffTrained")]
    public int DefenseDebuffTrained { get; set; } = -20;

    [JsonPropertyName("// DefenseDebuffSpecialized")]
    public int DefenseDebuffSpecialized { get; set; } = -40;

    [JsonPropertyName("// HealDebuffTrained")]
    public int HealDebuffTrained { get; set; } = -30;

    [JsonPropertyName("// HealDebuffSpecialized")]
    public int HealDebuffSpecialized { get; set; } = -60;

    [JsonPropertyName("// BleedPercentTrained")]
    public string BleedPercentTrainedDoc { get; init; } = "Bleed % per second: 1%, 2%, 3% (trained).";
    public double BleedPercentTrained { get; set; } = 0.01;

    [JsonPropertyName("// BleedPercentSpecialized")]
    public string BleedPercentSpecializedDoc { get; init; } = "Bleed % per second: 2%, 4%, 6% (specialized).";
    public double BleedPercentSpecialized { get; set; } = 0.02;
}

public class AlchemySettings
{
    [JsonPropertyName("// EchoIntervalTrained")]
    public string EchoIntervalTrainedDoc { get; init; } = "Seconds between potion effect echoes when trained.";
    public double EchoIntervalTrained { get; set; } = 15.0;

    [JsonPropertyName("// EchoIntervalSpecialized")]
    public string EchoIntervalSpecializedDoc { get; init; } = "Seconds between potion effect echoes when specialized.";
    public double EchoIntervalSpecialized { get; set; } = 10.0;

    [JsonPropertyName("// EchoDuration")]
    public string EchoDurationDoc { get; init; } = "Duration in seconds for echoed potion effects.";
    public double EchoDuration { get; set; } = 360.0;

    [JsonPropertyName("// PotionDropChance")]
    public string PotionDropChanceDoc { get; init; } = "Chance (0-1) to get bonus potion on kill when trained.";
    public double PotionDropChance { get; set; } = 0.20;

    [JsonPropertyName("// ExtraPotionRollsTrained")]
    public string ExtraPotionRollsTrainedDoc { get; init; } = "Extra loot rolls for potions when trained.";
    public int ExtraPotionRollsTrained { get; set; } = 2;

    [JsonPropertyName("// ExtraPotionRollsSpecialized")]
    public string ExtraPotionRollsSpecializedDoc { get; init; } = "Extra loot rolls for potions when specialized.";
    public int ExtraPotionRollsSpecialized { get; set; } = 3;

    [JsonPropertyName("// ShowEchoMessages")]
    public string ShowEchoMessagesDoc { get; init; } = "Show chat messages when potion effects echo.";
    public bool ShowEchoMessages { get; set; } = true;
}

public class ArcaneLoreSettings
{
    [JsonPropertyName("// SpellDodgePercentTrained")]
    public string SpellDodgePercentTrainedDoc { get; init; } = "Dodge chance = (Arcane Lore skill) * this value when trained (e.g., 0.05 = 5% of skill).";
    public double SpellDodgePercentTrained { get; set; } = 0.05;

    [JsonPropertyName("// SpellDodgePercentSpecialized")]
    public string SpellDodgePercentSpecializedDoc { get; init; } = "Dodge chance = (Arcane Lore skill) * this value when specialized (e.g., 0.10 = 10% of skill).";
    public double SpellDodgePercentSpecialized { get; set; } = 0.10;
}

public class TrophyDropsSettings
{
    [JsonPropertyName("// ExtraRollsTrained")]
    public string ExtraRollsTrainedDoc { get; init; } = "Extra loot rolls when Assess Creature or Person is trained.";
    public int ExtraRollsTrained { get; set; } = 1;

    [JsonPropertyName("// ExtraRollsSpecialized")]
    public string ExtraRollsSpecializedDoc { get; init; } = "Extra loot rolls when Assess Creature or Person is specialized.";
    public int ExtraRollsSpecialized { get; set; } = 2;

    [JsonPropertyName("// MaxExtraRolls")]
    public string MaxExtraRollsDoc { get; init; } = "Maximum extra loot rolls (capped to prevent exploitation).";
    public int MaxExtraRolls { get; set; } = 10;

    [JsonPropertyName("// BonusTreasureChance")]
    public string BonusTreasureChanceDoc { get; init; } = "Chance (0-1) to get bonus random treasure on top of trophy bonus.";
    public double BonusTreasureChance { get; set; } = 0.5;
}