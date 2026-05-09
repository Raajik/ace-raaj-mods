namespace CommonGoals;

public class Settings
{
    [JsonPropertyName("// CommonGoals")]
    public string CommonGoalsDoc { get; init; } = "Personal instanced loot: each qualifying player who tagged a creature gets their own Corpse WorldObject with an independent loot roll. AutoLoot hooks apply to personal corpses automatically. Requires Loremaster Achievement Tier 1.";

    [JsonPropertyName("// Enable")]
    public string EnableDoc { get; init; } = "Master toggle for CommonGoals instanced loot.";
    public bool Enable { get; set; } = true;

    [JsonPropertyName("// RequiredAchievementTier")]
    public string RequiredAchievementTierDoc { get; init; } = "Minimum Achievement Tier (Loremaster FakeInt 11050) a player must have to receive a personal corpse. Players below the tier get no personal corpse and no notification.";
    public int RequiredAchievementTier { get; set; } = 1;

    [JsonPropertyName("// MinDamagePercent")]
    public string MinDamagePercentDoc { get; init; } = "Minimum fraction (0–1) of total creature health a player must have dealt to qualify for a personal corpse. 0 = any damage qualifies. 0.05 = at least 5% of total health.";
    public double MinDamagePercent { get; set; } = 0.0;

    [JsonPropertyName("// MaxPersonalCorpsesPerKill")]
    public string MaxPersonalCorpsesPerKillDoc { get; init; } = "Cap on how many personal corpses are spawned per creature death (excluding the shared corpse). Prevents excessive corpse spam on heavily-grouped fights.";
    public int MaxPersonalCorpsesPerKill { get; set; } = 8;

    [JsonPropertyName("// PersonalCorpseLifetimeSeconds")]
    public string PersonalCorpseLifetimeSecondsDoc { get; init; } = "How long (seconds) a personal corpse persists before auto-decaying. Default 300 = 5 minutes.";
    public int PersonalCorpseLifetimeSeconds { get; set; } = 300;

    [JsonPropertyName("// NotifyOnPersonalLoot")]
    public string NotifyOnPersonalLootDoc { get; init; } = "When true, send the qualifying player a system message when their personal corpse is spawned.";
    public bool NotifyOnPersonalLoot { get; set; } = true;

    [JsonPropertyName("// LootTierOverride")]
    public string LootTierOverrideDoc { get; init; } = "Override the loot tier (1–8) for personal corpses. -1 = use the creature's own treasure tier (default).";
    public int LootTierOverride { get; set; } = -1;

    [JsonPropertyName("// EnableNoSplitXp")]
    public string EnableNoSplitXpDoc { get; init; } = "When true, fellowship members each receive the FULL XP amount instead of dividing it. No effect on allegiance pass-up.";
    public bool EnableNoSplitXp { get; set; } = false;

    [JsonPropertyName("// EnableNoSplitLuminance")]
    public string EnableNoSplitLuminanceDoc { get; init; } = "When true, fellowship members each receive the FULL luminance amount instead of dividing it.";
    public bool EnableNoSplitLuminance { get; set; } = false;
}
