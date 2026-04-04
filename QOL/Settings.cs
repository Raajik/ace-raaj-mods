namespace QOL;

public enum Features
{
    Animations,
    Augmentations,
    Defaults,
    Fellowships,
    PermanentObjects,
    Recklessness,
    Tailoring,
    VendorsBuyEverything,
    QuestgiverAuras,
    Stackable,
    SwiftmendHealingKits,
    PetAttackSelected,
    PetMessageDamage,
    PetStow,
    SummonCreatureAsPet,
    PetSummonMultiple,
    PetEx,
    PetExShareDamage,
}

public class Settings
{
    [JsonPropertyName("// FeatureToggles")]
    public string FeatureTogglesDoc { get; } = "Each Enable* flag registers or skips that Harmony category. false = vanilla behavior for that area. See QOL/Readme.md for behavior detail.";

    [JsonPropertyName("// EnableAnimations")]
    public string EnableAnimationsDoc { get; } = "Motion length overrides (recalls, loot, combat stance, heals, reload) and configurable /die step delay.";
    public bool EnableAnimations { get; set; } = true;

    [JsonPropertyName("// EnableAugmentations")]
    public string EnableAugmentationsDoc { get; } = "Override augmentation type caps and optional IgnoreShared* for attribute/resist groups.";
    public bool EnableAugmentations { get; set; } = true;

    [JsonPropertyName("// EnableDefaults")]
    public string EnableDefaultsDoc { get; } = "Apply default property values the first time a property is set on a player (e.g. MaximumLuminance).";
    public bool EnableDefaults { get; set; } = true;

    [JsonPropertyName("// EnableFellowships")]
    public string EnableFellowshipsDoc { get; } = "Fellowship size, XP share table or flat share, /fship bulk invite, StopAtMaxFellowshipInvite.";
    public bool EnableFellowships { get; set; } = true;

    [JsonPropertyName("// EnablePermanentObjects")]
    public string EnablePermanentObjectsDoc { get; } = "World objects marked with the Permanent fake property survive landblock unload without inventory wipe.";
    public bool EnablePermanentObjects { get; set; } = true;

    [JsonPropertyName("// EnableRecklessness")]
    public string EnableRecklessnessDoc { get; } = "Replace Recklessness damage scaling with power-bar window and skill-scaled rating (see Recklessness settings).";
    public bool EnableRecklessness { get; set; } = true;

    [JsonPropertyName("// EnableTailoring")]
    public string EnableTailoringDoc { get; } = "Allow society armor as tailoring source/target (removes restriction).";
    public bool EnableTailoring { get; set; } = true;

    [JsonPropertyName("// EnableVendorsBuyEverything")]
    public string EnableVendorsBuyEverythingDoc { get; } = "Vendors accept buy/sell on item types they would normally refuse.";
    public bool EnableVendorsBuyEverything { get; set; } = true;

    [JsonPropertyName("// EnableQuestgiverAuras")]
    public string EnableQuestgiverAurasDoc { get; } = "Equip quest-giver NPCs with an Aegis visual from QuestgiverAuras.AegisWcid.";
    public bool EnableQuestgiverAuras { get; set; } = true;

    [JsonPropertyName("// EnableStackable")]
    public string EnableStackableDoc { get; } = "Raise stack limits and enable stacking for selected WeenieTypes (books, keys, etc.).";
    public bool EnableStackable { get; set; } = true;

    [JsonPropertyName("// EnableSwiftmend")]
    public string EnableSwiftmendDoc { get; } = "Healing kits apply to self + heal-over-time (Swiftmend settings); Healer hook in SwiftmendHealingKits.cs.";
    public bool EnableSwiftmend { get; set; } = true;

    [JsonPropertyName("// EnablePetAttackSelected")]
    public string EnablePetAttackSelectedDoc { get; } = "Pet attacks match the player’s selected target where applicable.";
    public bool EnablePetAttackSelected { get; set; } = true;

    [JsonPropertyName("// EnablePetMessageDamage")]
    public string EnablePetMessageDamageDoc { get; } = "Route or label combat messages involving pets.";
    public bool EnablePetMessageDamage { get; set; } = true;

    [JsonPropertyName("// EnablePetStow")]
    public string EnablePetStowDoc { get; } = "Stow/recall pet behavior patches.";
    public bool EnablePetStow { get; set; } = true;

    [JsonPropertyName("// EnableSummonCreatureAsPet")]
    public string EnableSummonCreatureAsPetDoc { get; } = "Summon-creature spells can create pets with QOL pet rules.";
    public bool EnableSummonCreatureAsPet { get; set; } = true;

    [JsonPropertyName("// EnablePetSummonMultiple")]
    public string EnablePetSummonMultipleDoc { get; } = "Allow multiple pets when configured (see pet-related patches).";
    public bool EnablePetSummonMultiple { get; set; } = true;

