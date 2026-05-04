using Swarmed.Creatures;

namespace Swarmed;

public class Settings
{
    [JsonPropertyName("// SwarmedSettings")]
    public string SwarmedSettingsDoc { get; init; } = "Reading order: below this line, every // key is documentation; the next block lists real settings in the same order. Swarmed adds call-for-help reinforcements (landscape/dungeon), CreatureEx champion variants, aura pulser and corpse exploiter tuning, and broadcast messages. Inside AuraPulser and CorpseExploiter: // lines first, then values (same order).";

    [JsonPropertyName("// LandscapeEnabled")]
    public string LandscapeEnabledDoc { get; init; } = "When true, open-world creatures may roll for reinforcement spawns on death (see LandscapeChance and spawn counts).";
    public bool LandscapeEnabled { get; set; } = true;

    [JsonPropertyName("// LandscapeChance")]
    public string LandscapeChanceDoc { get; init; } = "Base probability (0–1) for landscape call-for-help before online/landblock scaling.";
    public float LandscapeChance { get; set; } = 0.10f;

    [JsonPropertyName("// LandscapeSpawnMin")]
    public string LandscapeSpawnMinDoc { get; init; } = "Minimum reinforcements spawned on a successful landscape roll.";
    public int LandscapeSpawnMin { get; set; } = 1;

    [JsonPropertyName("// LandscapeSpawnMax")]
    public string LandscapeSpawnMaxDoc { get; init; } = "Maximum reinforcements spawned on a successful landscape roll.";
    public int LandscapeSpawnMax { get; set; } = 5;

    [JsonPropertyName("// DungeonEnabled")]
    public string DungeonEnabledDoc { get; init; } = "When true, dungeon creatures may roll for reinforcement spawns (see DungeonChance and spawn counts).";
    public bool DungeonEnabled { get; set; } = true;

    [JsonPropertyName("// DungeonChance")]
    public string DungeonChanceDoc { get; init; } = "Base probability (0–1) for dungeon call-for-help before scaling.";
    public float DungeonChance { get; set; } = 0.05f;

    [JsonPropertyName("// DungeonSpawnMin")]
    public string DungeonSpawnMinDoc { get; init; } = "Minimum reinforcements on a successful dungeon roll.";
    public int DungeonSpawnMin { get; set; } = 1;

    [JsonPropertyName("// DungeonSpawnMax")]
    public string DungeonSpawnMaxDoc { get; init; } = "Maximum reinforcements on a successful dungeon roll.";
    public int DungeonSpawnMax { get; set; } = 3;

    [JsonPropertyName("// ReinforcementHealthMin")]
    public string ReinforcementHealthMinDoc { get; init; } = "Reinforcement max-health fraction lower bound (rolled per spawn).";
    public float ReinforcementHealthMin { get; set; } = 0.3f;

    [JsonPropertyName("// ReinforcementHealthMax")]
    public string ReinforcementHealthMaxDoc { get; init; } = "Reinforcement max-health fraction upper bound (rolled per spawn).";
    public float ReinforcementHealthMax { get; set; } = 0.7f;

    [JsonPropertyName("// ReinforcementScaleMin")]
    public string ReinforcementScaleMinDoc { get; init; } = "Reinforcement visual scale lower bound.";
    public float ReinforcementScaleMin { get; set; } = 0.3f;

    [JsonPropertyName("// ReinforcementScaleMax")]
    public string ReinforcementScaleMaxDoc { get; init; } = "Reinforcement visual scale upper bound.";
    public float ReinforcementScaleMax { get; set; } = 0.8f;

    [JsonPropertyName("// HighHealthExemptionThreshold")]
    public string HighHealthExemptionThresholdDoc { get; init; } = "Creatures with max HP above this skip ALL Swarmed alterations (CreatureEx, reinforcements, buddy spawns, variation) unless whitelisted.";
    public int HighHealthExemptionThreshold { get; set; } = 5000;

    [JsonPropertyName("// HighHealthExemptionWhitelist")]
    public string HighHealthExemptionWhitelistDoc { get; init; } = "WCIDs that ARE allowed to receive Swarmed alterations even if their max HP exceeds the threshold.";
    public List<uint> HighHealthExemptionWhitelist { get; set; } = new();

