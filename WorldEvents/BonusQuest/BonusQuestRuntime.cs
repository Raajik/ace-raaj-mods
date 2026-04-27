namespace WorldEvents;

using WorldEvents.BonusQuest.Models;

internal static class BonusQuestRuntime
{
    internal static ActiveBonusQuestData? ActiveWindow;
    internal static readonly object BonusQuestLock = new();

    // Fast O(1) check for hot path (QuestManager.CanSolve / Update)
    static readonly HashSet<string> _activeQuestNames = new(StringComparer.OrdinalIgnoreCase);

    // Last batch added — prevents same quests from appearing in back-to-back rotations
    static HashSet<string> _lastAddedNames = new(StringComparer.OrdinalIgnoreCase);

    // Quest completion log queue — drained by background timer
    static readonly ConcurrentQueue<QuestCompletionLogEntry> _logQueue = new();

    // Reminder tracking
    static DateTime _lastReminderUtc = DateTime.MinValue;

    internal static void LoadFromDisk(Settings settings)
    {
        BonusQuestPersistence.EnsureDirectories();

        lock (BonusQuestLock)
        {
            ActiveWindow = BonusQuestPersistence.LoadActiveWindow();

            // Migrate old saves that lack QuestExpiries: assign a fresh lifetime to existing quests
            if (ActiveWindow != null && ActiveWindow.QuestExpiries.Count == 0 && ActiveWindow.QuestNames.Count > 0)
            {
                var fallbackExpiry = DateTime.UtcNow.AddHours(settings.BonusQuestQuestLifetimeHours);
                foreach (var q in ActiveWindow.QuestNames)
                    ActiveWindow.QuestExpiries[q] = fallbackExpiry;
            }

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

            if (ActiveWindow == null)
            {
                InitBoard(settings, now);
                newlyAdded = ActiveWindow!.QuestNames.ToList();
            }
            else
            {
                // Prune expired quests
                var expired = ActiveWindow.QuestExpiries
                    .Where(kv => now >= kv.Value)
                    .Select(kv => kv.Key)
                    .ToList();
                foreach (var q in expired)
                {
                    ActiveWindow.QuestNames.Remove(q);
                    ActiveWindow.QuestExpiries.Remove(q);
                }

                // Rotate: add new quests if it's time and there's room (skip if scheduler is managing rotation)
                if (!settings.UseUnifiedScheduler && now >= ActiveWindow.WindowEndUtc)
                {
                    newlyAdded = AddRotationBatch(settings, now);
                    ActiveWindow.WindowEndUtc = now.AddHours(settings.BonusQuestIntervalHours);
                    BonusQuestPersistence.SaveActiveWindow(ActiveWindow);
                }
                else if (expired.Count > 0)
                {
                    BonusQuestPersistence.SaveActiveWindow(ActiveWindow);
                }
            }

            RebuildActiveSet();
        }

        if (newlyAdded.Count > 0)
            BonusQuestBroadcast.AnnounceQuestsAdded(settings, newlyAdded);

        // Reminder
        if (settings.BonusQuestReminderIntervalMinutes > 0)
        {
            var now = DateTime.UtcNow;
            if ((now - _lastReminderUtc).TotalMinutes >= settings.BonusQuestReminderIntervalMinutes)
            {
                _lastReminderUtc = now;
                BonusQuestBroadcast.AnnounceReminder(settings);
            }
        }

        FlushLogIfDue();
    }

    static void InitBoard(Settings settings, DateTime now)
    {
        ActiveWindow = new ActiveBonusQuestData
        {
            WindowStartUtc = now,
            WindowEndUtc = now.AddHours(settings.BonusQuestIntervalHours),
            QuestNames = new(),
            QuestExpiries = new(),
            PlayerCompletions = new(),
        };
        AddRotationBatch(settings, now);
        BonusQuestPersistence.SaveActiveWindow(ActiveWindow);

        ModManager.Log(
            $"[BonusQuest] Board initialized at {now:u} UTC — {ActiveWindow.QuestNames.Count} quest(s) added.",
            ModManager.LogLevel.Info);
    }

    /// <summary>
    /// Called by the unified event scheduler to rotate bonus quests.
    /// Initializes the board if necessary and updates the window end time.
    /// </summary>
    internal static List<string> TryStartScheduledRotation(Settings settings, DateTime now)
    {
        lock (BonusQuestLock)
        {
            if (ActiveWindow == null)
            {
                ActiveWindow = new ActiveBonusQuestData
                {
                    WindowStartUtc = now,
                    WindowEndUtc = now.AddHours(settings.BonusQuestIntervalHours),
                    QuestNames = new(),
                    QuestExpiries = new(),
                    PlayerCompletions = new(),
                };
            }

            ActiveWindow.WindowEndUtc = now.AddHours(settings.BonusQuestIntervalHours);
            var newlyAdded = AddRotationBatch(settings, now);
            BonusQuestPersistence.SaveActiveWindow(ActiveWindow);
            RebuildActiveSet();
            return newlyAdded;
        }
    }

    // Returns newly added quest names. Must be called within BonusQuestLock.
    static List<string> AddRotationBatch(Settings settings, DateTime now)
    {
        var alreadyActive = new HashSet<string>(ActiveWindow!.QuestNames, StringComparer.OrdinalIgnoreCase);
        var slots = settings.BonusQuestMaxActiveQuests - alreadyActive.Count;
        if (slots <= 0) return new();

        var count = Math.Min(settings.BonusQuestCount, slots);
        var completions = BonusQuestQuestDb.GetRecentCompletions(settings.BonusQuestLookbackDays);
        var picked = BonusQuestQuestDb.PickBonusQuests(settings, completions, _lastAddedNames, alreadyActive, count);

        var expiry = now.AddHours(settings.BonusQuestQuestLifetimeHours);
        foreach (var q in picked)
        {
            ActiveWindow.QuestNames.Add(q);
            ActiveWindow.QuestExpiries[q] = expiry;
        }

        _lastAddedNames = new HashSet<string>(picked, StringComparer.OrdinalIgnoreCase);

        if (picked.Count > 0)
            ModManager.Log(
                $"[BonusQuest] Rotation at {now:u} UTC — added: {string.Join(", ", picked)}; board size: {ActiveWindow.QuestNames.Count}",
                ModManager.LogLevel.Info);

        return picked;
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
        lock (BonusQuestLock)
        {
            if (ActiveWindow == null) return;
            var guid = player.Guid.Full;
            ActiveWindow.PlayerCompletions.TryGetValue(guid, out var prev);
            newCount = prev + 1;
            ActiveWindow.PlayerCompletions[guid] = newCount;
            BonusQuestPersistence.SaveActiveWindow(ActiveWindow);
        }

        var displayName = BonusQuestDisplay.QuestDisplayName(questName);
        var tierFraction = BonusQuestRewards.GetTierFraction(settings, newCount);
        var tierLabel = newCount switch { 1 => "1st", 2 => "2nd", 3 => "3rd", _ => $"{newCount}th" };

        if (BonusQuestRewards.TryGrantCompletionXp(settings, player, newCount, out var awarded))
            player.SendMessage(
                $"[EVENT - Bonus Quest] \"{displayName}\" bonus complete ({tierLabel} completion — {tierFraction * 100:0}% XP)! " +
                $"+{awarded:N0} XP awarded. (Your total completions: {newCount}.)");
        else
            player.SendMessage(
                $"[EVENT - Bonus Quest] \"{displayName}\" is a bonus quest! (Your total completions: {newCount}.)");

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
