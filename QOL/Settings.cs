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
    CollectorsAcceptAll,
}

public class Settings
{
    [JsonPropertyName("// FeatureToggles")]
    public string FeatureTogglesDoc { get; init; } = "Reading order: below this line, every // key is documentation; the next block lists real settings in the same order (toggles and MaxSpecCredits, then each named section object). Each Enable* flag turns one QOL Harmony patch group on or off — false = vanilla ACE for that area only; other features stay as configured.";

    [JsonPropertyName("// EnableAnimations")]
    public string EnableAnimationsDoc { get; init; } = "MotionTable length overrides per MotionCommand (see Animations.AnimationSpeeds; {} = vanilla) and configurable delay between each /die speech step.";
    public bool EnableAnimations { get; set; } = true;

    [JsonPropertyName("// EnableAugmentations")]
    public string EnableAugmentationsDoc { get; init; } = "Override augmentation type caps (Augmentation.MaxAugs) and optional IgnoreShared* so attribute or resist augs ignore ACE shared-group caps.";
    public bool EnableAugmentations { get; set; } = true;

    [JsonPropertyName("// EnableDefaults")]
    public string EnableDefaultsDoc { get; init; } = "When true, default values in the Defaults object apply the first time a listed property is set on a player who had no stored value yet (e.g. new or migrated chars).";
    public bool EnableDefaults { get; set; } = true;

    [JsonPropertyName("// EnableFellowships")]
    public string EnableFellowshipsDoc { get; init; } = "Raises max fellowship size for this mod’s invite logic, XP share (flat or per-size table), /fship bulk invite, optional busy bypass, StopAtMaxFellowshipInvite.";
    public bool EnableFellowships { get; set; } = true;

    [JsonPropertyName("// EnablePermanentObjects")]
    public string EnablePermanentObjectsDoc { get; init; } = "World objects marked with the Permanent fake property survive landblock unload without inventory wipe.";
    public bool EnablePermanentObjects { get; set; } = true;

    [JsonPropertyName("// EnableRecklessness")]
    public string EnableRecklessnessDoc { get; init; } = "Replaces ACE Recklessness damage scaling with a power-bar window (PowerLow/PowerHigh) and trained/specialized damage rating bonuses configured in the Recklessness object below.";
    public bool EnableRecklessness { get; set; } = true;

    [JsonPropertyName("// EnableTailoring")]
    public string EnableTailoringDoc { get; init; } = "Allow society armor as tailoring source/target (removes restriction).";
    public bool EnableTailoring { get; set; } = true;

    [JsonPropertyName("// EnableVendorsBuyEverything")]
    public string EnableVendorsBuyEverythingDoc { get; init; } = "Vendors accept buy/sell on item types they would normally refuse.";
    public bool EnableVendorsBuyEverything { get; set; } = true;

    [JsonPropertyName("// EnableQuestgiverAuras")]
    public string EnableQuestgiverAurasDoc { get; init; } = "Equip quest-giver NPCs (creatures with StampQuest/InqQuest emotes) with an Aegis visual; WCID is QuestgiverAuras.AegisWcid.";
    public bool EnableQuestgiverAuras { get; set; } = true;

    [JsonPropertyName("// EnableStackable")]
    public string EnableStackableDoc { get; init; } = "Raise stack limits and enable stacking for selected WeenieTypes (books, keys, etc.) per the Stackable object.";
    public bool EnableStackable { get; set; } = true;

    [JsonPropertyName("// EnableSwiftmend")]
    public string EnableSwiftmendDoc { get; init; } = "Healing kits apply self-heal plus heal-over-time; timing and kit categories are in the Swiftmend object below.";
    public bool EnableSwiftmend { get; set; } = true;

    [JsonPropertyName("// EnablePetAttackSelected")]
    public string EnablePetAttackSelectedDoc { get; init; } = "Pet attacks match the player’s selected target where applicable.";
    public bool EnablePetAttackSelected { get; set; } = true;