    [JsonPropertyName("// ReinforcementXpBonusMin")]
    public string ReinforcementXpBonusMinDoc { get; init; } = "XP bonus multiplier lower bound for reinforcement kills.";
    public float ReinforcementXpBonusMin { get; set; } = 0.75f;

    [JsonPropertyName("// ReinforcementXpBonusMax")]
    public string ReinforcementXpBonusMaxDoc { get; init; } = "XP bonus multiplier upper bound for reinforcement kills.";
    public float ReinforcementXpBonusMax { get; set; } = 2.0f;

    [JsonPropertyName("// ReinforcementGrowthEnabled")]
    public string ReinforcementGrowthEnabledDoc { get; init; } = "When true, every reinforcement generation grows by ReinforcementGrowthPercent compounded per depth (1.3^depth).";
    public bool ReinforcementGrowthEnabled { get; set; } = true;

    [JsonPropertyName("// ReinforcementGrowthPercent")]
    public string ReinforcementGrowthPercentDoc { get; init; } = "Compounded growth per reinforcement generation (0.30 = 30% per spawn, so gen 2 = 69% stronger than original).";
    public float ReinforcementGrowthPercent { get; set; } = 0.05f;

    [JsonPropertyName("// ReinforcementGrowthMaxMultiplier")]
    public string ReinforcementGrowthMaxMultiplierDoc { get; init; } = "Cap on total reinforcement growth multiplier (e.g. 5.0 = 5× max).";
    public float ReinforcementGrowthMaxMultiplier { get; set; } = 5.0f;

    [JsonPropertyName("// ReinforcementCreatureExDepthThreshold")]
    public string ReinforcementCreatureExDepthThresholdDoc { get; init; } = "Reinforcement chain depth at which CreatureEx champions start spawning (e.g. 3 = 3rd generation).";
    public int ReinforcementCreatureExDepthThreshold { get; set; } = 3;

    [JsonPropertyName("// ReinforcementCreatureExChanceAtThreshold")]
    public string ReinforcementCreatureExChanceAtThresholdDoc { get; init; } = "Chance (0–1) to spawn CreatureEx once depth threshold is reached. 1.0 = always.";
    public float ReinforcementCreatureExChanceAtThreshold { get; set; } = 1.0f;

    [JsonPropertyName("// ChaosReinforcementGrowthEnabled")]
    public string ChaosReinforcementGrowthEnabledDoc { get; init; } = "When true, reinforcements triggered by chaos-mode players grow in power per proc instead of shrinking.";
    public bool ChaosReinforcementGrowthEnabled { get; set; } = true;

    [JsonPropertyName("// ChaosReinforcementGrowthPercent")]
    public string ChaosReinforcementGrowthPercentDoc { get; init; } = "Growth per reinforcement proc (0.30 = 30%). Multiplier = (1 + growth) ^ killCount, capped at max.";
    public float ChaosReinforcementGrowthPercent { get; set; } = 0.05f;

    [JsonPropertyName("// ChaosReinforcementMaxMultiplier")]
    public string ChaosReinforcementMaxMultiplierDoc { get; init; } = "Maximum escalation multiplier for chaos reinforcements (e.g. 5.0 = 5×).";
    public float ChaosReinforcementMaxMultiplier { get; set; } = 5.0f;

    [JsonPropertyName("// ChaosReinforcementCreatureExChance")]
    public string ChaosReinforcementCreatureExChanceDoc { get; init; } = "Chance (0–1) for a chaos reinforcement to spawn as a random CreatureEx champion instead of a scaled normal creature.";
    public float ChaosReinforcementCreatureExChance { get; set; } = 0.05f;

    [JsonPropertyName("// CreatureChance")]
    public string CreatureChanceDoc { get; init; } = "Base chance (0–1) for CreatureEx factory random champion replacement; can scale with online players when enabled.";
    public double CreatureChance { get; set; } = 0;

    [JsonPropertyName("// CreatureChanceScalesWithOnlinePlayers")]
    public string CreatureChanceScalesWithOnlinePlayersDoc { get; init; } = "When true, CreatureChance is increased by online player count × bonus, capped by CreatureChanceMaximumAfterScaling.";
    public bool CreatureChanceScalesWithOnlinePlayers { get; set; }

    [JsonPropertyName("// CreatureChanceBonusPerOnlinePlayer")]
    public string CreatureChanceBonusPerOnlinePlayerDoc { get; init; } = "Added to CreatureChance per shard online player when scaling is enabled.";
    public double CreatureChanceBonusPerOnlinePlayer { get; set; }

