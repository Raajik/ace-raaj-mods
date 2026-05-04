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
    SalvageSkill,
    ShieldSkill,
    SneakAttackSkill,
    TrophyDropsSkill,
    TinkeringLootGating,
    SummoningClasses,
    DruidPetThorns,
    CombatClasses,
}

public class Settings
{
    [JsonPropertyName("// FeatureToggles")]
    public string FeatureTogglesDoc { get; init; } = "Each Enable* flag turns one skill bonus patch group on or off — false = vanilla ACE for that skill.";

    [JsonPropertyName("// EnableAutoCastReagentCosts")]
    public string EnableAutoCastReagentCostsDoc { get; init; } = "When true, hybrid class auto-cast spells consume reagents and mana like normal spell casts. When false, they are free procs.";
    public bool EnableAutoCastReagentCosts { get; set; } = true;

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
    public string EnableLockpickDoc { get; init; } = "Lockpick skill bonus — banked Lockpick Durability, auto-unlock via banked charges, Limitless Lockpick passive regen. LeyLineLedger must also have EnableLockpickAutoBank=true.";
    public bool EnableLockpick { get; set; } = true;

    [JsonPropertyName("// Lockpick")]
    public string LockpickSectionDoc { get; init; } = "Lockpick skill settings: skill requirement, Limitless regen rate and interval.";
    public LockpickSettings Lockpick { get; set; } = new();

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
    public string EnableMissileDefenseDoc { get; init; } = "Missile Defense skill bonus — chance to completely dodge incoming spell damage based on buffed skill (10% trained / 15% spec).";
    public bool EnableMissileDefense { get; set; } = false;

    [JsonPropertyName("// MissileDefense")]
    public string MissileDefenseSectionDoc { get; init; } = "Missile Defense: spell dodge chance and cap.";
    public MissileDefenseSettings MissileDefense { get; set; } = new();

[JsonPropertyName("// EnableRecklessness")]
    public string EnableRecklessnessDoc { get; init; } = "Recklessness: weapon attacks cleave to extra nearby targets (melee/missile only).";
    public bool EnableRecklessness { get; set; } = false;

    [JsonPropertyName("// RecklessnessCleave")]
    public string RecklessnessCleaveSectionDoc { get; init; } = "Physical cleave: extra targets, range, damage fraction, cooldown.";
    public RecklessnessCleaveSettings Recklessness { get; set; } = new();

    [JsonPropertyName("// EnableSalvage")]
    public string EnableSalvageDoc { get; init; } = "Salvage skill bonus — auto-deposit to LeyLineLedger bank on item pickup: 50% of intended units if Salvaging is trained, 100% if specialized. Requires LeyLineLedger SalvageBank.Enabled.";
    public bool EnableSalvage { get; set; } = false;

    [JsonPropertyName("// Salvage")]
    public string SalvageSectionDoc { get; init; } = "Salvage skill bonus: auto-deposit settings.";
    public SalvageSettings Salvage { get; set; } = new();

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

    [JsonPropertyName("// QuestTrophyDrops")]
    public string QuestTrophyDropsSectionDoc { get; init; } = "High-value quest item bonus drops with daily turn-in XP caps.";
    public QuestTrophyDropsSettings QuestTrophyDrops { get; set; } = new();

    [JsonPropertyName("// EnableTinkeringLootGating")]
    public string EnableTinkeringLootGatingDoc { get; init; } = "Tinkering loot gating — only characters with any tinkering skill trained/specialized can generate leveled items from loot. Matching skill boosts max level.";
    public bool EnableTinkeringLootGating { get; set; } = false;

    [JsonPropertyName("// TinkeringLootGating")]
    public string TinkeringLootGatingSectionDoc { get; init; } = "Tinkering loot gating: trained +10 max level, specialized +20 max level for matching item type.";
    public TinkeringLootGatingSettings TinkeringLootGating { get; set; } = new();

    [JsonPropertyName("// EnableChaosTinkerAchievement")]
    public string EnableChaosTinkerAchievementDoc { get; init; } = "When true, failing a tinker while having tinkering trained unlocks the /chaostinker command.";
    public bool EnableChaosTinkerAchievement { get; set; } = true;