    [JsonPropertyName("// EnablePetEx")]
    public string EnablePetExDoc { get; } = "Extended pet behavior package (PetEx hooks).";
    public bool EnablePetEx { get; set; } = true;

    [JsonPropertyName("// EnablePetExShareDamage")]
    public string EnablePetExShareDamageDoc { get; } = "Share damage between player and PetEx pet per that feature’s rules.";
    public bool EnablePetExShareDamage { get; set; } = true;

    [JsonPropertyName("// EnableOfflineSwear")]
    public string EnableOfflineSwearDoc { get; } = "Chat command /offlineswear and related offline-name filter behavior.";
    public bool EnableOfflineSwear { get; set; } = true;

    [JsonPropertyName("// MaxSpecCredits")]
    public string MaxSpecCreditsDoc { get; } = "Total specialisation credits a player may spend. Vanilla cap is 70. Set to 9999 to make it effectively unlimited.";
    public int MaxSpecCredits { get; set; } = 9999;

    [JsonPropertyName("// Animations")]
    public string AnimationsSectionDoc { get; } = "DieSeconds and AnimationSpeeds (MotionCommand → seconds, 0 = skip anim). See Animations.cs patch.";
    public AnimationSettings Animations { get; set; } = new();

    [JsonPropertyName("// Defaults")]
    public string DefaultsSectionDoc { get; } = "Int64/Int/Float/Bool default property dictionaries applied on first property assignment.";
    public DefaultsSettings Defaults { get; set; } = new();

    [JsonPropertyName("// Fellowship")]
    public string FellowshipSectionDoc { get; } = "MaxMembers, XP share (flat or table), IgnoreBusy, StopAtMaxFellowshipInvite, SendDetails.";
    public FellowshipSettings Fellowship { get; set; } = new();

    [JsonPropertyName("// Recklessness")]
    public string RecklessnessSectionDoc { get; } = "Power bar window (PowerLow/PowerHigh) and trained/specialized damage rating bonuses.";
    public RecklessnessSettings Recklessness { get; set; } = new();

    [JsonPropertyName("// Augmentation")]
    public string AugmentationSectionDoc { get; } = "IgnoreSharedAttribute, IgnoreSharedResist, MaxAugs per AugmentationType.";
    public AugmentationSettings Augmentation { get; set; } = new();

    [JsonPropertyName("// QuestgiverAuras")]
    public string QuestgiverAurasSectionDoc { get; } = "AegisWcid for NPC visual; DebugLogging for troubleshooting.";
    public QuestgiverAuraSettings QuestgiverAuras { get; set; } = new();

    [JsonPropertyName("// Stackable")]
    public string StackableSectionDoc { get; } = "MaxStackSize, per-type Enable* flags, StackableTypes list for reference.";
    public StackableSettings Stackable { get; set; } = new();

    [JsonPropertyName("// Swiftmend")]
    public string SwiftmendSectionDoc { get; } = "HoT duration/tick, skill fraction per tick, kit category toggles, debug.";
    public SwiftmendSettings Swiftmend { get; set; } = new();
}

public class SwiftmendSettings
{
    [JsonPropertyName("// HotDurationSeconds")]
    public string HotDurationSecondsDoc { get; } = "Total HoT duration in seconds after using a kit.";
    public double HotDurationSeconds { get; set; } = 30.0;

    [JsonPropertyName("// HotTickSeconds")]
    public string HotTickSecondsDoc { get; } = "Seconds between each HoT vital tick.";
    public double HotTickSeconds { get; set; } = 3.0;

    [JsonPropertyName("// BaseSkillPercentPerTick")]
    public string BaseSkillPercentPerTickDoc { get; } = "Fraction of Healing skill applied to vitals each tick (before specialization multiplier).";
    public double BaseSkillPercentPerTick { get; set; } = 0.03;

    [JsonPropertyName("// SpecializedMultiplier")]
    public string SpecializedMultiplierDoc { get; } = "Multiplier applied to tick healing when Healing is specialized.";
    public double SpecializedMultiplier { get; set; } = 2.0;

    [JsonPropertyName("// EnableHealthKits")]
    public string EnableHealthKitsDoc { get; } = "Apply Swiftmend behavior to health kit items (name heuristics).";
    public bool EnableHealthKits { get; set; } = true;

    [JsonPropertyName("// EnableStaminaKits")]
    public string EnableStaminaKitsDoc { get; } = "Apply Swiftmend behavior to stamina kits.";
    public bool EnableStaminaKits { get; set; } = true;

    [JsonPropertyName("// EnableManaKits")]
    public string EnableManaKitsDoc { get; } = "Apply Swiftmend behavior to mana kits.";
    public bool EnableManaKits { get; set; } = true;

    [JsonPropertyName("// EnableDebugMessages")]
    public string EnableDebugMessagesDoc { get; } = "Extra player/log output for Swiftmend diagnostics.";
    public bool EnableDebugMessages { get; set; } = false;
}
