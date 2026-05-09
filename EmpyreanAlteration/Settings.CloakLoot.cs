namespace EmpyreanAlteration;

public partial class Settings
{
    [JsonPropertyName("// EnableCloakLootUpgrade")]
    public string EnableCloakLootUpgradeDoc { get; init; } =
        "When true, CloakLootUpgrade mutator runs on cloak treasure rolls: strips retail cap-only item level, clears level wield, Living pre-awaken with ItemMaxLevel = min(cloakTier*5, ItemLevelingCap), optional defense imbue (same as loot: EnableLootItemPreImbue + LootItemPreImbueChance), guaranteed ratings + cloak equipment set re-roll, 1–5 armor cantrips.";

    public bool EnableCloakLootUpgrade { get; set; } = true;

    [JsonPropertyName("// CloakLootRatingRollCountMin")]
    public string CloakLootRatingRollCountMinDoc { get; init; } =
        "Minimum number of distinct rating properties rolled on each upgraded cloak.";

    public int CloakLootRatingRollCountMin { get; set; } = 2;

    [JsonPropertyName("// CloakLootRatingRollCountMax")]
    public string CloakLootRatingRollCountMaxDoc { get; init; } =
        "Maximum number of distinct rating properties rolled on each upgraded cloak.";

    public int CloakLootRatingRollCountMax { get; set; } = 4;

    [JsonPropertyName("// CloakLootRatingValueMin")]
    public string CloakLootRatingValueMinDoc { get; init; } =
        "Inclusive minimum rating value added per roll (treasure tier scaling optional; see CloakLootRatingScaleByTreasureTier).";

    public int CloakLootRatingValueMin { get; set; } = 1;

    [JsonPropertyName("// CloakLootRatingValueMax")]
    public string CloakLootRatingValueMaxDoc { get; init; } =
        "Inclusive maximum rating value added per roll.";

    public int CloakLootRatingValueMax { get; set; } = 8;

    [JsonPropertyName("// CloakLootRatingScaleByTreasureTier")]
    public string CloakLootRatingScaleByTreasureTierDoc { get; init; } =
        "When true, rating value range is shifted by treasure profile tier (adds tier to max, min unchanged, clamped).";

    public bool CloakLootRatingScaleByTreasureTier { get; set; } = true;

    [JsonPropertyName("// CloakLootRatingTypes")]
    public string CloakLootRatingTypesDoc { get; init; } =
        "WorldObject int rating property names to shuffle for cloak rolls (same convention as BetterLootControl RatingTypes).";

    public List<string> CloakLootRatingTypes { get; set; } = new()
    {
        "DamageRating",
        "CritDamageRating",
        "DamageResistRating",
        "CritDamageResistRating",
        "CritRating",
        "HealingBoostRating",
        "GearMaxHealth",
    };

    [JsonPropertyName("// CloakLootCantripCountMin")]
    public string CloakLootCantripCountMinDoc { get; init; } = "Minimum armor-table cantrips added to each cloak (inclusive).";

    public int CloakLootCantripCountMin { get; set; } = 1;

    [JsonPropertyName("// CloakLootCantripCountMax")]
    public string CloakLootCantripCountMaxDoc { get; init; } = "Maximum armor-table cantrips added to each cloak (inclusive; ACE ThreadSafeRandom is inclusive on both ends).";

    public int CloakLootCantripCountMax { get; set; } = 5;

    [JsonPropertyName("// CloakLootAllowLegendaryCantrips")]
    public string CloakLootAllowLegendaryCantripsDoc { get; init; } =
        "When false, cantrip tier rolls are clamped to 3 (epic max) so vanilla legendary wield rules never apply; wield is cleared afterward regardless.";

    public bool CloakLootAllowLegendaryCantrips { get; set; } = false;
}