    [JsonPropertyName("// ChaosTinker")]
    public string ChaosTinkerSectionDoc { get; init; } = "Chaos Tinker: max chaos failures per item, increment NumTimesTinkered on failure.";
    public ChaosTinkerSettings ChaosTinker { get; set; } = new();

    [JsonPropertyName("// EnableSummoningClasses")]
    public string EnableSummoningClassesDoc { get; init; } = "Summoning classes — auto-summon when Spec Summoning + secondary magic spec; pulses on your damage, harmful spells vs creatures, or your CombatPet's damage (3s gate).";
    public bool EnableSummoningClasses { get; set; } = true;

    [JsonPropertyName("// SummoningClasses")]
    public string SummoningClassesSectionDoc { get; init; } = "Druid (Life), Elementalist (War), Necromancer (Void), Enchanter (Creature Enchantment), Artificer (Item Enchantment): per-class caps, device rules, pet spell gates. Auto-summon also credits pet-dealt damage toward the owner pulse.";
    public SummoningClassesSettings SummoningClasses { get; set; } = new();

    [JsonPropertyName("// EnableDruidPetThorns")]
    public string EnableDruidPetThornsDoc { get; init; } = "Druid pet thorns — when a Druid (Spec Summoning + Life Magic) has specialized Shield + trained Dirty Fighting, their pets reflect thorns damage when hit and deal AoE thorns damage on attack.";
    public bool EnableDruidPetThorns { get; set; } = true;

    [JsonPropertyName("// DruidPetThorns")]
    public string DruidPetThornsSectionDoc { get; init; } = "Druid pet thorns: AoE radius, damage multiplier, max targets.";
    public DruidPetThornsSettings DruidPetThorns { get; set; } = new();

    [JsonPropertyName("// EnableCombatClasses")]
    public string EnableCombatClassesDoc { get; init; } = "Combat classes — Rogue, Berserker, Crusader unlock via achievements and grant combat bonuses.";
    public bool EnableCombatClasses { get; set; } = true;

    [JsonPropertyName("// CombatClasses")]
    public string CombatClassesSectionDoc { get; init; } = "Combat class bonuses: Rogue bleed, Berserker life steal, Crusader heal/crit/thorns.";
    public CombatClassesSettings CombatClasses { get; set; } = new();

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
    [JsonPropertyName("// EchoSpellCasts")]
    public string EchoSpellCastsDoc { get; init; } = "When true, trained Arcane Lore gives a chance for harmful spells to echo (cast again) on the same target.";
    public bool EchoSpellCasts { get; set; } = true;

    [JsonPropertyName("// EchoChancePercent")]
    public string EchoChancePercentDoc { get; init; } = "Chance to echo = buffed Arcane Lore skill * this percent. Example: 400 skill * 0.10 = 40% echo chance.";
    public double EchoChancePercent { get; set; } = 0.10;

    [JsonPropertyName("// EchoMaxChain")]
    public string EchoMaxChainDoc { get; init; } = "Maximum number of times an echo can chain off itself. 10 = up to 10 consecutive echoes.";
    public int EchoMaxChain { get; set; } = 10;

    [JsonPropertyName("// EchoDebuffSpells")]
    public string EchoDebuffSpellsDoc { get; init; } = "When true, Creature Enchantment debuffs also cast Imperil + Fester on the target.";
    public bool EchoDebuffSpells { get; set; } = true;

    [JsonPropertyName("// EchoImperilSpellId")]
    public string EchoImperilSpellIdDoc { get; init; } = "Spell ID for Imperil cast during debuff echo (0 = disabled).";
    public int EchoImperilSpellId { get; set; } = 0;

    [JsonPropertyName("// EchoFesterSpellId")]
    public string EchoFesterSpellIdDoc { get; init; } = "Spell ID for Fester cast during debuff echo (0 = disabled).";
    public int EchoFesterSpellId { get; set; } = 0;

    [JsonPropertyName("// EnableAdaptation")]
    public string EnableAdaptationDoc { get; init; } = "When true, taking magic damage grants temporary damage reduction vs that element based on Arcane Lore skill.";
    public bool EnableAdaptation { get; set; } = true;

