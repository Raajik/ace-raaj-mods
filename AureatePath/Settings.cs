namespace AureatePath;

public class Settings
{
    [JsonPropertyName("// LevelReq")]
    public string LevelReqDoc { get; set; } = "Base character level for the next enlightenment; effective level required also adds Enlightenment * LevelReqPerEnlightenment.";

    public int LevelReq { get; set; } = 275;

    [JsonPropertyName("// LevelReqPerEnlightenment")]
    public string LevelReqPerEnlightenmentDoc { get; set; } = "Extra required levels per enlightenment already completed (1 => 275, then 276, 277, ...).";

    public int LevelReqPerEnlightenment { get; set; } = 5;

    [JsonPropertyName("// MaxEnlightenments")]
    public string MaxEnlightenmentsDoc { get; set; } = "0 = unlimited enlightenments; set > 0 to cap (must stay below cap to attempt another).";

    public int MaxEnlightenments { get; set; } = 0;

    [JsonPropertyName("// RequireSocietyMaster")]
    public string RequireSocietyMasterDoc { get; set; } = "When true, society master is required only from SocietyMasterRequirementFromEnlightenment onward (1-based enlightenment number).";

    public bool RequireSocietyMaster { get; set; } = true;

    [JsonPropertyName("// RequireAllLuminanceAuras")]
    public string RequireAllLuminanceAurasDoc { get; set; } = "When true, lum-aug tier sum gate applies only from LumAugRequirementFromEnlightenment onward.";

    public bool RequireAllLuminanceAuras { get; set; } = true;

    [JsonPropertyName("// SocietyMasterRequirementFromEnlightenment")]
    public string SocietyMasterRequirementFromEnlightenmentDoc { get; set; } = "First enlightenment number (1-based) that requires society master (default 25).";

    public int SocietyMasterRequirementFromEnlightenment { get; set; } = 25;

    [JsonPropertyName("// LumAugRequirementFromEnlightenment")]
    public string LumAugRequirementFromEnlightenmentDoc { get; set; } = "First enlightenment number (1-based) that requires lum-aug tiers (default 10).";

    public int LumAugRequirementFromEnlightenment { get; set; } = 10;

    [JsonPropertyName("// EnableHighEnlightenmentQuestBonusRequirement")]
    public string EnableHighEnlightenmentQuestBonusRequirementDoc { get; set; } = "When true, characters with completed enlightenments >= HighEnlightenmentQuestBonusFromCompletedCount must have total FakeFloat.QuestBonus at least HighEnlightenmentQuestBonusBase + HighEnlightenmentQuestBonusPerStep * (completed - (HighEnlightenmentQuestBonusFromCompletedCount - 1)) (e.g. 5100 at 50 completed for the 51st attempt when base 5000, step 100).";

    public bool EnableHighEnlightenmentQuestBonusRequirement { get; set; } = true;

    [JsonPropertyName("// HighEnlightenmentQuestBonusFromCompletedCount")]
    public string HighEnlightenmentQuestBonusFromCompletedCountDoc { get; set; } = "When completed enlightenments (PropertyInt.Enlightenment) is >= this value, the next enlightenment requires the scaled QuestBonus total. Default 50 => 51st enlightenment needs 5100 QB.";

    public int HighEnlightenmentQuestBonusFromCompletedCount { get; set; } = 50;

    [JsonPropertyName("// HighEnlightenmentQuestBonusBase")]
    public string HighEnlightenmentQuestBonusBaseDoc { get; set; } = "Base quest bonus required at the first gated enlightenment (default 5000; with defaults, 51st enlight total required = 5100 including the per-step term).";

    public float HighEnlightenmentQuestBonusBase { get; set; } = 5000f;

    [JsonPropertyName("// HighEnlightenmentQuestBonusPerStep")]
    public string HighEnlightenmentQuestBonusPerStepDoc { get; set; } = "Added per completed enlightenment past (HighEnlightenmentQuestBonusFromCompletedCount - 1); 51st needs base + 1×step, 52nd needs base + 2×step, etc.";

    public float HighEnlightenmentQuestBonusPerStep { get; set; } = 100f;

    [JsonPropertyName("// RemoveSociety")]
    public string RemoveSocietyDoc { get; set; } = "If true, strip society standing on enlightenment (endless defaults leave society intact).";

    public bool RemoveSociety { get; set; } = false;

    [JsonPropertyName("// RemoveLuminance")]
    public string RemoveLuminanceDoc { get; set; } = "If true, strip luminance investment on enlightenment.";

    public bool RemoveLuminance { get; set; } = false;

    [JsonPropertyName("// RemoveAetheria")]
    public string RemoveAetheriaDoc { get; set; } = "If true, strip aetheria on enlightenment.";

    public bool RemoveAetheria { get; set; } = false;

    [JsonPropertyName("// RemoveAttributes")]
    public string RemoveAttributesDoc { get; set; } = "If true, reset attributes on enlightenment.";

    public bool RemoveAttributes { get; set; } = true;

    [JsonPropertyName("// RemoveSkills")]
    public string RemoveSkillsDoc { get; set; } = "If true, reset skills on enlightenment.";