    [JsonPropertyName("// CreatureChanceMaximumAfterScaling")]
    public string CreatureChanceMaximumAfterScalingDoc { get; init; } = "Cap after online scaling; 0 or less is treated as 1.0.";
    public double CreatureChanceMaximumAfterScaling { get; set; } = 1.0;

    [JsonPropertyName("// ReinforcementChanceScalesWithOnlinePlayers")]
    public string ReinforcementChanceScalesWithOnlinePlayersDoc { get; init; } = "When true, landscape/dungeon base chance gains ReinforcementChanceBonusPerOnlinePlayer × shard online count, capped by ReinforcementChanceMaximumAfterScaling.";
    public bool ReinforcementChanceScalesWithOnlinePlayers { get; set; }

    [JsonPropertyName("// ReinforcementChanceBonusPerOnlinePlayer")]
    public string ReinforcementChanceBonusPerOnlinePlayerDoc { get; init; } = "Per-online-player add to reinforcement base chance when that scaling path applies.";
    public float ReinforcementChanceBonusPerOnlinePlayer { get; set; }

    [JsonPropertyName("// ReinforcementChanceMaximumAfterScaling")]
    public string ReinforcementChanceMaximumAfterScalingDoc { get; init; } = "Cap for reinforcement chance after online or landblock scaling; 0 or less treated as 1.";
    public float ReinforcementChanceMaximumAfterScaling { get; set; } = 1f;

    [JsonPropertyName("// ReinforcementChanceScalesWithLandblockPlayers")]
    public string ReinforcementChanceScalesWithLandblockPlayersDoc { get; init; } = "When true and the dying creature has a CurrentLandblock, landblock player count scales chance (takes precedence over online scaling when both apply per mod logic).";
    public bool ReinforcementChanceScalesWithLandblockPlayers { get; set; }

    [JsonPropertyName("// ReinforcementChanceBonusPerLandblockPlayer")]
    public string ReinforcementChanceBonusPerLandblockPlayerDoc { get; init; } = "Per landblock player add to reinforcement base chance when landblock scaling applies.";
    public float ReinforcementChanceBonusPerLandblockPlayer { get; set; }

    [JsonPropertyName("// AuraPulser")]
    public string AuraPulserSectionDoc { get; init; } = "AuraPulser CreatureEx: pulse radius, interval, damage fraction of pulser max health, max targets. Inside AuraPulser: // lines first, then values (same order).";
    public AuraPulserFeatureSettings AuraPulser { get; set; } = new();

    [JsonPropertyName("// CorpseExploiter")]
    public string CorpseExploiterSectionDoc { get; init; } = "CorpseExploiter CreatureEx: feed radius and heal fraction of victim max health. Inside CorpseExploiter: // lines first, then values (same order).";
    public CorpseExploiterFeatureSettings CorpseExploiter { get; set; } = new();

    [JsonPropertyName("// CreatureFeatures")]
    public string CreatureFeaturesDoc { get; init; } = "CreatureExType names enabled for random factory replacement (enum string names, JSON array).";
    public List<CreatureExType> CreatureFeatures { get; set; } = new()
    {
        CreatureExType.Horde,
    };

    [JsonPropertyName("// AllowPartialCreatureExTypeMatch")]
    public string AllowPartialCreatureExTypeMatchDoc { get; init; } = "When true, /cex accepts a unique substring of a CreatureExType name (e.g. stomp → Stomper).";
    public bool AllowPartialCreatureExTypeMatch { get; set; }