    [JsonPropertyName("// AdaptationReductionPerSkill")]
    public string AdaptationReductionPerSkillDoc { get; init; } = "Damage reduction percent = buffed Arcane Lore skill * this value. Example: 400 skill * 0.10 = 40% reduction.";
    public double AdaptationReductionPerSkill { get; set; } = 0.10;

    [JsonPropertyName("// AdaptationDurationSeconds")]
    public string AdaptationDurationSecondsDoc { get; init; } = "How long the adaptation buff lasts (refreshes on same-element hit).";
    public int AdaptationDurationSeconds { get; set; } = 60;

    [JsonPropertyName("// AdaptationMaxReduction")]
    public double AdaptationMaxReduction { get; set; } = 0.99;
}

public class MissileDefenseSettings
{
    [JsonPropertyName("// DodgeChanceTrainedPercent")]
    public string DodgeChanceTrainedPercentDoc { get; init; } = "Spell dodge chance = buffed Missile Defense skill * this percent when trained.";
    public double DodgeChanceTrainedPercent { get; set; } = 0.10;

    [JsonPropertyName("// DodgeChanceSpecPercent")]
    public string DodgeChanceSpecPercentDoc { get; init; } = "Spell dodge chance = buffed Missile Defense skill * this percent when specialized.";
    public double DodgeChanceSpecPercent { get; set; } = 0.15;

    [JsonPropertyName("// DodgeChanceCap")]
    public string DodgeChanceCapDoc { get; init; } = "Maximum spell dodge chance regardless of skill (0.75 = 75%).";
    public double DodgeChanceCap { get; set; } = 0.75;
}

public class TrophyDropsSettings
{
    [JsonPropertyName("// ExtraRollsTrained")]
    public string ExtraRollsTrainedDoc { get; init; } = "DEPRECATED — no longer used. Extra rolls are now calculated from buffed Assess Creature skill / 150.";
    public int ExtraRollsTrained { get; set; } = 3;

    [JsonPropertyName("// ExtraRollsSpecialized")]
    public string ExtraRollsSpecializedDoc { get; init; } = "DEPRECATED — no longer used. Extra rolls are now calculated from buffed Assess Creature skill / 150.";
    public int ExtraRollsSpecialized { get; set; } = 5;

    [JsonPropertyName("// MaxExtraRolls")]
    public string MaxExtraRollsDoc { get; init; } = "Maximum extra loot rolls (capped to prevent exploitation). With skill/150, a value of 3 means 450+ skill for max rolls.";
    public int MaxExtraRolls { get; set; } = 3;

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

public class LockpickSettings
{
    [JsonPropertyName("// RequireLockpickSkill")]
    public string RequireLockpickSkillDoc { get; init; } = "When true, only characters with Lockpick trained or specialized can use banked durability.";
    public bool RequireLockpickSkill { get; set; } = true;

    [JsonPropertyName("// LimitlessRegenEnabled")]
    public string LimitlessRegenEnabledDoc { get; init; } = "When true, characters who banked a Limitless Lockpick (WCID 30253) receive passive durability regen.";
    public bool LimitlessRegenEnabled { get; set; } = true;

    [JsonPropertyName("// LimitlessRegenIntervalSeconds")]
    public string LimitlessRegenIntervalSecondsDoc { get; init; } = "Seconds between passive regen grants for Limitless Lockpick holders (default 21600 = 6 hours).";
    public long LimitlessRegenIntervalSeconds { get; set; } = 21600;

    [JsonPropertyName("// LimitlessRegenChargesPerInterval")]
    public string LimitlessRegenChargesPerIntervalDoc { get; init; } = "Base Lockpick Durability granted per regen tick (multiplied by stack count). Default 600 = 2400/day.";
    public long LimitlessRegenChargesPerInterval { get; set; } = 600;
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
    public string EnableHealingAuraDoc { get; init; } = "When true, trained+ Loyalty emits a passive flat heal to all players in the 9-landblock grid.";
    public bool EnableHealingAura { get; set; } = true;