    public bool RemoveSkills { get; set; } = true;

    [JsonPropertyName("// RemoveLevel")]
    public string RemoveLevelDoc { get; set; } = "If true, reset level on enlightenment.";

    public bool RemoveLevel { get; set; } = true;

    [JsonPropertyName("// SkillCreditAmount")]
    public string SkillCreditAmountDoc { get; set; } = "Skill credits granted each time: (Enlightenment / SkillCreditInterval) * SkillCreditAmount (integer division).";

    public int SkillCreditAmount { get; set; } = 1;

    [JsonPropertyName("// SkillCreditInterval")]
    public string SkillCreditIntervalDoc { get; set; } = "Divisor paired with SkillCreditAmount for per-enlightenment skill credits (integer division; must be > 0 for grants).";

    public int SkillCreditInterval { get; set; } = 5;

    [JsonPropertyName("// SkipNormalBroadcast")]
    public string SkipNormalBroadcastDoc { get; set; } = "If true, skip the three personal enlightenment broadcast lines to the player.";

    public bool SkipNormalBroadcast { get; set; } = false;

    [JsonPropertyName("// SkipResetCertificate")]
    public string SkipResetCertificateDoc { get; set; } = "If true, do not grant the attribute reset certificate from the NPC emote.";

    public bool SkipResetCertificate { get; set; } = false;

    [JsonPropertyName("// MaxLumBase")]
    public string MaxLumBaseDoc { get; set; } = "Sets MaximumLuminance to this plus (Enlightenment * MaxLumPerEnlightenment); long.MaxValue = effectively no cap.";

    public long MaxLumBase { get; set; } = long.MaxValue;

    [JsonPropertyName("// MaxLumPerEnlightenment")]
    public string MaxLumPerEnlightenmentDoc { get; set; } = "Added to max luminance cap per enlightenment count (0 = no growth per enlightenment).";

    public long MaxLumPerEnlightenment { get; set; } = 0;

    [JsonPropertyName("// PatchWieldRequirements")]
    public string PatchWieldRequirementsDoc { get; set; } = "When true, load Harmony patches for ItemWieldRequirementEnlightenments (FakeInt) on wield checks.";

    public bool PatchWieldRequirements { get; set; } = true;

    [JsonPropertyName("// EnlightenmentRequiresConfirmation")]
    public string EnlightenmentRequiresConfirmationDoc { get; set; } = "If true, /enlighten and /enl show a client Yes/No confirmation before applying enlightenment.";

    public bool EnlightenmentRequiresConfirmation { get; set; } = true;

    [JsonPropertyName("// AllowEnlightenmentViaEnlightenmentObject")]
    public string AllowEnlightenmentViaEnlightenmentObjectDoc { get; set; } = "If true, WCID 53412 may still start enlightenment (vanilla object). Command flow works regardless.";

    public bool AllowEnlightenmentViaEnlightenmentObject { get; set; } = false;

    [JsonPropertyName("// SuppressAllegiancePassupXpAfterEnlightenment")]
    public string SuppressAllegiancePassupXpAfterEnlightenmentDoc { get; set; } = "If true, for AllegiancePassupXpSuppressMinutes after each enlightenment, ShareType.Allegiance GrantXP to this player is zeroed (vassal pass-up pause).";

    public bool SuppressAllegiancePassupXpAfterEnlightenment { get; set; } = true;

    [JsonPropertyName("// AllegiancePassupXpSuppressMinutes")]
    public string AllegiancePassupXpSuppressMinutesDoc { get; set; } = "Duration of pass-up suppression; 0 disables the window registration.";

    public int AllegiancePassupXpSuppressMinutes { get; set; } = 5;

    [JsonPropertyName("// BaseLumAugmentationsRequired")]
    public string BaseLumAugmentationsRequiredDoc { get; set; } = "Minimum sum of LumAug* tier counts across configured properties (not raw luminance currency).";

    public int BaseLumAugmentationsRequired { get; set; } = 65;

    [JsonPropertyName("// LumAugmentationsRequiredPerEnlightenment")]
    public string LumAugmentationsRequiredPerEnlightenmentDoc { get; set; } = "Extra required tier sum per current enlightenment (0 keeps a flat threshold while the gate is active).";

    public int LumAugmentationsRequiredPerEnlightenment { get; set; } = 0;

    [JsonPropertyName("// RequireMinimumPerLumAugContributor")]
    public string RequireMinimumPerLumAugContributorDoc { get; set; } = "If true, every lum-aug contributor line must be at least LumAugMinimumPerContributor (stricter than sum-only).";

    public bool RequireMinimumPerLumAugContributor { get; set; }

    [JsonPropertyName("// LumAugMinimumPerContributor")]
    public string LumAugMinimumPerContributorDoc { get; set; } = "Minimum per line when RequireMinimumPerLumAugContributor is true.";

    public int LumAugMinimumPerContributor { get; set; } = 1;

    [JsonPropertyName("// ShowLumAugVerificationCounts")]
    public string ShowLumAugVerificationCountsDoc { get; set; } = "If true, on lum-aug failure also send tier sum vs required (tuning aid).";

    public bool ShowLumAugVerificationCounts { get; set; }

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
}