    [JsonPropertyName("// CallForHelpMessages")]
    public string CallForHelpMessagesDoc { get; init; } = "Random broadcast templates when call-for-help triggers; {0} = creature name.";
    public List<string> CallForHelpMessages { get; set; } = new()
    {
        "The {0} cries out for help!",
        "The {0} howls for its kin!",
        "The {0} shrieks as it falls!",
        "The {0} calls to its allies!",
        "The {0} wails in desperation!",
        "The {0} roars for reinforcement!",
        "The {0} screeches a warning!",
        "The {0} bellows in rage!",
        "The {0} keens for aid!",
        "The {0} summons its brethren!",
        "The {0} yowls for backup!",
        "The {0} bleats for help!",
        "Upon seeing the {0} fall, reinforcements arrive swiftly!",
        "The fall of the {0} draws more of its kind!",
        "Reinforcements rush in as the {0} goes down!",
        "More {0} pour in to avenge their fallen!",
        "The death of the {0} has been noticed—allies close in!",
        "As the {0} falls, its kin answer the call!",
        "Reinforcements surge forward at the {0}'s demise!",
        "The {0}'s fall signals others to join the fray!",
        "New foes emerge where the {0} fell!",
        "The {0} falls—and its brethren rise to take its place!",
        "Word of the {0}'s defeat spreads; reinforcements converge!",
        "No sooner does the {0} fall than more appear!",
        "The {0} dies with a final cry—and the pack responds!",
        "Reinforcements stream in where the {0} fell!",
        "With the {0} down, its allies rush to the fight!",
        "The {0} falls; from nearby, more close in!",
        "Its death cry echoes—more {0} answer!",
        "The fall of one {0} brings others running!",
    };

    [JsonPropertyName("// ChaosModeReinforcementChanceScale")]
    public string ChaosModeReinforcementChanceScaleDoc { get; init; } = "When effective chaos (killer or shard mean FakeFloat 11013) > 1, multiply reinforcement chance by this × (chaosFactor ÷ 3), capped at 1. Set 0 to disable.";
    public float ChaosModeReinforcementChanceScale { get; set; } = 1.5f;

    [JsonPropertyName("// ReinforcementChaosBlendOnlineMean")]
    public string ReinforcementChaosBlendOnlineMeanDoc { get; init; } = "When true, reinforcement chaos factor is max(killer 11013, mean online 11013) so chaos scales Swarmed even if the killer is not in /cm chaos.";
    public bool ReinforcementChaosBlendOnlineMean { get; set; } = true;

    [JsonPropertyName("// MaxReinforcementSpawnsPerMinute")]
    public string MaxReinforcementSpawnsPerMinuteDoc { get; init; } = "Shard-wide cap on reinforcement creatures spawned per rolling 60s (0 = unlimited).";
    public int MaxReinforcementSpawnsPerMinute { get; set; } = 100;

    [JsonPropertyName("// CreatureExChaosBoostScale")]
    public string CreatureExChaosBoostScaleDoc { get; init; } = "Scales CreatureEx random-replacement chance up when mean online chaos > 1: extra = (meanChaos - 1) × this, added as a multiplier toward CreatureExChaosBoostMaxMultiplier.";
    public double CreatureExChaosBoostScale { get; set; } = 0.35;

    [JsonPropertyName("// CreatureExChaosBoostMaxMultiplier")]
    public string CreatureExChaosBoostMaxMultiplierDoc { get; init; } = "Upper bound on total CreatureEx chance multiplier from chaos (e.g. 2 = double at most). 1 = disable chaos boost for CreatureEx.";
    public double CreatureExChaosBoostMaxMultiplier { get; set; } = 2.0;

    [JsonPropertyName("// BuddySpawns")]
    public string BuddySpawnsSectionDoc { get; init; } = "Timed buddy spawning: when idle, monsters spawn extra allies nearby.";
    public BuddySpawnSettings BuddySpawns { get; set; } = new();

    [JsonPropertyName("// WildCreatureEx")]
    public string WildCreatureExSectionDoc { get; init; } = "Random CreatureEx champion spawns in the wild (landscape and dungeon).";
    public WildCreatureExSettings WildCreatureEx { get; set; } = new();

    [JsonPropertyName("// CreatureVariation")]
    public string CreatureVariationSectionDoc { get; init; } = "Global creature stat/size variation applied to ALL spawns.";
    public CreatureVariationSettings CreatureVariation { get; set; } = new();

    [JsonPropertyName("// SpecialCreatureLoot")]
    public string SpecialCreatureLootSectionDoc { get; init; } = "Guaranteed bonus loot for CreatureEx special mobs (salvage, uncommon+, and random loot auto-imbued by EmpyreanAlteration).";
    public SpecialCreatureLootSettings SpecialCreatureLoot { get; set; } = new();

    [JsonPropertyName("// DynamicMobScaling")]
    public string DynamicMobScalingSectionDoc { get; init; } = "Scale mob level/difficulty/loot/XP to nearby players within the same landblock.";
    public DynamicMobScalingSettings DynamicMobScaling { get; set; } = new();