    [JsonPropertyName("// FlatHealPerSecondTrained")]
    public string FlatHealPerSecondTrainedDoc { get; init; } = "Flat HP healed per second when Loyalty is trained.";
    public int FlatHealPerSecondTrained { get; set; } = 1;

    [JsonPropertyName("// FlatHealPerSecondSpec")]
    public string FlatHealPerSecondSpecDoc { get; init; } = "Flat HP healed per second when Loyalty is specialized.";
    public int FlatHealPerSecondSpec { get; set; } = 2;

    [JsonPropertyName("// EnableXpBuff")]
    public string EnableXpBuffDoc { get; init; } = "When true, being near other players grants an XP/luminance bonus.";
    public bool EnableXpBuff { get; set; } = true;

    [JsonPropertyName("// XpBuffBasePercent")]
    public string XpBuffBasePercentDoc { get; init; } = "Base XP/lum bonus percent for having 1+ other players nearby.";
    public double XpBuffBasePercent { get; set; } = 0.05;

    [JsonPropertyName("// XpBuffPerPlayerPercent")]
    public string XpBuffPerPlayerPercentDoc { get; init; } = "Additional XP/lum bonus percent per extra player nearby.";
    public double XpBuffPerPlayerPercent { get; set; } = 0.01;

    [JsonPropertyName("// XpBuffMaxPercent")]
    public string XpBuffMaxPercentDoc { get; init; } = "Maximum total XP/lum bonus percent.";
    public double XpBuffMaxPercent { get; set; } = 0.25;

    [JsonPropertyName("// ShowRangeMessage")]
    public string ShowRangeMessageDoc { get; init; } = "Show a message when entering range of other players with the loyalty buff.";
    public bool ShowRangeMessage { get; set; } = true;

    [JsonPropertyName("// MessageCooldownSeconds")]
    public string MessageCooldownSecondsDoc { get; init; } = "Minimum seconds between range messages per player.";
    public double MessageCooldownSeconds { get; set; } = 60.0;
}

public class SalvageSettings
{
    [JsonPropertyName("// TrainedPercent")]
    public string TrainedPercentDoc { get; init; } = "DEPRECATED — Auto-salvage uses fixed 50% trained / 100% specialized of intended units. Kept for JSON compatibility.";
    public double TrainedPercent { get; set; } = 1.0;

    [JsonPropertyName("// SpecializedPercent")]
    public string SpecializedPercentDoc { get; init; } = "DEPRECATED — see TrainedPercent. Kept for JSON compatibility.";
    public double SpecializedPercent { get; set; } = 1.0;

    [JsonPropertyName("// UnitsPerItem")]
    public string UnitsPerItemDoc { get; init; } = "Units banked per salvage item when no workmanship/structure found.";
    public int UnitsPerItem { get; set; } = 1;

    [JsonPropertyName("// MaterialBankPropertyBase")]
    public string MaterialBankPropertyBaseDoc { get; init; } = "PropertyInt64 base ID for material bank deposits. Must match LeyLineLedger SalvageBank.FirstMaterialBankPropertyId (default 40201).";
    public int MaterialBankPropertyBase { get; set; } = 40201;

    [JsonPropertyName("// DefaultAutoSalvageEnabled")]
    public string DefaultAutoSalvageEnabledDoc { get; init; } = "When no explicit per-character toggle is stored yet, AutoSalvage is on if true (default). /autoloot salvage and /autosalvage still set explicit off/on.";
    public bool DefaultAutoSalvageEnabled { get; set; } = true;
}

public class TinkeringLootGatingSettings
{
    [JsonPropertyName("// MaxLevelBonusTrained")]
    public string MaxLevelBonusTrainedDoc { get; init; } = "Bonus to item max level when the matching tinkering skill is trained.";
    public int MaxLevelBonusTrained { get; set; } = 10;

    [JsonPropertyName("// MaxLevelBonusSpecialized")]
    public string MaxLevelBonusSpecializedDoc { get; init; } = "Bonus to item max level when the matching tinkering skill is specialized.";
    public int MaxLevelBonusSpecialized { get; set; } = 20;
}

public class CombatClassesSettings
{
    [JsonPropertyName("// Rogue")]
    public string RogueSectionDoc { get; init; } = "Rogue bonuses: bleed on every melee hit, amplified Dirty Fighting debuffs.";
    public RogueSettings Rogue { get; set; } = new();

