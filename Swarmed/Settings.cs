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

    [JsonPropertyName("// MaxCallerHealth")]
    public string MaxCallerHealthDoc { get; init; } = "Creatures with max health above this skip call-for-help reinforcement logic.";
    public int MaxCallerHealth { get; set; } = 3000;

    [JsonPropertyName("// ReinforcementXpBonusMin")]
    public string ReinforcementXpBonusMinDoc { get; init; } = "XP bonus multiplier lower bound for reinforcement kills.";
    public float ReinforcementXpBonusMin { get; set; } = 0.75f;

    [JsonPropertyName("// ReinforcementXpBonusMax")]
    public string ReinforcementXpBonusMaxDoc { get; init; } = "XP bonus multiplier upper bound for reinforcement kills.";
    public float ReinforcementXpBonusMax { get; set; } = 2.0f;

    [JsonPropertyName("// ChaosReinforcementGrowthEnabled")]
    public string ChaosReinforcementGrowthEnabledDoc { get; init; } = "When true, reinforcements triggered by chaos-mode players grow in power per proc instead of shrinking.";
    public bool ChaosReinforcementGrowthEnabled { get; set; } = true;

    [JsonPropertyName("// ChaosReinforcementGrowthPercent")]
    public string ChaosReinforcementGrowthPercentDoc { get; init; } = "Growth per reinforcement proc (0.30 = 30%). Multiplier = (1 + growth) ^ killCount, capped at max.";
    public float ChaosReinforcementGrowthPercent { get; set; } = 0.30f;

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
    public string HealFractionOfVictimMaxHealthDoc { get; init; } = "Heal amount as a fraction of the victim corpse’s max health.";
    public float HealFractionOfVictimMaxHealth { get; set; } = 0.08f;
}