    [JsonPropertyName("// EnablePetMessageDamage")]
    public string EnablePetMessageDamageDoc { get; init; } = "Route or label combat messages involving pets.";
    public bool EnablePetMessageDamage { get; set; } = true;

    [JsonPropertyName("// EnablePetStow")]
    public string EnablePetStowDoc { get; init; } = "Stow/recall pet behavior patches.";
    public bool EnablePetStow { get; set; } = true;

    [JsonPropertyName("// EnableSummonCreatureAsPet")]
    public string EnableSummonCreatureAsPetDoc { get; init; } = "Summon-creature spells can create pets with QOL pet rules.";
    public bool EnableSummonCreatureAsPet { get; set; } = true;

    [JsonPropertyName("// EnablePetSummonMultiple")]
    public string EnablePetSummonMultipleDoc { get; init; } = "Allow multiple pets when the pet patches allow it.";
    public bool EnablePetSummonMultiple { get; set; } = true;

    [JsonPropertyName("// EnablePetEx")]
    public string EnablePetExDoc { get; init; } = "Extended pet behavior package (PetEx hooks).";
    public bool EnablePetEx { get; set; } = true;

    [JsonPropertyName("// EnablePetExShareDamage")]
    public string EnablePetExShareDamageDoc { get; init; } = "Share damage between player and PetEx pet per that feature’s rules.";
    public bool EnablePetExShareDamage { get; set; } = true;

    [JsonPropertyName("// EnableOfflineSwear")]
    public string EnableOfflineSwearDoc { get; init; } = "Chat command /offlineswear and related offline-name filter behavior.";
    public bool EnableOfflineSwear { get; set; } = true;

    [JsonPropertyName("// EnableCollectorsAcceptAll")]
    public string EnableCollectorsAcceptAllDoc { get; init; } = "Trophy collectors accept any item (not just items with specific Give emotes).";
    public bool EnableCollectorsAcceptAll { get; set; } = true;

    [JsonPropertyName("// CollectorWcids")]
    public string CollectorWcidsDoc { get; init; } = "WCIDs of collector NPCs that will accept any item when enabled.";
    public List<uint> CollectorWcids { get; set; } = new()
    {
        3917, 3918, 3919, 3920, 3921, 3922, 3923,
        10842, 11343, 11345, 11346, 11347, 11348,
        21338, 24215, 24573,
        8402, 8403, 8404,
        8155, 8266, 24859,
        12203, 12204, 12205,
        22642, 28717, 34145,
    };

    [JsonPropertyName("// MaxSpecCredits")]
    public string MaxSpecCreditsDoc { get; init; } = "Total specialisation credits a player may spend. Vanilla cap is 70. Set to 9999 to make it effectively unlimited.";
    public int MaxSpecCredits { get; set; } = 9999;

    [JsonPropertyName("// Animations")]
    public string AnimationsSectionDoc { get; init; } = "DieSeconds: seconds between each /die broadcast speech step (not MotionTable; 0 = minimal delay). AnimationSpeeds: quoted MotionCommand names → seconds (0 = skip). Shipped preset is all zeros (instant). Use {} for vanilla motion-table lengths. Inside Animations: // lines first, then values (same order).";
    public AnimationSettings Animations { get; set; } = new();

    [JsonPropertyName("// Defaults")]
    public string DefaultsSectionDoc { get; init; } = "Four dictionaries: keys are ACE property enum names (PropertyInt64, PropertyInt, PropertyFloat, PropertyBool). Values apply only on first assignment when the player had no prior stored value. Empty {} means no defaults for that type. Inside Defaults: // lines first, then values (same order).";
    public DefaultsSettings Defaults { get; set; } = new();

    [JsonPropertyName("// Fellowship")]
    public string FellowshipSectionDoc { get; init; } = "SendDetails, MaxMembers, StopAtMaxFellowshipInvite, IgnoreBusy, OverrideSharePercent, FlatSharePercent, SharePercent table, DefaultShare. Inside Fellowship: // lines first, then values (same order).";
    public FellowshipSettings Fellowship { get; set; } = new();