    [JsonPropertyName("// Berserker")]
    public string BerserkerSectionDoc { get; init; } = "Berserker bonuses: life steal on melee hits.";
    public BerserkerSettings Berserker { get; set; } = new();

    [JsonPropertyName("// Crusader")]
    public string CrusaderSectionDoc { get; init; } = "Crusader bonuses: passive self-heal, crit damage bonus, enhanced shield thorns.";
    public CrusaderSettings Crusader { get; set; } = new();

    [JsonPropertyName("// Windwalker")]
    public string WindwalkerSectionDoc { get; init; } = "Windwalker bonuses: melee attacks launch elemental streak spells at nearby enemies.";
    public WindwalkerSettings Windwalker { get; set; } = new();

    [JsonPropertyName("// Battlemage")]
    public string BattlemageSectionDoc { get; init; } = "Battlemage bonuses: melee attacks launch elemental arc spells at hit targets.";
    public BattlemageSettings Battlemage { get; set; } = new();

    [JsonPropertyName("// DeathKnight")]
    public string DeathKnightSectionDoc { get; init; } = "Death Knight bonuses: nether spells on melee hits, damage aura, echo.";
    public DeathKnightSettings DeathKnight { get; set; } = new();

    [JsonPropertyName("// Bloodmage")]
    public string BloodmageSectionDoc { get; init; } = "Bloodmage bonuses: hecatomb echoes on melee hit, drain spells become AoE, life-drain aura.";
    public BloodmageSettings Bloodmage { get; set; } = new();

    [JsonPropertyName("// Healer")]
    public string HealerSectionDoc { get; init; } = "Healer bonuses: AoE healing aura, Smite melee proc. Requires spec Healing + spec Life Magic.";
    public HealerSettings Healer { get; set; } = new();

    [JsonPropertyName("// Adventurer")]
    public string AdventurerSectionDoc { get; init; } = "Adventurer bonuses: +50 all attributes/skills, +20% vitals, +10 resistances, +2 burden limit. Requires no magic trained (except Mana Conversion).";
    public AdventurerSettings Adventurer { get; set; } = new();
}

public class RogueSettings
{
    [JsonPropertyName("// BleedPercentPerHit")]
    public string BleedPercentPerHitDoc { get; init; } = "Percent of target max health bled per tick on every melee hit (stacks in 3 tiers).";
    public double BleedPercentPerHit { get; set; } = 0.005;

    [JsonPropertyName("// BleedTicks")]
    public string BleedTicksDoc { get; init; } = "Number of bleed ticks per application.";
    public int BleedTicks { get; set; } = 10;

    [JsonPropertyName("// BleedIntervalSeconds")]
    public string BleedIntervalSecondsDoc { get; init; } = "Seconds between bleed ticks.";
    public double BleedIntervalSeconds { get; set; } = 1.0;

    [JsonPropertyName("// DebuffMultiplier")]
    public string DebuffMultiplierDoc { get; init; } = "Multiplier applied to Dirty Fighting debuff spell potency when Rogue class is active. Requires CustomSpells.";
    public double DebuffMultiplier { get; set; } = 2.0;
}

public class BerserkerSettings
{
    [JsonPropertyName("// LifeStealPercent")]
    public string LifeStealPercentDoc { get; init; } = "Percent of melee damage dealt that heals the Berserker.";
    public double LifeStealPercent { get; set; } = 0.08;

    [JsonPropertyName("// LifeStealMaxPerHit")]
    public string LifeStealMaxPerHitDoc { get; init; } = "Maximum health drained per hit.";
    public int LifeStealMaxPerHit { get; set; } = 50;
}

public class CrusaderSettings
{
    [JsonPropertyName("// PassiveHealPercentPerSecond")]
    public string PassiveHealPercentPerSecondDoc { get; init; } = "Percent of max health passively healed per second.";
    public double PassiveHealPercentPerSecond { get; set; } = 0.01;

