namespace WorldEvents;

using System.Text.RegularExpressions;
using WorldEvents.BonusQuest.Models;

internal static class BonusQuestRuntime
{
    internal static ActiveBonusQuestData? ActiveWindow;
    internal static readonly object BonusQuestLock = new();

    // Fast O(1) check for hot path (QuestManager.CanSolve / Update)
    static readonly HashSet<string> _activeQuestNames = new(StringComparer.OrdinalIgnoreCase);

    // Quest completion log queue — drained by background timer
    static readonly ConcurrentQueue<QuestCompletionLogEntry> _logQueue = new();

    // Cached regex patterns for generated quest names
    static List<Regex>? _generatedPatterns;

    internal static void LoadFromDisk(Settings settings)
    {
        BonusQuestPersistence.EnsureDirectories();

        lock (BonusQuestLock)
        {
            ActiveWindow = BonusQuestPersistence.LoadActiveWindow();

            // Migrate old saves that lack QuestMultipliers
            if (ActiveWindow != null && ActiveWindow.QuestMultipliers == null)
                ActiveWindow.QuestMultipliers = new Dictionary<string, int>(StringComparer.OrdinalIgnoreCase);

            RebuildActiveSet();
        }

        TickTimer(settings);
    }

    internal static void TickTimer(Settings settings)
    {
        if (!settings.EnableBonusQuest) return;

        List<string> newlyAdded = new();

        lock (BonusQuestLock)
        {
            var now = DateTime.UtcNow;
            var nextRotation = GetNextRotationUtc();

            if (ActiveWindow == null)
            {
                InitBoard(settings, now);
                newlyAdded = ActiveWindow!.QuestNames.ToList();
            }
            else if (now >= nextRotation)
            {
                // Daily rotation: clear board and repopulate
                newlyAdded = RotateBoard(settings, now);
            }

            RebuildActiveSet();
        }

        if (newlyAdded.Count > 0)
            BonusQuestBroadcast.AnnounceQuestsAdded(settings, newlyAdded);

        FlushLogIfDue();
    }