    [JsonPropertyName("// Recklessness")]
    public string RecklessnessSectionDoc { get; init; } = "Power bar window (PowerLow/PowerHigh) and damage rating bonuses while Recklessness is active (trained vs specialized). Inside Recklessness: // lines first, then values (same order).";
    public RecklessnessSettings Recklessness { get; set; } = new();

    [JsonPropertyName("// Augmentation")]
    public string AugmentationSectionDoc { get; init; } = "IgnoreSharedAttribute / IgnoreSharedResist relax ACE group caps. MaxAugs merges per-type caps at startup. Inside Augmentation: // lines first, then values (same order).";
    public AugmentationSettings Augmentation { get; set; } = new();

    [JsonPropertyName("// QuestgiverAuras")]
    public string QuestgiverAurasSectionDoc { get; init; } = "Visual aura for creature quest-givers; AegisWcid must be a valid item WCID. Inside QuestgiverAuras: // lines first, then values (same order).";
    public QuestgiverAuraSettings QuestgiverAuras { get; set; } = new();

    [JsonPropertyName("// Stackable")]
    public string StackableSectionDoc { get; init; } = "MaxStackSize caps stacks for types this mod makes stackable. Enable* flags gate Book/Key/Generic/Lockpick/Scroll. StackableTypes lists WeenieType names; types can also be added for edge cases—IsEnabledType uses toggles first, then membership in this list. Inside Stackable: // lines first, then values (same order).";
    public StackableSettings Stackable { get; set; } = new();

    [JsonPropertyName("// Swiftmend")]
    public string SwiftmendSectionDoc { get; init; } = "Heal-over-time after using kits: duration, tick interval, skill-based healing per tick, specialization multiplier, per-kit-type toggles, optional debug spam. Inside Swiftmend: // lines first, then values (same order).";
    public SwiftmendSettings Swiftmend { get; set; } = new();
}

public class SwiftmendSettings
{
    [JsonPropertyName("// HotDurationSeconds")]
    public string HotDurationSecondsDoc { get; init; } = "Total HoT duration in seconds after using a kit.";
    public double HotDurationSeconds { get; set; } = 30.0;

    [JsonPropertyName("// HotTickSeconds")]
    public string HotTickSecondsDoc { get; init; } = "Seconds between each HoT vital tick.";
    public double HotTickSeconds { get; set; } = 3.0;

    [JsonPropertyName("// BaseSkillPercentPerTick")]
    public string BaseSkillPercentPerTickDoc { get; init; } = "Fraction of Healing skill applied to vitals each tick (before specialization multiplier).";
    public double BaseSkillPercentPerTick { get; set; } = 0.03;

    [JsonPropertyName("// SpecializedMultiplier")]
    public string SpecializedMultiplierDoc { get; init; } = "Multiplier applied to tick healing when Healing is specialized.";
    public double SpecializedMultiplier { get; set; } = 2.0;

    [JsonPropertyName("// EnableHealthKits")]
    public string EnableHealthKitsDoc { get; init; } = "Apply Swiftmend behavior to health kit items (name heuristics).";
    public bool EnableHealthKits { get; set; } = true;

    [JsonPropertyName("// EnableStaminaKits")]
    public string EnableStaminaKitsDoc { get; init; } = "Apply Swiftmend behavior to stamina kits.";
    public bool EnableStaminaKits { get; set; } = true;

    [JsonPropertyName("// EnableManaKits")]
    public string EnableManaKitsDoc { get; init; } = "Apply Swiftmend behavior to mana kits.";
    public bool EnableManaKits { get; set; } = true;

    [JsonPropertyName("// EnableDebugMessages")]
    public string EnableDebugMessagesDoc { get; init; } = "Extra player/log output for Swiftmend diagnostics.";
    public bool EnableDebugMessages { get; set; } = false;
}