    [JsonPropertyName("// DungeonPopulation")]
    public string DungeonPopulationSectionDoc { get; init; } = "Maintains a minimum creature population inside dungeon landblocks that contain players.";
    public DungeonPopulationSettings DungeonPopulation { get; set; } = new();

    [JsonPropertyName("// CreatureExQuestPointReward")]
    public string CreatureExQuestPointRewardDoc { get; init; } = "Quest points awarded to the killer when a CreatureEx special mob dies. 0 = disabled. Requires Loremaster for QP tracking.";
    public float CreatureExQuestPointReward { get; set; } = 1.0f;
}

public class BuddySpawnSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "Enable timed buddy spawning.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// TimerIntervalSeconds")]
    public string TimerIntervalSecondsDoc { get; init; } = "How often to check landblocks for buddy spawning.";
    public int TimerIntervalSeconds { get; set; } = 30;

    [JsonPropertyName("// BaseThresholdSeconds")]
    public string BaseThresholdSecondsDoc { get; init; } = "Initial idle time before buddy spawning starts.";
    public int BaseThresholdSeconds { get; set; } = 120;

    [JsonPropertyName("// Chance")]
    public string ChanceDoc { get; init; } = "Per-creature chance (0-1) to spawn a buddy when threshold is met.";
    public float Chance { get; set; } = 0.25f;

    [JsonPropertyName("// ThresholdMultiplier")]
    public string ThresholdMultiplierDoc { get; init; } = "Multiplier applied to threshold after each successful spawn round.";
    public double ThresholdMultiplier { get; set; } = 2.0;

    [JsonPropertyName("// MaxThresholdSeconds")]
    public string MaxThresholdSecondsDoc { get; init; } = "Cap on idle threshold (prevents infinite growth).";
    public int MaxThresholdSeconds { get; set; } = 1800;

    [JsonPropertyName("// MaxPerLandblock")]
    public string MaxPerLandblockDoc { get; init; } = "Maximum buddy-spawned creatures per landblock.";
    public int MaxPerLandblock { get; set; } = 10;

    [JsonPropertyName("// SpawnRadiusMeters")]
    public string SpawnRadiusMetersDoc { get; init; } = "Radius in meters around parent creature for buddy spawn.";
    public float SpawnRadiusMeters { get; set; } = 10f;

    [JsonPropertyName("// ResetOnAnyDeath")]
    public string ResetOnAnyDeathDoc { get; init; } = "When true, any creature death resets the idle timer and threshold.";
    public bool ResetOnAnyDeath { get; set; } = true;
}

public class WildCreatureExSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "Enable random CreatureEx champion spawns in the wild.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// Chance")]
    public string ChanceDoc { get; init; } = "Base chance (0-1) for landscape creatures to spawn as CreatureEx.";
    public double Chance { get; set; } = 0.01;

    [JsonPropertyName("// DungeonChance")]
    public string DungeonChanceDoc { get; init; } = "Base chance (0-1) for dungeon creatures to spawn as CreatureEx.";
    public double DungeonChance { get; set; } = 0.005;
}

public class CreatureVariationSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "Enable global stat/size variation on ALL creature spawns.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// HealthMin")]
    public string HealthMinDoc { get; init; } = "Minimum health multiplier (e.g. 0.92 = 92% of base).";
    public float HealthMin { get; set; } = 0.92f;

    [JsonPropertyName("// HealthMax")]
    public string HealthMaxDoc { get; init; } = "Maximum health multiplier (e.g. 1.21 = 121% of base).";
    public float HealthMax { get; set; } = 1.21f;

    [JsonPropertyName("// ScaleMin")]
    public string ScaleMinDoc { get; init; } = "Minimum visual scale multiplier.";
    public float ScaleMin { get; set; } = 0.92f;

    [JsonPropertyName("// ScaleMax")]
    public string ScaleMaxDoc { get; init; } = "Maximum visual scale multiplier.";
    public float ScaleMax { get; set; } = 1.21f;

    [JsonPropertyName("// DamageRatingMin")]
    public string DamageRatingMinDoc { get; init; } = "Minimum damage rating multiplier.";
    public float DamageRatingMin { get; set; } = 0.92f;

    [JsonPropertyName("// DamageRatingMax")]
    public string DamageRatingMaxDoc { get; init; } = "Maximum damage rating multiplier.";
    public float DamageRatingMax { get; set; } = 1.21f;

    [JsonPropertyName("// LevelVariance")]
    public string LevelVarianceDoc { get; init; } = "Maximum level change based on multiplier (1 = ±1 level).";
    public int LevelVariance { get; set; } = 1;
}

