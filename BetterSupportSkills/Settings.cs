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
    MagicWithoutMcSkill,
    MeleeLifeSpellSkill,
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
    public string EnableDualWieldDoc { get; init; } = "Dual Wield: +DR when two melee weapons equipped; merge power mod from both weapons (sum of bonuses over 1.0).";
    public bool EnableDualWield { get; set; } = false;

    [JsonPropertyName("// DualWield")]
    public string DualWieldSectionDoc { get; init; } = "Dual Wield: incoming damage reduction rating and power mod merge.";
    public DualWieldSettings DualWield { get; set; } = new();

    [JsonPropertyName("// EnableFletching")]
    public string EnableFletchingDoc { get; init; } = "Fletching skill bonus — placeholder for future extra effects.";
    public bool EnableFletching { get; set; } = false;

    [JsonPropertyName("// EnableHealing")]
    public string EnableHealingDoc { get; init; } = "Healing skill bonus — Recuperation heal-over-time after healing kits (see Recuperation object).";
    public bool EnableHealing { get; set; } = true;

    [JsonPropertyName("// EnableLeadership")]
    public string EnableLeadershipDoc { get; init; } = "Leadership: extra concurrent CombatPet summons (trained +1, specialized +2 vs base 1).";
    public bool EnableLeadership { get; set; } = false;

    [JsonPropertyName("// Leadership")]
    public string LeadershipSectionDoc { get; init; } = "Leadership: max CombatPets = 1 + ExtraSlotsTrained (trained) or ExtraSlotsSpecialized (specialized replaces trained).";
    public LeadershipSettings Leadership { get; set; } = new();

    [JsonPropertyName("// EnableLockpick")]
    public string EnableLockpickDoc { get; init; } = "Lockpick skill bonus — placeholder for future extra effects.";
    public bool EnableLockpick { get; set; } = false;

    [JsonPropertyName("// EnableLoyalty")]
    public string EnableLoyaltyDoc { get; init; } = "Loyalty: pet Corruption autocasts (spec); healing aura for self and nearby fellows (trained+).";
    public bool EnableLoyalty { get; set; } = false;

    [JsonPropertyName("// Loyalty")]
    public string LoyaltySectionDoc { get; init; } = "Loyalty: Corruption spell IDs, Summoning tiers, cooldown, healing aura range and percents.";
    public LoyaltySettings Loyalty { get; set; } = new();

    [JsonPropertyName("// EnableManaConversion")]
    public string EnableManaConversionDoc { get; init; } = "Mana Conversion skill bonus — adds spell cleave targets and equipment mana efficiency.";
    public bool EnableManaConversion { get; set; } = true;

    [JsonPropertyName("// ManaConversion")]
    public string ManaConversionSectionDoc { get; init; } = "Mana Conversion skill bonuses: CleaveTargets (extra spell targets when trained/specialized) and EquipmentManaEfficiency (bonus to ManaConversionMod on equipped items).";
    public ManaConversionSettings ManaConversion { get; set; } = new();

    [JsonPropertyName("// EnableMagicWithoutManaConversion")]
    public string EnableMagicWithoutManaConversionDoc { get; init; } = "When Mana Conversion is not trained: war/void harmful spells echo; life harmful triples; CE/IE weave buffs on login.";
    public bool EnableMagicWithoutManaConversion { get; set; } = false;

    [JsonPropertyName("// EnableMeleeLifeSpellProc")]
    public string EnableMeleeLifeSpellProcDoc { get; init; } = "When Life Magic is trained: melee hits can proc a configurable Life spell on a cooldown.";
    public bool EnableMeleeLifeSpellProc { get; set; } = false;

    [JsonPropertyName("// MagicWithoutManaConversion")]
    public string MagicWithoutManaConversionSectionDoc { get; init; } = "Echo/triple spell settings and weave spell IDs for CE/IE.";
    public MagicWithoutManaConversionSettings MagicWithoutManaConversion { get; set; } = new();

    [JsonPropertyName("// MeleeLifeSpellProc")]
    public string MeleeLifeSpellProcSectionDoc { get; init; } = "Melee → Life spell proc: spell id, chance, cooldown (SpellId 0 = off).";
    public MeleeLifeSpellProcSettings MeleeLifeSpellProc { get; set; } = new();

    [JsonPropertyName("// EnableMissileDefense")]
    public string EnableMissileDefenseDoc { get; init; } = "Missile Defense skill bonus — placeholder for future extra effects.";
    public bool EnableMissileDefense { get; set; } = false;

    [JsonPropertyName("// EnableRecklessness")]
    public string EnableRecklessnessDoc { get; init; } = "Recklessness: weapon attacks cleave to extra nearby targets (melee/missile only).";
    public bool EnableRecklessness { get; set; } = false;

    [JsonPropertyName("// RecklessnessCleave")]
    public string RecklessnessCleaveSectionDoc { get; init; } = "Physical cleave: extra targets, range, damage fraction, cooldown.";
    public RecklessnessCleaveSettings RecklessnessCleave { get; set; } = new();

    [JsonPropertyName("// EnableShield")]
    public string EnableShieldDoc { get; init; } = "Shield skill bonus — thorns damage on evades/blocks when also trained in Dirty Fighting.";
    public bool EnableShield { get; set; } = false;

    [JsonPropertyName("// EnableSneakAttack")]
    public string EnableSneakAttackDoc { get; init; } = "Sneak Attack: extra follow-up damage on weapon hits; extra harmful spell instances.";
    public bool EnableSneakAttack { get; set; } = false;

    [JsonPropertyName("// SneakAttack")]
    public string SneakAttackSectionDoc { get; init; } = "Sneak Attack: follow-up fraction, spell echoes, PvP toggle.";
    public SneakAttackSettings SneakAttack { get; set; } = new();

    [JsonPropertyName("// EnableTrophyDrops")]
    public string EnableTrophyDropsDoc { get; init; } = "Trophy drops bonus — extra loot rolls based on Assess Creature/Person skill.";
    public bool EnableTrophyDrops { get; set; } = false;

    [JsonPropertyName("// TrophyDrops")]
    public string TrophyDropsSectionDoc { get; init; } = "Trophy drops bonus: extra rolls based on Assess Creature/Person trained/specialized.";
    public TrophyDropsSettings TrophyDrops { get; set; } = new();

    [JsonPropertyName("// Recuperation")]
    public string RecuperationSectionDoc { get; init; } = "Recuperation: heal-over-time after using kits; per-kit vital routing and timing. Inside Recuperation: // lines first, then values (same order).";
    public RecuperationSettings Recuperation { get; set; } = new();
}