    /// <summary>
    /// Returns the next 9:00 PM CST rotation time in UTC.
    /// </summary>
    static DateTime GetNextRotationUtc()
    {
        var cst = TimeZoneInfo.FindSystemTimeZoneById("Central Standard Time");
        var nowCst = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, cst);
        var today9pm = new DateTime(nowCst.Year, nowCst.Month, nowCst.Day, 21, 0, 0, DateTimeKind.Unspecified);
        var nextRotationCst = nowCst.TimeOfDay >= today9pm.TimeOfDay ? today9pm.AddDays(1) : today9pm;
        return TimeZoneInfo.ConvertTimeToUtc(nextRotationCst, cst);
    }

    static void InitBoard(Settings settings, DateTime now)
    {
        ActiveWindow = new ActiveBonusQuestData
        {
            WindowStartUtc = now,
            WindowEndUtc = GetNextRotationUtc(),
            QuestNames = new(),
            QuestExpiries = new(),
            PlayerCompletions = new(),
            QuestMultipliers = new(),
        };
        PopulateBoard(settings);
        BonusQuestPersistence.SaveActiveWindow(ActiveWindow);

        ModManager.Log(
            $"[BonusQuest] Board initialized at {now:u} UTC — {ActiveWindow.QuestNames.Count} quest(s) added.",
            ModManager.LogLevel.Info);
    }

    /// <summary>
    /// Called by the unified event scheduler to rotate bonus quests.
    /// </summary>
    internal static List<string> TryStartScheduledRotation(Settings settings, DateTime now)
    {
        lock (BonusQuestLock)
        {
            return RotateBoard(settings, now);
        }
    }

    // Full board clear + repopulate. Must be called within BonusQuestLock.
    static List<string> RotateBoard(Settings settings, DateTime now)
    {
        if (ActiveWindow == null)
        {
            InitBoard(settings, now);
            return ActiveWindow!.QuestNames.ToList();
        }

        ActiveWindow.WindowStartUtc = now;
        ActiveWindow.WindowEndUtc = GetNextRotationUtc();
        ActiveWindow.QuestNames.Clear();
        ActiveWindow.QuestExpiries.Clear();
        ActiveWindow.PlayerCompletions.Clear();
        ActiveWindow.QuestMultipliers.Clear();

        PopulateBoard(settings);
        BonusQuestPersistence.SaveActiveWindow(ActiveWindow);
        RebuildActiveSet();

        ModManager.Log(
            $"[BonusQuest] Daily rotation at {now:u} UTC — {ActiveWindow.QuestNames.Count} quest(s) added.",
            ModManager.LogLevel.Info);

        return ActiveWindow.QuestNames.ToList();
    }

    // Populates the board with 2 top + 5 mid + 3 bottom quests.
    // Must be called within BonusQuestLock.
    static void PopulateBoard(Settings settings)
    {
        var completions = BonusQuestQuestDb.GetRecentCompletions(settings.BonusQuestLookbackDays);
        var ranked = completions
            .Where(kv => !IsGeneratedQuestName(kv.Key, settings))
            .OrderByDescending(kv => kv.Value)
            .Select(kv => kv.Key)
            .ToList();

        var topPool = ranked.Take(25).ToList();
        var midPool = ranked.Skip(25).Take(125).ToList();
        var bottomPool = ranked.Skip(150)
            .Where(q => completions[q] >= settings.BonusQuestBottomTierMinCompletions)
            .ToList();

        var random = Random.Shared;
        var picked = new List<(string Name, int Multiplier)>();

        // Pick 2 top (2x)
        picked.AddRange(PickFromPool(topPool, 2, 2, random, completions));
        // Pick 5 mid (5x)
        picked.AddRange(PickFromPool(midPool, 5, 5, random, completions));
        // Pick 3 bottom (10x)
        picked.AddRange(PickFromPool(bottomPool, 3, 10, random, completions));

        // Autofill: if any tier is short, fill from next tier down
        if (picked.Count < 10)
        {
            var fallback = midPool.Concat(topPool).Where(q => !picked.Any(p => p.Name.Equals(q, StringComparison.OrdinalIgnoreCase))).ToList();
            var needed = 10 - picked.Count;
            picked.AddRange(PickFromPool(fallback, needed, 5, random, completions));
        }
        if (picked.Count < 10)
        {
            var fallback = topPool.Where(q => !picked.Any(p => p.Name.Equals(q, StringComparison.OrdinalIgnoreCase))).ToList();
            var needed = 10 - picked.Count;
            picked.AddRange(PickFromPool(fallback, needed, 2, random, completions));
        }
        if (picked.Count < 10)
        {
            // Last resort: any eligible quest regardless of tier
            var fallback = completions.Keys
                .Where(q => !IsGeneratedQuestName(q, settings)
                    && !picked.Any(p => p.Name.Equals(q, StringComparison.OrdinalIgnoreCase)))
                .ToList();
            var needed = 10 - picked.Count;
            picked.AddRange(PickFromPool(fallback, needed, 2, random, completions));
        }

        var expiry = GetNextRotationUtc();
        foreach (var (name, mult) in picked)
        {
            ActiveWindow!.QuestNames.Add(name);
            ActiveWindow.QuestExpiries[name] = expiry;
            ActiveWindow.QuestMultipliers[name] = mult;
        }
    }

    static List<(string Name, int Multiplier)> PickFromPool(List<string> pool, int count, int multiplier, Random random, Dictionary<string, long> completions)
    {
        var result = new List<(string, int)>();
        var available = pool.ToList();

        while (result.Count < count && available.Count > 0)
        {
            // Weight by inverse completion count (rarer = higher weight within tier)
            var weights = available.Select(name =>
            {
                var c = completions.TryGetValue(name, out var val) ? val : 1;
                return 1.0 / (1.0 + Math.Log10(1.0 + c));
            }).ToList();

            var sum = weights.Sum();
            var roll = random.NextDouble() * sum;
            double acc = 0;
            var idx = available.Count - 1;
            for (var i = 0; i < available.Count; i++)
            {
                acc += weights[i];
                if (roll <= acc) { idx = i; break; }
            }

            result.Add((available[idx], multiplier));
            available.RemoveAt(idx);
        }

        return result;
    }

    static bool IsGeneratedQuestName(string questName, Settings settings)
    {
        if (string.IsNullOrEmpty(questName)) return true;

        _generatedPatterns ??= settings.BonusQuestGeneratedNamePatterns
            .Select(p => new Regex(p, RegexOptions.IgnoreCase))
            .ToList();

        return _generatedPatterns.Any(rx => rx.IsMatch(questName));
    }

    static void RebuildActiveSet()
    {
        _activeQuestNames.Clear();
        if (ActiveWindow != null)
            foreach (var q in ActiveWindow.QuestNames)
                _activeQuestNames.Add(q);
    }

    // Hot path — called on every QuestManager.CanSolve
    internal static bool IsActiveBonusQuest(string questName)
        => ActiveWindow != null && _activeQuestNames.Contains(questName);

    // Called from QuestManager.Update postfix when a bonus quest was completed
    internal static void OnQuestCompleted(Player player, string questName, Settings settings)
    {
        int newCount;
        int multiplier;
        lock (BonusQuestLock)
        {
            if (ActiveWindow == null) return;
            var guid = player.Guid.Full;
            ActiveWindow.PlayerCompletions.TryGetValue(guid, out var prev);
            newCount = prev + 1;
            ActiveWindow.PlayerCompletions[guid] = newCount;
            ActiveWindow.QuestMultipliers.TryGetValue(questName, out multiplier);
            BonusQuestPersistence.SaveActiveWindow(ActiveWindow);
        }

        var participantCount = 0;
        lock (BonusQuestLock)
            participantCount = ActiveWindow?.PlayerCompletions.Count ?? 0;

        var displayName = BonusQuestDisplay.QuestDisplayName(questName);

        // Grant repeatQB instead of XP
        if (multiplier > 0)
        {
            var currentQp = (float)(player.GetProperty(FakeFloat.QuestBonus) ?? 0);
            player.SetProperty(FakeFloat.QuestBonus, currentQp + multiplier);
            player.SendMessage(
                $"[EVENT - Bonus Quest] \"{displayName}\" bonus complete! +{multiplier} repeatQB awarded! (Your total completions: {newCount}.)");
        }
        else
        {
            player.SendMessage(
                $"[EVENT - Bonus Quest] \"{displayName}\" is a bonus quest! (Your total completions: {newCount}.)");
        }

        if (participantCount == 1 && settings.SoloCompetitorBonus.Enable && newCount == 1)
        {
            WorldEventsBroadcast.Send(settings.SoloCompetitorBonus.BroadcastMessage.Replace("{Name}", player.Name ?? "Unknown"));
        }

        try
        {
            var acct = player.Account;
            if (acct != null)
            {
                string windowStart;
                lock (BonusQuestLock)
                    windowStart = ActiveWindow?.WindowStartUtc.ToString("u") ?? "";

                BonusQuestPersistence.AppendParticipationEntry(new AccountEventParticipationEntry(
                    TimestampUnix: (uint)Time.GetUnixTime(),
                    AccountId: acct.AccountId,
                    AccountName: acct.AccountName ?? "",
                    PlayerGuid: player.Guid.Full,
                    PlayerName: player.Name ?? "",
                    EventType: "BonusQuest",
                    EventDetail: questName,
                    WindowStartUtc: windowStart));

                BonusQuestParticipation.RecordCompletion(
                    acct.AccountId, acct.AccountName ?? "",
                    player.Guid.Full, player.Name ?? "",
                    "BonusQuest", questName);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] Participation tracking failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    // Called from QuestManager.Update postfix for ALL quest completions (for the log)
    internal static void EnqueueLogEntry(uint playerGuid, string questName)
    {
        var entry = new QuestCompletionLogEntry((uint)Time.GetUnixTime(), playerGuid, questName);
        _logQueue.Enqueue(entry);
    }

    static void FlushLogIfDue()
    {
        if (_logQueue.IsEmpty) return;

        var batch = new List<QuestCompletionLogEntry>();
        while (_logQueue.TryDequeue(out var entry))
            batch.Add(entry);

        if (batch.Count > 0)
            BonusQuestPersistence.AppendLogEntries(batch);
    }
}