    [JsonPropertyName("// CritDamageMultiplier")]
    public string CritDamageMultiplierDoc { get; init; } = "Multiplier applied to critical hit damage (1.5 = +50% bonus damage).";
    public double CritDamageMultiplier { get; set; } = 1.5;

    [JsonPropertyName("// ThornsMultiplier")]
    public string ThornsMultiplierDoc { get; init; } = "DEPRECATED — no longer used. Crusader thorns uses base damage only.";
    public double ThornsMultiplier { get; set; } = 1.0;

    [JsonPropertyName("// ThornsOnAllHits")]
    public string ThornsOnAllHitsDoc { get; init; } = "When true, thorns applies on all incoming melee/missile hits, not just evades/blocks.";
    public bool ThornsOnAllHits { get; set; } = true;
}

public class WindwalkerSettings
{
    [JsonPropertyName("// StreakRangeMeters")]
    public string StreakRangeMetersDoc { get; init; } = "Radius in meters to search for streak spell targets on melee hit.";
    public double StreakRangeMeters { get; set; } = 15.0;

    [JsonPropertyName("// EchoEnabled")]
    public string EchoEnabledDoc { get; init; } = "When true and Mana Conversion is specialized, streak spells echo to volley (triple cast chain).";
    public bool EchoEnabled { get; set; } = true;

    [JsonPropertyName("// ManaCostMultiplier")]
    public string ManaCostMultiplierDoc { get; init; } = "Multiplier applied to auto-cast spell mana cost (0.5 = half cost).";
    public double ManaCostMultiplier { get; set; } = 0.5;

    [JsonPropertyName("// SkillPerTier")]
    public string SkillPerTierDoc { get; init; } = "War Magic skill needed per spell tier. Uses base (unbuffed) skill. 150 = tier 1 at 150, tier 2 at 300.";
    public int SkillPerTier { get; set; } = 150;
}

public class BattlemageSettings
{
    [JsonPropertyName("// EchoEnabled")]
    public string EchoEnabledDoc { get; init; } = "When true and Mana Conversion is specialized, arc spells echo to volley (triple cast chain).";
    public bool EchoEnabled { get; set; } = true;

    [JsonPropertyName("// ManaCostMultiplier")]
    public string ManaCostMultiplierDoc { get; init; } = "Multiplier applied to auto-cast spell mana cost (0.5 = half cost).";
    public double ManaCostMultiplier { get; set; } = 0.5;
}

public class DeathKnightSettings
{
    [JsonPropertyName("// AuraRangeMeters")]
    public string AuraRangeMetersDoc { get; init; } = "Radius in meters for Death Knight damage aura.";
    public double AuraRangeMeters { get; set; } = 15.0;

    [JsonPropertyName("// AuraDamagePerTick")]
    public string AuraDamagePerTickDoc { get; init; } = "Nether damage dealt per second by the aura.";
    public int AuraDamagePerTick { get; set; } = 5;

    [JsonPropertyName("// AuraTickSeconds")]
    public string AuraTickSecondsDoc { get; init; } = "Seconds between aura damage ticks.";
    public double AuraTickSeconds { get; set; } = 1.0;

    [JsonPropertyName("// SkillPerTier")]
    public string SkillPerTierDoc { get; init; } = "Void Magic Base skill per melee proc spell tier; tier = floor(Base/this), then capped by MaxVoidSpellTier, clamped 1-8.";
    public int SkillPerTier { get; set; } = 150;

    [JsonPropertyName("// MaxVoidSpellTier")]
    public string MaxVoidSpellTierDoc { get; init; } = "Upper bound (1-8) for nether streak/arc proc tier after skill math. Tier maps to spell ID index (not client spell level); nether streak tiers 5+ use a different ID line. Default 2 keeps procs on the first two spells only.";
    public int MaxVoidSpellTier { get; set; } = 2;

    [JsonPropertyName("// EchoEnabled")]
    public string EchoEnabledDoc { get; init; } = "When true and Arcane Lore is specialized, nether spells echo once.";
    public bool EchoEnabled { get; set; } = true;