public class AuraPulserFeatureSettings
{
    [JsonPropertyName("// PulseRadiusMeters")]
    public string PulseRadiusMetersDoc { get; init; } = "Radius in meters for AuraPulser damage pulses.";
    public float PulseRadiusMeters { get; set; } = 10f;

    [JsonPropertyName("// PulseIntervalSeconds")]
    public string PulseIntervalSecondsDoc { get; init; } = "Seconds between pulses.";
    public float PulseIntervalSeconds { get; set; } = 6f;

    [JsonPropertyName("// DamageFractionOfPulserMaxHealth")]
    public string DamageFractionOfPulserMaxHealthDoc { get; init; } = "Each pulse deals this fraction of the pulser creature’s max health as damage (before other rules).";
    public float DamageFractionOfPulserMaxHealth { get; set; } = 0.04f;

    [JsonPropertyName("// MaxPulseTargets")]
    public string MaxPulseTargetsDoc { get; init; } = "Maximum victims affected per pulse.";
    public int MaxPulseTargets { get; set; } = 10;
}

public class CorpseExploiterFeatureSettings
{
    [JsonPropertyName("// FeedRadiusMeters")]
    public string FeedRadiusMetersDoc { get; init; } = "Radius to find corpses to exploit for healing.";
    public float FeedRadiusMeters { get; set; } = 12f;

    [JsonPropertyName("// HealFractionOfVictimMaxHealth")]
    public string HealFractionOfVictimMaxHealthDoc { get; init; } = "Heal amount as a fraction of the victim corpse's max health.";
    public float HealFractionOfVictimMaxHealth { get; set; } = 0.08f;
}

public class SpecialCreatureLootSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, CreatureEx special mobs drop guaranteed bonus loot (salvage, uncommon+, and random loot).";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// SalvageCountMin")]
    public string SalvageCountMinDoc { get; init; } = "Minimum salvage items dropped by a special creature.";
    public int SalvageCountMin { get; set; } = 1;

    [JsonPropertyName("// SalvageCountMax")]
    public string SalvageCountMaxDoc { get; init; } = "Maximum salvage items dropped by a special creature.";
    public int SalvageCountMax { get; set; } = 3;

    [JsonPropertyName("// UncommonPlusCountMin")]
    public string UncommonPlusCountMinDoc { get; init; } = "Minimum uncommon+ items dropped by a special creature.";
    public int UncommonPlusCountMin { get; set; } = 1;

    [JsonPropertyName("// UncommonPlusCountMax")]
    public string UncommonPlusCountMaxDoc { get; init; } = "Maximum uncommon+ items dropped by a special creature.";
    public int UncommonPlusCountMax { get; set; } = 1;

    [JsonPropertyName("// ImbuedCountMin")]
    public string ImbuedCountMinDoc { get; init; } = "Minimum random loot items (auto-imbued by EmpyreanAlteration) dropped.";
    public int ImbuedCountMin { get; set; } = 2;

    [JsonPropertyName("// ImbuedCountMax")]
    public string ImbuedCountMaxDoc { get; init; } = "Maximum random loot items (auto-imbued by EmpyreanAlteration) dropped.";
    public int ImbuedCountMax { get; set; } = 5;

    [JsonPropertyName("// FallbackDeathTreasureDid")]
    public string FallbackDeathTreasureDidDoc { get; init; } = "When the creature has no DeathTreasureType on its weenie, use this treasure_death.id for uncommon+ and imbued bonus rolls (0 = skip those rolls). Default 228 is tier 7 stock ACE profile.";
    public uint FallbackDeathTreasureDid { get; set; } = 228;
}