public class RecuperationSettings
{
    [JsonPropertyName("// HotDurationSeconds")]
    public string HotDurationSecondsDoc { get; init; } = "Total HoT duration in seconds after using a kit.";
    public double HotDurationSeconds { get; set; } = 15.0;

    [JsonPropertyName("// HotTickSeconds")]
    public string HotTickSecondsDoc { get; init; } = "Seconds between each HoT vital tick.";
    public double HotTickSeconds { get; set; } = 1.0;

    [JsonPropertyName("// BaseSkillPercentPerTick")]
    public string BaseSkillPercentPerTickDoc { get; init; } = "Fraction of Healing skill applied to vitals each tick (before specialization multiplier).";
    public double BaseSkillPercentPerTick { get; set; } = 0.025;

    [JsonPropertyName("// SpecializedMultiplier")]
    public string SpecializedMultiplierDoc { get; init; } = "Multiplier applied to tick healing when Healing is specialized.";
    public double SpecializedMultiplier { get; set; } = 2.0;

    [JsonPropertyName("// EnableHealthKits")]
    public string EnableHealthKitsDoc { get; init; } = "Apply Recuperation HoT to health kit items (name heuristics).";
    public bool EnableHealthKits { get; set; } = true;

    [JsonPropertyName("// EnableStaminaKits")]
    public string EnableStaminaKitsDoc { get; init; } = "Apply Recuperation HoT to stamina kits.";
    public bool EnableStaminaKits { get; set; } = true;

    [JsonPropertyName("// EnableManaKits")]
    public string EnableManaKitsDoc { get; init; } = "Apply Recuperation HoT to mana kits.";
    public bool EnableManaKits { get; set; } = true;

    [JsonPropertyName("// EnableDebugMessages")]
    public string EnableDebugMessagesDoc { get; init; } = "Extra player/log output for Recuperation diagnostics.";
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

public class DualWieldSettings
{
    [JsonPropertyName("// DamageResistanceTrained")]
    public string DamageResistanceTrainedDoc { get; init; } = "Flat DR rating used to reduce incoming damage when Dual Wield is trained and two melee weapons are equipped.";
    public int DamageResistanceTrained { get; set; } = 10;