    [JsonPropertyName("// ManaCostMultiplier")]
    public string ManaCostMultiplierDoc { get; init; } = "Multiplier applied to auto-cast spell mana cost (0.5 = half cost). 0 = no mana spent for these procs (components still required when reagent costs are on).";
    public double ManaCostMultiplier { get; set; } = 0;
}

public class BloodmageSettings
{
    [JsonPropertyName("// EchoCount")]
    public string EchoCountDoc { get; init; } = "Number of hecatomb echoes on melee hit (main hit + echoes).";
    public int EchoCount { get; set; } = 5;

    [JsonPropertyName("// EchoTierDrop")]
    public string EchoTierDropDoc { get; init; } = "How many tiers lower each echo is (approximates 30% less damage per drop).";
    public int EchoTierDrop { get; set; } = 1;

    [JsonPropertyName("// DrainSpellRangeMeters")]
    public string DrainSpellRangeMetersDoc { get; init; } = "Radius in meters for Bloodmage drain spell AoE.";
    public double DrainSpellRangeMeters { get; set; } = 15.0;

    [JsonPropertyName("// AuraRangeMeters")]
    public string AuraRangeMetersDoc { get; init; } = "Radius in meters for Bloodmage life-drain aura.";
    public double AuraRangeMeters { get; set; } = 15.0;

    [JsonPropertyName("// AuraDrainPerTick")]
    public string AuraDrainPerTickDoc { get; init; } = "Health drained from each enemy per aura tick.";
    public int AuraDrainPerTick { get; set; } = 1;

    [JsonPropertyName("// AuraTickSeconds")]
    public string AuraTickSecondsDoc { get; init; } = "Seconds between aura ticks.";
    public double AuraTickSeconds { get; set; } = 1.0;

    [JsonPropertyName("// ManaCostMultiplier")]
    public string ManaCostMultiplierDoc { get; init; } = "Multiplier applied to auto-cast spell mana cost (0.5 = half cost).";
    public double ManaCostMultiplier { get; set; } = 0.5;
}

public class DruidPetThornsSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "Enable Druid pet thorns reflection and AoE damage.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// AoERadius")]
    public string AoERadiusDoc { get; init; } = "Radius in meters for pet thorns AoE on attack.";
    public double AoERadius { get; set; } = 5.0;

    [JsonPropertyName("// DamageMultiplier")]
    public string DamageMultiplierDoc { get; init; } = "Multiplier applied to thorns damage for pet reflection and AoE.";
    public double DamageMultiplier { get; set; } = 1.0;
}

public class HealerSettings
{
    [JsonPropertyName("// AuraRangeMeters")]
    public string AuraRangeMetersDoc { get; init; } = "Radius in meters for the Healer's AoE healing aura.";
    public double AuraRangeMeters { get; set; } = 15.0;

    [JsonPropertyName("// AuraTickSeconds")]
    public string AuraTickSecondsDoc { get; init; } = "Seconds between aura healing ticks.";
    public double AuraTickSeconds { get; set; } = 3.0;

    [JsonPropertyName("// FlatHealPerTick")]
    public string FlatHealPerTickDoc { get; init; } = "Flat HP healed per tick to each ally in range.";
    public int FlatHealPerTick { get; set; } = 5;

    [JsonPropertyName("// SmiteChance")]
    public string SmiteChanceDoc { get; init; } = "Chance (0-1) to proc Smite on melee hit.";
    public double SmiteChance { get; set; } = 0.5;

    [JsonPropertyName("// SmiteSpellIds")]
    public string SmiteSpellIdsDoc { get; init; } = "Harm/Drain Health Other spell IDs from tier 1 to 8. Empty = disabled.";
    public int[] SmiteSpellIds { get; set; } = new[] { 1093, 1094, 1095, 1096, 1097, 1098, 2326, 4641 };
}

public class AdventurerSettings
{
    [JsonPropertyName("// AttributeBonus")]
    public string AttributeBonusDoc { get; init; } = "Bonus to all attributes (Strength, Endurance, Coordination, Quickness, Focus, Self).";
    public int AttributeBonus { get; set; } = 50;

    [JsonPropertyName("// SkillBonus")]
    public string SkillBonusDoc { get; init; } = "Bonus to all skills.";
    public int SkillBonus { get; set; } = 50;

