namespace Swarmed;

// Last call-for-help evaluation (PostDie reinforcement path) for admin diagnostics.
public static class CallForHelpDebug
{
    static readonly object Gate = new();

    public static long TotalEvaluations { get; private set; }
    public static long TotalSpawns { get; private set; }
    public static long TotalSpawnCount { get; private set; }
    public static long RollPasses { get; private set; }
    public static long RollFails { get; private set; }

    public static CallForHelpSnapshot Last { get; private set; }

    public static void Record(in CallForHelpSnapshot snapshot, int spawnsCreated)
    {
        lock (Gate)
        {
            TotalEvaluations++;
            Last = snapshot;
            if (spawnsCreated > 0)
            {
                TotalSpawns++;
                TotalSpawnCount += spawnsCreated;
            }

            if (snapshot.RollSucceeded.HasValue)
            {
                if (snapshot.RollSucceeded.Value)
                    RollPasses++;
                else
                    RollFails++;
            }
        }
    }
}

public readonly struct CallForHelpSnapshot
{
    public DateTime UtcTime { get; init; }
    public string Outcome { get; init; }
    public string? CreatureName { get; init; }
    public uint WeenieClassId { get; init; }
    public bool IsDungeon { get; init; }
    public string PathLabel { get; init; }
    public bool PathEnabled { get; init; }
    public float Chance { get; init; }
    public double? RollValue { get; init; }
    public bool? RollSucceeded { get; init; }
    public int SpawnMin { get; init; }
    public int SpawnMax { get; init; }
    public int SpawnsCreated { get; init; }
}
