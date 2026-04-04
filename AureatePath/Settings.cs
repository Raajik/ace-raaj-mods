namespace AureatePath;

public class Settings
{
    // Minimum character level for the next enlightenment = LevelReq + (current Enlightenment * LevelReqPerEnlightenment).
    public int LevelReq { get; set; } = 275;

    // Added per enlightenment already completed (0 = flat LevelReq only).
    public int LevelReqPerEnlightenment { get; set; } = 1;

    // 0 = no cap; otherwise max enlightenments allowed (current count before next must be < this).
    public int MaxEnlightenments { get; set; } = 0;

    public bool RequireSocietyMaster { get; set; } = true;
    public bool RequireAllLuminanceAuras { get; set; } = true;

    // 1-based: society master is checked when attempting this enlightenment number onward (e.g. 26 => after 25 completes).
    public int SocietyMasterRequirementFromEnlightenment { get; set; } = 26;

    // 1-based: lum-aug tier sum gate applies when attempting this enlightenment onward (e.g. 11 => after 10 completes).
    public int LumAugRequirementFromEnlightenment { get; set; } = 11;

    public bool RemoveSociety { get; set; } = false;
    public bool RemoveLuminance { get; set; } = false;
    public bool RemoveAetheria { get; set; } = false;
    public bool RemoveAttributes { get; set; } = true;
    public bool RemoveSkills { get; set; } = true;
    public bool RemoveLevel { get; set; } = true;

    public Dictionary<PropertyInt, int> IntAugments { get; set; } = new()
    {
        [PropertyInt.LumAugCritDamageRating] = 1,
        [PropertyInt.CritRating] = 2,
    };
    public Dictionary<PropertyFloat, double> FloatAugments { get; set; } = new()
    {
        [PropertyFloat.CriticalFrequency] = .01,
    };
    public Dictionary<Skill, int> SkillAugments { get; set; } = new();
    public Dictionary<PropertyAttribute, int> AttributeAugments { get; set; } = new();
    public Dictionary<PropertyAttribute2nd, int> VitalAugments { get; set; } = new();


    //public PropertyBool UsingNewLuminance { get; set; } = (PropertyBool)11111;
    public int SkillCreditAmount { get; set; } = 1;
    public int SkillCreditInterval { get; set; } = 5;
    public bool SkipNormalBroadcast { get; set; } = false;
    public bool SkipResetCertificate { get; set; } = false;
    public long MaxLumBase { get; set; } = long.MaxValue;
    public long MaxLumPerEnlightenment { get; set; } = 0;

    public bool PatchWieldRequirements { get; set; } = true;

    // Primary flow: /enlighten and /enl. If false, HandleEnlightenment runs immediately after eligibility checks.
    public bool EnlightenmentRequiresConfirmation { get; set; } = true;

    // When true, WCID 53412 may still trigger enlightenment like stock (in addition to the command).
    public bool AllowEnlightenmentViaEnlightenmentObject { get; set; } = false;

    // After enlightening, zero out GrantXP amounts with ShareType.Allegiance for this many minutes (patron pass-up).
    public bool SuppressAllegiancePassupXpAfterEnlightenment { get; set; } = true;

    public int AllegiancePassupXpSuppressMinutes { get; set; } = 5;

    //public PropertyInt WieldRequirementEnlightenments => (PropertyInt)29999;

    // Minimum sum of LumAug* tier counts (see PatchClass.LumAugmentationCreditContributors), not raw luminance currency.
    public int BaseLumAugmentationsRequired { get; set; } = 65;

    // Added to the required sum per current Enlightenment level (0 = same threshold every time).
    public int LumAugmentationsRequiredPerEnlightenment { get; set; } = 0;

    // When true, each luminance aug line in LumAugmentationCreditContributors must be at least LumAugMinimumPerContributor (stricter than sum-only).
    public bool RequireMinimumPerLumAugContributor { get; set; }

    public int LumAugMinimumPerContributor { get; set; } = 1;

    // When verification fails, send a second line with tier sum vs required (helps tune BaseLumAugmentationsRequired).
    public bool ShowLumAugVerificationCounts { get; set; }
}
