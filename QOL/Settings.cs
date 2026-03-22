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
    public string FeatureTogglesDoc { get; } = "Enable or disable each QOL feature. Set a value to true to enable that patch category, or false to disable it.";
    public bool EnableAnimations { get; set; } = true;
    public bool EnableAugmentations { get; set; } = true;
    public bool EnableDefaults { get; set; } = true;
    public bool EnableFellowships { get; set; } = true;
    public bool EnablePermanentObjects { get; set; } = true;
    public bool EnableRecklessness { get; set; } = true;
    public bool EnableTailoring { get; set; } = true;
    public bool EnableVendorsBuyEverything { get; set; } = true;
    public bool EnableQuestgiverAuras { get; set; } = true;
    public bool EnableStackable { get; set; } = true;

    // Former Swiftmend mod: healing kits target self + HoT (manual Healer hook; see SwiftmendHealingKits.cs).
    public bool EnableSwiftmend { get; set; } = true;

    // Pet features were moved from EmpyreanEchoes into QOL (Harmony categories match QOL feature enum names).
    public bool EnablePetAttackSelected { get; set; } = true;
    public bool EnablePetMessageDamage { get; set; } = true;
    public bool EnablePetStow { get; set; } = true;
    public bool EnableSummonCreatureAsPet { get; set; } = true;
    public bool EnablePetSummonMultiple { get; set; } = true;
    public bool EnablePetEx { get; set; } = true;
    public bool EnablePetExShareDamage { get; set; } = true;

    public bool EnableOfflineSwear { get; set; } = true;

    [JsonPropertyName("// MaxSpecCredits")]
    public string MaxSpecCreditsDoc { get; } = "Total specialisation credits a player may spend. Vanilla cap is 70. Set to 9999 to make it effectively unlimited.";
    public int MaxSpecCredits { get; set; } = 9999;

    // Animation, recall, and suicide timing tweaks
    public AnimationSettings Animations { get; set; } = new();

    // Global default properties applied via PropertyManager on world open
    public DefaultsSettings Defaults { get; set; } = new();

    // Fellowship size, invite behavior, and XP share table
    public FellowshipSettings Fellowship { get; set; } = new();

    // Recklessness skill damage scaling and thresholds
    public RecklessnessSettings Recklessness { get; set; } = new();

    // Augmentation caps and shared-group ignore flags
    public AugmentationSettings Augmentation { get; set; } = new();

    // Visual aura configuration for NPC quest-givers
    public QuestgiverAuraSettings QuestgiverAuras { get; set; } = new();

    // Extra stackable item categories and max stack size
    public StackableSettings Stackable { get; set; } = new();

    // Healing kit HoT tuning (merged from Swiftmend)
    public SwiftmendSettings Swiftmend { get; set; } = new();
}

public class SwiftmendSettings
{
    public double HotDurationSeconds { get; set; } = 30.0;

    public double HotTickSeconds { get; set; } = 3.0;

    public double BaseSkillPercentPerTick { get; set; } = 0.03;

    public double SpecializedMultiplier { get; set; } = 2.0;

    public bool EnableHealthKits { get; set; } = true;

    public bool EnableStaminaKits { get; set; } = true;

    public bool EnableManaKits { get; set; } = true;

    public bool EnableDebugMessages { get; set; } = false;
}