    [JsonPropertyName("// VitalPercentBonus")]
    public string VitalPercentBonusDoc { get; init; } = "Percent bonus to max health, stamina, mana (0.20 = +20%).";
    public double VitalPercentBonus { get; set; } = 0.20;

    [JsonPropertyName("// ResistanceBonus")]
    public string ResistanceBonusDoc { get; init; } = "Flat bonus to all resistances.";
    public int ResistanceBonus { get; set; } = 10;

    [JsonPropertyName("// BurdenLimitBonusRanks")]
    public string BurdenLimitBonusRanksDoc { get; init; } = "Virtual burden limit augmentation ranks (not saved to DB).";
    public int BurdenLimitBonusRanks { get; set; } = 2;
}

public class ChaosTinkerSettings
{
    [JsonPropertyName("// MaxChaosFailuresPerItem")]
    public string MaxChaosFailuresPerItemDoc { get; init; } = "Maximum chaos tinker failures allowed per item before it is immune.";
    public int MaxChaosFailuresPerItem { get; set; } = 5;

    [JsonPropertyName("// IncrementNumTimesTinkeredOnFailure")]
    public string IncrementNumTimesTinkeredOnFailureDoc { get; init; } = "When true, chaos tinker failures increment the item's NumTimesTinkered count.";
    public bool IncrementNumTimesTinkeredOnFailure { get; set; } = true;
}

public class QuestTrophyDropsSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, high-value quest items (tusker tusks, olthoi pincers, eater jaws) can drop as bonus trophies with daily turn-in caps.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// DailyCapPerItemType")]
    public string DailyCapPerItemTypeDoc { get; init; } = "Maximum turn-ins per item type per day (resets on rolling window or fixed time).";
    public int DailyCapPerItemType { get; set; } = 10;

    [JsonPropertyName("// RollingWindowHours")]
    public string RollingWindowHoursDoc { get; init; } = "Hours after first turn-in before the daily cap resets (rolling window).";
    public double RollingWindowHours { get; set; } = 20;

    [JsonPropertyName("// FixedResetTimeZone")]
    public string FixedResetTimeZoneDoc { get; init; } = "Time zone for the fixed daily reset.";
    public string FixedResetTimeZone { get; set; } = "Central Standard Time";

    [JsonPropertyName("// FixedResetHour")]
    public string FixedResetHourDoc { get; init; } = "Local hour (24h) for fixed daily reset. 21 = 9pm.";
    public int FixedResetHour { get; set; } = 21;

    [JsonPropertyName("// DropChance")]
    public string DropChanceDoc { get; init; } = "Base chance (0.0-1.0) for a quest trophy to drop per valid kill. 0.01 = 1%.";
    public double DropChance { get; set; } = 0.01;

    [JsonPropertyName("// ChampionStackSizeMin")]
    public string ChampionStackSizeMinDoc { get; init; } = "Minimum stack size for quest trophy drops from champion/special mobs.";
    public int ChampionStackSizeMin { get; set; } = 1;

    [JsonPropertyName("// ChampionStackSizeMax")]
    public string ChampionStackSizeMaxDoc { get; init; } = "Maximum stack size for quest trophy drops from champion/special mobs.";
    public int ChampionStackSizeMax { get; set; } = 8;

    [JsonPropertyName("// QuestItemWcids")]
    public string QuestItemWcidsDoc { get; init; } = "WCIDs of quest items that can drop as bonus trophies.";
    public List<uint> QuestItemWcids { get; set; } = new()
    {
        22419, 22423, 22424, 22427, 22428, 22431, // Tusker Tusks
        10843, 10844, 10845, 10846, 10847, 27589, 27590, 27591, 51211, 51214, // Olthoi Pincers
        28718, 28725, 28726, 28727, 42104 // Eater Jaws
    };

    [JsonPropertyName("// XpSuppressedMessage")]
    public string XpSuppressedMessageDoc { get; init; } = "Message sent when turn-in XP is suppressed due to daily cap.";
    public string XpSuppressedMessage { get; init; } = "You've reached the daily turn-in limit for this item. You receive the turn-in reward but no additional experience.";
}