namespace AchievementUnlocked;

// Info-level ACE_Log lines for operator visibility (tune via Settings.json).
static class AchievementActivityTelemetry
{
    static readonly object RollLock = new();
    static Settings? _settings;
    static DateTime _rollupUtcDay;
    static long _dayKills;
    static long _dayKillAchievementIncrements;
    static long _dayQuestAchievementIncrements;
    static long _dayQuestSolveMilestones;
    static long _dayUnlocks;
    static long _dayExternalProgress;

    public static void Bind(Settings? settings)
    {
        _settings = settings;
        lock (RollLock)
        {
            _rollupUtcDay = DateTime.UtcNow.Date;
            _dayKills = 0;
            _dayKillAchievementIncrements = 0;
            _dayQuestAchievementIncrements = 0;
            _dayQuestSolveMilestones = 0;
            _dayUnlocks = 0;
            _dayExternalProgress = 0;
        }
    }

    static bool TelemetryOn =>
        _settings?.EnableAchievementFramework == true
        && _settings.EnableActivityTelemetry;

    static void MaybeRollUtcDay()
    {
        if (!TelemetryOn)
            return;

        var today = DateTime.UtcNow.Date;
        lock (RollLock)
        {
            if (today <= _rollupUtcDay)
                return;

            ModManager.Log(
                $"[AchievementUnlocked] DAY_ROLLUP utcDate={_rollupUtcDay:yyyy-MM-dd} killHooks={Interlocked.Read(ref _dayKills)} killAchIncrements={Interlocked.Read(ref _dayKillAchievementIncrements)} questAchIncrements={Interlocked.Read(ref _dayQuestAchievementIncrements)} questSolveMilestones={Interlocked.Read(ref _dayQuestSolveMilestones)} unlocks={Interlocked.Read(ref _dayUnlocks)} extProgressCalls={Interlocked.Read(ref _dayExternalProgress)}",
                ModManager.LogLevel.Info);

            Interlocked.Exchange(ref _dayKills, 0);
            Interlocked.Exchange(ref _dayKillAchievementIncrements, 0);
            Interlocked.Exchange(ref _dayQuestAchievementIncrements, 0);
            Interlocked.Exchange(ref _dayQuestSolveMilestones, 0);
            Interlocked.Exchange(ref _dayUnlocks, 0);
            Interlocked.Exchange(ref _dayExternalProgress, 0);
            _rollupUtcDay = today;
        }
    }

    public static void LogPlayerEnter(Player player, int questSolvedCount, int lifetimeKills, int progressPoints)
    {
        if (!TelemetryOn || _settings?.LogLoginSnapshot != true)
            return;

        MaybeRollUtcDay();
        var account = player.Account?.AccountId ?? 0u;
        ModManager.Log(
            $"[AchievementUnlocked] LOGIN player={player.Name} account={account} questsSolved={questSolvedCount} lifetimeKills={lifetimeKills} progPts={progressPoints}",
            ModManager.LogLevel.Info);
    }

    public static void LogKillHook(Player player, Creature creature, int lifetimeKillsAfter, int questSolvedCount, int progressPoints)
    {
        if (!TelemetryOn || _settings?.LogKillHooks != true)
            return;

        MaybeRollUtcDay();
        Interlocked.Increment(ref _dayKills);
        var account = player.Account?.AccountId ?? 0u;
        ModManager.Log(
            $"[AchievementUnlocked] KILL player={player.Name} account={account} wcid={creature.WeenieClassId} lifetimeKills={lifetimeKillsAfter} questsSolved={questSolvedCount} progPts={progressPoints}",
            ModManager.LogLevel.Info);
    }

    public static void LogQuestManagerUpdate(Player player, string questName)
    {
        if (!TelemetryOn || _settings?.LogQuestManagerUpdates != true)
            return;

        MaybeRollUtcDay();
        ModManager.Log(
            $"[AchievementUnlocked] QUEST_UPDATE player={player.Name} quest={questName}",
            ModManager.LogLevel.Info);
    }

    public static void LogQuestSolveMilestone(Player player, string questName, int beforeCount, int afterCount)
    {
        if (!TelemetryOn || _settings?.LogQuestSolveMilestones != true)
            return;

        MaybeRollUtcDay();
        Interlocked.Increment(ref _dayQuestSolveMilestones);
        var account = player.Account?.AccountId ?? 0u;
        ModManager.Log(
            $"[AchievementUnlocked] QUEST_SOLVE player={player.Name} account={account} quest={questName} solvedCount {beforeCount}->{afterCount}",
            ModManager.LogLevel.Info);
    }

    public static void LogQuestAchievementProgress(Player player, string achievementId, int progress, int required, string questName)
    {
        if (!TelemetryOn || _settings?.LogQuestAchievementProgress != true)
            return;

        MaybeRollUtcDay();
        Interlocked.Increment(ref _dayQuestAchievementIncrements);
        ModManager.Log(
            $"[AchievementUnlocked] QUEST_ACH id={achievementId} player={player.Name} quest={questName} progress={progress}/{required}",
            ModManager.LogLevel.Info);
    }

    public static void LogKillAchievementProgress(Player player, string achievementId, int progress, int required, uint creatureWcid)
    {
        if (!TelemetryOn || _settings?.LogKillAchievementProgress != true)
            return;

        MaybeRollUtcDay();
        Interlocked.Increment(ref _dayKillAchievementIncrements);
        ModManager.Log(
            $"[AchievementUnlocked] KILL_ACH id={achievementId} player={player.Name} wcid={creatureWcid} progress={progress}/{required}",
            ModManager.LogLevel.Info);
    }

    public static void LogUnlock(Player player, string achievementId, string achievementName)
    {
        if (!TelemetryOn || _settings?.LogUnlockEvents != true)
            return;

        MaybeRollUtcDay();
        Interlocked.Increment(ref _dayUnlocks);
        var account = player.Account?.AccountId ?? 0u;
        ModManager.Log(
            $"[AchievementUnlocked] UNLOCK id={achievementId} name={achievementName} player={player.Name} account={account}",
            ModManager.LogLevel.Info);
    }

    public static void LogExternalProgress(string source, Player player, string achievementId, int oldValue, int newValue)
    {
        if (!TelemetryOn || _settings?.LogExternalProgressCalls != true)
            return;

        MaybeRollUtcDay();
        Interlocked.Increment(ref _dayExternalProgress);
        ModManager.Log(
            $"[AchievementUnlocked] EXT_PROGRESS source={source} id={achievementId} player={player.Name} {oldValue}->{newValue}",
            ModManager.LogLevel.Info);
    }
}
