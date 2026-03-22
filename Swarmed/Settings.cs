using Swarmed.Creatures;

namespace Swarmed;

// Configuration for call-for-help reinforcement spawns (landscape vs dungeon, chance, count, health, messages).
// CreatureEx: random champion spawn replacement (see CreatureFeatures for enabled variant patches).
public class Settings
{
    public bool LandscapeEnabled { get; set; } = true;
    public float LandscapeChance { get; set; } = 0.10f;
    public int LandscapeSpawnMin { get; set; } = 1;
    public int LandscapeSpawnMax { get; set; } = 5;

    public bool DungeonEnabled { get; set; } = true;
    public float DungeonChance { get; set; } = 0.05f;
    public int DungeonSpawnMin { get; set; } = 1;
    public int DungeonSpawnMax { get; set; } = 3;

    public float ReinforcementHealthMin { get; set; } = 0.3f;
    public float ReinforcementHealthMax { get; set; } = 0.7f;

    public float ReinforcementScaleMin { get; set; } = 0.3f;
    public float ReinforcementScaleMax { get; set; } = 0.8f;

    public int MaxCallerHealth { get; set; } = 3000;

    public float ReinforcementXpBonusMin { get; set; } = 0.75f;
    public float ReinforcementXpBonusMax { get; set; } = 2.0f;

    public double CreatureChance { get; set; } = 0;

    // When true, CreatureEx factory chance uses shard online count: min(CreatureChance + count * bonus, max).
    public bool CreatureChanceScalesWithOnlinePlayers { get; set; }

    public double CreatureChanceBonusPerOnlinePlayer { get; set; }

    // Cap after scaling; <= 0 treated as 1.0.
    public double CreatureChanceMaximumAfterScaling { get; set; } = 1.0;

    // Call-for-help landscape/dungeon rolls: same pattern on the active path’s base chance.
    // Precedence when computing the roll: if ReinforcementChanceScalesWithLandblockPlayers is true and the dying creature has a CurrentLandblock, landblock player count is used; else if ReinforcementChanceScalesWithOnlinePlayers is true, shard-wide online count; else base chance only.
    public bool ReinforcementChanceScalesWithOnlinePlayers { get; set; }

    public float ReinforcementChanceBonusPerOnlinePlayer { get; set; }

    // Cap after scaling for both online and landblock reinforcement scaling; <= 0 treated as 1f.
    public float ReinforcementChanceMaximumAfterScaling { get; set; } = 1f;

    // Reinforcement roll: scale base chance by players on the dying creature’s landblock (see precedence above).
    public bool ReinforcementChanceScalesWithLandblockPlayers { get; set; }

    public float ReinforcementChanceBonusPerLandblockPlayer { get; set; }

    public AuraPulserFeatureSettings AuraPulser { get; set; } = new();

    public CorpseExploiterFeatureSettings CorpseExploiter { get; set; } = new();

    public List<CreatureExType> CreatureFeatures { get; set; } = new()
    {
        CreatureExType.Horde,
    };

    // When true, /cex accepts a substring of the CreatureExType name only if it matches exactly one enum (e.g. "stomp" -> Stomper).
    public bool AllowPartialCreatureExTypeMatch { get; set; }

    // Format string: {0} = creature name. One chosen at random when the event triggers.
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
}

public class AuraPulserFeatureSettings
{
    public float PulseRadiusMeters { get; set; } = 10f;

    public float PulseIntervalSeconds { get; set; } = 6f;

    public float DamageFractionOfPulserMaxHealth { get; set; } = 0.04f;

    public int MaxPulseTargets { get; set; } = 10;
}

public class CorpseExploiterFeatureSettings
{
    public float FeedRadiusMeters { get; set; } = 12f;

    public float HealFractionOfVictimMaxHealth { get; set; } = 0.08f;
}