    [JsonPropertyName("// DamageResistanceSpecialized")]
    public string DamageResistanceSpecializedDoc { get; init; } = "Flat DR rating when Dual Wield is specialized.";
    public int DamageResistanceSpecialized { get; set; } = 20;
}

public class RecklessnessCleaveSettings
{
    [JsonPropertyName("// CleaveTargetsTrained")]
    public string CleaveTargetsTrainedDoc { get; init; } = "Extra creatures hit by cleave splash when Recklessness is trained.";
    public int CleaveTargetsTrained { get; set; } = 1;

    [JsonPropertyName("// CleaveTargetsSpecialized")]
    public string CleaveTargetsSpecializedDoc { get; init; } = "Extra cleave targets when specialized.";
    public int CleaveTargetsSpecialized { get; set; } = 2;

    [JsonPropertyName("// CleaveRangeMeters")]
    public string CleaveRangeMetersDoc { get; init; } = "Radius from primary target to search for cleave victims.";
    public double CleaveRangeMeters { get; set; } = 15.0;

    [JsonPropertyName("// SplashDamageFraction")]
    public string SplashDamageFractionDoc { get; init; } = "Fraction of primary hit damage applied to each cleave target (0-1).";
    public double SplashDamageFraction { get; set; } = 0.65;

    [JsonPropertyName("// CooldownSeconds")]
    public string CooldownSecondsDoc { get; init; } = "Minimum seconds between recklessness cleave splashes per player.";
    public double CooldownSeconds { get; set; } = 0.35;

    [JsonPropertyName("// MaxTotalExtraTargetsCap")]
    public string MaxTotalExtraTargetsCapDoc { get; init; } = "Hard cap on extra cleave targets when stacking with other systems (0 = no cap).";
    public int MaxTotalExtraTargetsCap { get; set; } = 6;

    [JsonPropertyName("// SplashPlayerVictims")]
    public string SplashPlayerVictimsDoc { get; init; } = "If true, cleave can hit other players.";
    public bool SplashPlayerVictims { get; set; } = false;
}

public class SneakAttackSettings
{
    [JsonPropertyName("// ExtraWeaponFollowUpsTrained")]
    public string ExtraWeaponFollowUpsTrainedDoc { get; init; } = "Extra follow-up damage ticks on weapon hits when trained.";
    public int ExtraWeaponFollowUpsTrained { get; set; } = 1;

    [JsonPropertyName("// ExtraWeaponFollowUpsSpecialized")]
    public string ExtraWeaponFollowUpsSpecializedDoc { get; init; } = "Extra follow-up ticks when specialized.";
    public int ExtraWeaponFollowUpsSpecialized { get; set; } = 2;

    [JsonPropertyName("// FollowUpDamageFraction")]
    public string FollowUpDamageFractionDoc { get; init; } = "Each follow-up deals this fraction of the primary hit pre-mitigation damage.";
    public double FollowUpDamageFraction { get; set; } = 0.32;

    [JsonPropertyName("// ExtraHarmfulSpellCastsTrained")]
    public string ExtraHarmfulSpellCastsTrainedDoc { get; init; } = "Additional harmful spell resolutions when Sneak Attack trained (after cast).";
    public int ExtraHarmfulSpellCastsTrained { get; set; } = 1;

    [JsonPropertyName("// ExtraHarmfulSpellCastsSpecialized")]
    public string ExtraHarmfulSpellCastsSpecializedDoc { get; init; } = "Additional harmful spell resolutions when specialized.";
    public int ExtraHarmfulSpellCastsSpecialized { get; set; } = 2;

    [JsonPropertyName("// AllowPlayerSpellVictims")]
    public string AllowPlayerSpellVictimsDoc { get; init; } = "Allow sneak spell echoes to affect PvP targets.";
    public bool AllowPlayerSpellVictims { get; set; } = false;

    [JsonPropertyName("// AllowPlayerWeaponVictims")]
    public string AllowPlayerWeaponVictimsDoc { get; init; } = "Allow sneak weapon follow-ups to damage players.";
    public bool AllowPlayerWeaponVictims { get; set; } = false;
}

public class MagicWithoutManaConversionSettings
{
    [JsonPropertyName("// EchoWarVoidHarmful")]
    public string EchoWarVoidHarmfulDoc { get; init; } = "Duplicate harmful War/Void casts once when MC is untrained.";
    public bool EchoWarVoidHarmful { get; set; } = true;