public class DungeonPopulationSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, dungeon landblocks with players maintain a minimum creature population.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// TargetMobCount")]
    public string TargetMobCountDoc { get; init; } = "Desired living creatures per dungeon landblock.";
    public int TargetMobCount { get; set; } = 50;

    [JsonPropertyName("// CheckIntervalSeconds")]
    public string CheckIntervalSecondsDoc { get; init; } = "How often to check and top-up dungeon populations.";
    public int CheckIntervalSeconds { get; set; } = 30;

    [JsonPropertyName("// MaxSpawnsPerTick")]
    public string MaxSpawnsPerTickDoc { get; init; } = "Maximum creatures spawned in a single tick to avoid spikes.";
    public int MaxSpawnsPerTick { get; set; } = 5;

    [JsonPropertyName("// MinSpawnDistanceFromPlayer")]
    public string MinSpawnDistanceFromPlayerDoc { get; init; } = "Minimum distance from any player for new spawns (meters).";
    public float MinSpawnDistanceFromPlayer { get; set; } = 50f;

    [JsonPropertyName("// MaxSpawnDistanceFromPlayer")]
    public string MaxSpawnDistanceFromPlayerDoc { get; init; } = "Maximum distance from players for new spawns (meters).";
    public float MaxSpawnDistanceFromPlayer { get; set; } = 120f;
}

public class DynamicMobScalingSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, mobs scale to nearby player levels.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// SoloScalePercent")]
    public string SoloScalePercentDoc { get; init; } = "Percent of player level to scale to when solo (100 = exact match).";
    public float SoloScalePercent { get; set; } = 100f;

    [JsonPropertyName("// GroupScalePercent")]
    public string GroupScalePercentDoc { get; init; } = "Percent of average group level to scale to (100 = exact match).";
    public float GroupScalePercent { get; set; } = 100f;

    [JsonPropertyName("// MinScaleLevel")]
    public string MinScaleLevelDoc { get; init; } = "Minimum level a mob can be scaled to.";
    public int MinScaleLevel { get; set; } = 1;

    [JsonPropertyName("// MaxScaleLevel")]
    public string MaxScaleLevelDoc { get; init; } = "Maximum level a mob can be scaled to. Defaults to the server's current XP table max (reads DatManager.PortalDat.XpTable.CharacterLevelXPList.Count at runtime).";
    public int MaxScaleLevel { get; set; } = 0;

    [JsonPropertyName("// LevelVariance")]
    public string LevelVarianceDoc { get; init; } = "Random level deviation applied after target level is computed (±this value). Adds flavor variation so not every mob in an area has identical stats. Applied before min/max caps.";
    public int LevelVariance { get; set; } = 15;

    [JsonPropertyName("// LandscapeSoftCap")]
    public string LandscapeSoftCapDoc { get; init; } = "When true, landscape mobs have soft level caps based on world area tiers.";
    public bool LandscapeSoftCap { get; set; } = true;

    [JsonPropertyName("// LandscapeTierMaxLevels")]
    public string LandscapeTierMaxLevelsDoc { get; init; } = "Maximum scaled level per landscape tier. Tier 1 = starter areas, Tier 7 = endgame.";
    public Dictionary<int, int> LandscapeTierMaxLevels { get; set; } = new()
    {
        [1] = 50, [2] = 75, [3] = 100, [4] = 125,
        [5] = 150, [6] = 200, [7] = 275
    };

    [JsonPropertyName("// XpScaleEnabled")]
    public string XpScaleEnabledDoc { get; init; } = "When true, XP reward scales with the difference between scaled and base level.";
    public bool XpScaleEnabled { get; set; } = true;

    [JsonPropertyName("// XpScalePercent")]
    public string XpScalePercentDoc { get; init; } = "Percent of level difference to apply to XP (100 = full proportional scaling).";
    public float XpScalePercent { get; set; } = 100f;

    [JsonPropertyName("// OptOutProperty")]
    public string OptOutPropertyDoc { get; init; } = "PropertyBool used to track per-player opt-out. Shared with QOL /xp mob_scaling command.";
    public int OptOutProperty { get; set; } = 40151;

    [JsonPropertyName("// AdminLevelOverrideProperty")]
    public string AdminLevelOverridePropertyDoc { get; init; } = "PropertyInt id for admin/god players to set a custom effective level for scaling (e.g., /setproperty int 40154 999). 0 = disabled; falls back to player.Level.";
    public int AdminLevelOverrideProperty { get; set; } = 0;

    [JsonPropertyName("// DebugScaling")]
    public string DebugScalingDoc { get; init; } = "When true, logs scaling decisions (base, target, max, highest player level) to server console for each scaled mob.";
    public bool DebugScaling { get; set; } = false;
}