    [JsonPropertyName("// TripleLifeHarmful")]
    public string TripleLifeHarmfulDoc { get; init; } = "Fire two extra harmful Life casts (triple total) when MC untrained.";
    public bool TripleLifeHarmful { get; set; } = true;

    [JsonPropertyName("// CreatureEnchantmentWeaveSpellId")]
    public string CreatureEnchantmentWeaveSpellIdDoc { get; init; } = "CustomSpells id granting +50 CE when MC untrained (single stack via WeaveStacksForPlus50).";
    public int CreatureEnchantmentWeaveSpellId { get; set; } = 90000017;

    [JsonPropertyName("// ItemEnchantmentWeaveSpellId")]
    public string ItemEnchantmentWeaveSpellIdDoc { get; init; } = "CustomSpells id granting +50 IE when MC untrained.";
    public int ItemEnchantmentWeaveSpellId { get; set; } = 90000018;

    [JsonPropertyName("// WeaveStacksForPlus50")]
    public string WeaveStacksForPlus50Doc { get; init; } = "How many weave casts to apply on login (use 1 with CustomSpells +50 templates).";
    public int WeaveStacksForPlus50 { get; set; } = 1;
}

public class MeleeLifeSpellProcSettings
{
    [JsonPropertyName("// SpellId")]
    public string SpellIdDoc { get; init; } = "ACE spell id to cast on proc (0 = disabled). Must be a valid harmful or debuff Life spell for your dat.";
    public uint SpellId { get; set; }

    [JsonPropertyName("// ProcChance")]
    public string ProcChanceDoc { get; init; } = "Chance per qualifying melee hit (0–1).";
    public float ProcChance { get; set; } = 0.12f;

    [JsonPropertyName("// CooldownSeconds")]
    public string CooldownSecondsDoc { get; init; } = "Minimum seconds between procs per character.";
    public double CooldownSeconds { get; set; } = 4.0;
}

public class LeadershipSettings
{
    [JsonPropertyName("// ExtraCombatPetSlotsTrained")]
    public string ExtraCombatPetSlotsTrainedDoc { get; init; } = "Extra concurrent CombatPets when Leadership is trained (vanilla base is 1).";
    public int ExtraCombatPetSlotsTrained { get; set; } = 1;

    [JsonPropertyName("// ExtraCombatPetSlotsSpecialized")]
    public string ExtraCombatPetSlotsSpecializedDoc { get; init; } = "Extra concurrent CombatPets when Leadership is specialized (replaces trained bonus).";
    public int ExtraCombatPetSlotsSpecialized { get; set; } = 2;
}

public class LoyaltySettings
{
    [JsonPropertyName("// CorruptionSpellIds")]
    public string CorruptionSpellIdsDoc { get; init; } = "Corruption line spell IDs from lowest to highest tier (e.g. I, II, …). Empty = disabled.";
    public uint[] CorruptionSpellIds { get; set; } = Array.Empty<uint>();

    [JsonPropertyName("// SummoningSkillPerTier")]
    public string SummoningSkillPerTierDoc { get; init; } = "Owner Summoning skill (Current) per tier step; tier index = min(count-1, skill / this).";
    public int SummoningSkillPerTier { get; set; } = 50;

    [JsonPropertyName("// CooldownSeconds")]
    public string CooldownSecondsDoc { get; init; } = "Minimum seconds between Corruption autocasts per pet.";
    public double CooldownSeconds { get; set; } = 4.0;

    [JsonPropertyName("// EnableHealingAura")]
    public string EnableHealingAuraDoc { get; init; } = "When true, trained+ Loyalty emits a passive heal to self and fellowship allies in range.";
    public bool EnableHealingAura { get; set; } = true;

    [JsonPropertyName("// AuraRange")]
    public string AuraRangeDoc { get; init; } = "Radius in meters for healing aura (default 15 yards ≈ 13.716 m).";
    public double AuraRange { get; set; } = 13.716;

    [JsonPropertyName("// PercentMaxHealthPerSecondTrained")]
    public string PercentMaxHealthPerSecondTrainedDoc { get; init; } = "Fraction of each recipient max Health (buffed) healed per second when Loyalty is trained.";
    public double PercentMaxHealthPerSecondTrained { get; set; } = 0.005;

    [JsonPropertyName("// PercentMaxHealthPerSecondSpecialized")]
    public string PercentMaxHealthPerSecondSpecializedDoc { get; init; } = "Fraction of max Health per second when Loyalty is specialized (typically 2× trained).";
    public double PercentMaxHealthPerSecondSpecialized { get; set; } = 0.01;
}