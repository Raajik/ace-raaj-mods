namespace WorldEvents;

/// <summary>
/// Central event scheduler. Rotates through enabled event types on a fixed timer.
/// 
/// Rules:
/// - Events start every EventStartIntervalMinutes (default 45)
/// - Each event runs for EventDurationMinutes (default 60)
/// - Consecutive events overlap by 15 minutes
/// - The same event type never runs back-to-back
/// - Start + 5-minute-warning + results messages are sent for all events
/// 
/// To add a new event type:
/// 1. Add it to the WorldEventType enum
/// 2. Add a case in EventStarters
/// 3. Add a case in EventLandblockProviders
/// 4. Add cases in SendStartMessage / SendEndMessage / SendWarningMessage
/// </summary>
internal static class EventScheduler
{
    // ── Configuration (mirrors Settings) ─────────────────────────────────
    internal static double EventDurationMinutes = 60.0;
    internal static double EventStartIntervalMinutes = 45.0;
    internal static bool FiveMinuteWarningEnabled = true;

    // ── State ────────────────────────────────────────────────────────────
    static readonly List<WorldEventType> _rotation = new();
    static WorldEventType? _lastEventType;
    static DateTime _nextStartUtc = DateTime.MinValue;
    static readonly List<ActiveScheduledEvent> _activeEvents = new();
    static readonly object _schedulerLock = new();

    // Tracks whether a 5-minute warning was sent for each active event
    static readonly HashSet<int> _warningSent = new(); // hash of ActiveScheduledEvent

    internal static IReadOnlyList<ActiveScheduledEvent> ActiveEvents => _activeEvents.AsReadOnly();

    // ── Initialization ───────────────────────────────────────────────────

    internal static void Initialize(Settings settings)
    {
        lock (_schedulerLock)
        {
            _rotation.Clear();
            _activeEvents.Clear();
            _warningSent.Clear();

            // Build rotation from enabled events
            if (settings.EnableInvasion) _rotation.Add(WorldEventType.Invasion);
            if (settings.CullEnabled) _rotation.Add(WorldEventType.Cull);
            if (settings.SaleEnabled) _rotation.Add(WorldEventType.Sale);
            if (settings.EnableBonusQuest) _rotation.Add(WorldEventType.BonusQuest);
            // Hunt is handled separately — it runs continuously but gets bonus windows
            if (settings.EnableHunt) _rotation.Add(WorldEventType.Hunt);

            EventDurationMinutes = settings.EventDurationMinutes > 0 ? settings.EventDurationMinutes : 60.0;
            EventStartIntervalMinutes = settings.EventStartIntervalMinutes > 0 ? settings.EventStartIntervalMinutes : 45.0;
            FiveMinuteWarningEnabled = settings.EventFiveMinuteWarning;

            // First event starts in 5 minutes (grace period for server startup)
            _nextStartUtc = DateTime.UtcNow.AddMinutes(5);
            _lastEventType = null;

            ModManager.Log($"[EventScheduler] Initialized with {_rotation.Count} event types. Next event at {_nextStartUtc:u} UTC.", ModManager.LogLevel.Info);
        }
    }

    // ── Main Tick ────────────────────────────────────────────────────────

    internal static void Tick(Settings settings)
    {
        if (!settings.UseUnifiedScheduler)
            return;

        lock (_schedulerLock)
        {
            var now = DateTime.UtcNow;

            // 1. End expired events
            foreach (var evt in _activeEvents.Where(e => now >= e.EndTime).ToList())
            {
                EndEvent(evt, settings);
            }

            // 2. Send 5-minute warnings
            if (FiveMinuteWarningEnabled)
            {
                foreach (var evt in _activeEvents.Where(e => !_warningSent.Contains(e.GetHashCode()) && now >= e.EndTime.AddMinutes(-5)).ToList())
                {
                    SendWarningMessage(evt, settings);
                    _warningSent.Add(evt.GetHashCode());
                }
            }

            // 3. Start new event if it's time
            if (now >= _nextStartUtc && _rotation.Count > 0)
            {
                StartNextEvent(settings);
                _nextStartUtc = now.AddMinutes(EventStartIntervalMinutes);
            }
        }
    }

    // ── Event Lifecycle ──────────────────────────────────────────────────

    static void StartNextEvent(Settings settings)
    {
        var now = DateTime.UtcNow;
        var endTime = now.AddMinutes(EventDurationMinutes);

        // Pick next event type (not the same as last)
        WorldEventType nextType;
        if (_rotation.Count == 1)
        {
            nextType = _rotation[0];
        }
        else
        {
            var eligible = _rotation.Where(t => t != _lastEventType).ToList();
            nextType = eligible[Random.Shared.Next(eligible.Count)];
        }

        _lastEventType = nextType;

        // Start the event
        string? eventName = null;
        bool started = false;
        List<uint> landblocks = new();

        switch (nextType)
        {
            case WorldEventType.Invasion:
                started = TryStartInvasion(settings, out eventName, out landblocks);
                break;
            case WorldEventType.Cull:
                started = TryStartCull(settings, out eventName, out landblocks);
                break;
            case WorldEventType.Sale:
                started = TryStartSale(settings, out eventName, out landblocks);
                break;
            case WorldEventType.BonusQuest:
                started = TryStartBonusQuest(settings, out eventName);
                break;
            case WorldEventType.Hunt:
                started = TryStartHunt(settings, out eventName);
                break;
        }

        if (!started)
        {
            ModManager.Log($"[EventScheduler] Failed to start {nextType} — will retry next cycle.", ModManager.LogLevel.Warn);
            return;
        }

        var evt = new ActiveScheduledEvent(nextType, eventName ?? nextType.ToString(), now, endTime, landblocks);
        _activeEvents.Add(evt);

        SendStartMessage(evt, settings);
        ModManager.Log($"[EventScheduler] Started {evt.EventType} '{evt.EventName}' at {now:u} UTC (ends {endTime:u}).", ModManager.LogLevel.Info);
    }

    static void EndEvent(ActiveScheduledEvent evt, Settings settings)
    {
        _activeEvents.Remove(evt);
        _warningSent.Remove(evt.GetHashCode());

        switch (evt.EventType)
        {
            case WorldEventType.Invasion:
                EndInvasion(settings);
                break;
            case WorldEventType.Cull:
                EndCull(settings);
                break;
            case WorldEventType.Sale:
                EndSale(settings);
                break;
            case WorldEventType.BonusQuest:
                EndBonusQuest(settings);
                break;
            case WorldEventType.Hunt:
                EndHunt(settings);
                break;
        }

        SendEndMessage(evt, settings);
        ModManager.Log($"[EventScheduler] Ended {evt.EventType} '{evt.EventName}'.", ModManager.LogLevel.Info);
    }

    // ── Event Starters ───────────────────────────────────────────────────

    static bool TryStartInvasion(Settings s, out string? name, out List<uint> landblocks)
    {
        name = null;
        landblocks = new List<uint>();
        if (!s.EnableInvasion) return false;

        lock (InvasionRuntime.InvasionLock)
        {
            if (InvasionRuntime.ActiveInvasion != null) return false;

            // Use the existing start logic but bypass the cooldown check
            var result = InvasionRuntime.TryStartWaveBypassCooldown(s);
            if (result != null)
            {
                name = result.Towns.Count == 1 ? result.Towns[0].TownName : $"{result.Towns.Count} towns";
                landblocks = result.Towns
                    .Select(t => s.InvasionTowns.FirstOrDefault(ts => ts.TownName.Equals(t.TownName, StringComparison.OrdinalIgnoreCase)))
                    .Where(ts => ts != null)
                    .SelectMany(ts => ts!.DynamicLandblocks.Select(lb => (uint)lb))
                    .ToList();
                return true;
            }
            return false;
        }
    }

    static bool TryStartCull(Settings s, out string? name, out List<uint> landblocks)
    {
        name = null;
        landblocks = new List<uint>();
        if (!s.CullEnabled) return false;

        lock (CullRuntime.CullLock)
        {
            if (CullRuntime.ActiveCull != null) return false;

            CullRuntime.TryStartCull(s, DateTime.UtcNow);
            if (CullRuntime.ActiveCull != null)
            {
                name = CullRuntime.ActiveCull.TargetSpeciesName;
                // Cull affects all landscape landblocks (global event)
                return true;
            }
            return false;
        }
    }

    static bool TryStartSale(Settings s, out string? name, out List<uint> landblocks)
    {
        name = null;
        landblocks = new List<uint>();
        if (!s.SaleEnabled) return false;

        var sale = SaleRuntime.TryStartScheduledSale(s);
        if (sale != null)
        {
            name = sale.TownName;
            landblocks = sale.CenterLandblocks?.Select(lb => (uint)lb).ToList() ?? new List<uint>();
            return true;
        }
        return false;
    }

    static bool TryStartBonusQuest(Settings s, out string? name)
    {
        name = "Bonus Quest Board";
        if (!s.EnableBonusQuest) return false;

        var newlyAdded = BonusQuestRuntime.TryStartScheduledRotation(s, DateTime.UtcNow);
        return true;
    }

    static bool TryStartHunt(Settings s, out string? name)
    {
        name = "Hunt";
        if (!s.EnableHunt) return false;

        lock (HuntRuntime.HuntLock)
        {
            // Finalize previous hunt if any, then start new window
            if (HuntRuntime.ActiveHunt != null)
            {
                HuntRuntime.FinalizeHuntLeaderboard(s, HuntRuntime.ActiveHunt);
            }
            HuntRuntime.BeginNewHuntWindow(s, finalizePrevious: false);
            return HuntRuntime.ActiveHunt != null;
        }
    }

    // ── Event Enders ─────────────────────────────────────────────────────

    static void EndInvasion(Settings s)
    {
        lock (InvasionRuntime.InvasionLock)
        {
            if (InvasionRuntime.ActiveInvasion != null)
            {
                InvasionRuntime.StopWaveInternal(InvasionRuntime.ActiveInvasion);
                InvasionRuntime.ActiveInvasion = null;
                InvasionPersistence.ClearActiveInvasion();
            }
        }
    }

    static void EndCull(Settings s)
    {
        lock (CullRuntime.CullLock)
        {
            if (CullRuntime.ActiveCull != null)
            {
                var ended = CullRuntime.ActiveCull;
                CullRuntime.ActiveCull = null;
                CullPersistence.ClearActiveCull();
                Task.Run(() => CullRewards.DistributeRewards(ended, s));
                CullBroadcast.AnnounceCullEnd(ended);
            }
        }
    }

    static void EndSale(Settings s)
    {
        var ended = SaleRuntime.ActiveSale;
        if (ended != null)
        {
            SaleRuntime.EndScheduledSale();
            SaleBroadcast.AnnounceSaleEnd(ended);
        }
    }

    static void EndBonusQuest(Settings s)
    {
        // Bonus quests don't "end" — they just rotate. Nothing to do here.
    }

    static void EndHunt(Settings s)
    {
        lock (HuntRuntime.HuntLock)
        {
            if (HuntRuntime.ActiveHunt != null)
            {
                HuntRuntime.FinalizeHuntLeaderboard(s, HuntRuntime.ActiveHunt);
                HuntRuntime.ActiveHunt = null;
            }
        }
    }

    // ── Messaging ────────────────────────────────────────────────────────

    static void SendStartMessage(ActiveScheduledEvent evt, Settings s)
    {
        var duration = (int)EventDurationMinutes;
        string msg = evt.EventType switch
        {
            WorldEventType.Invasion => $"[EVENT] An invasion has begun in {evt.EventName}! Defend the towns! ({duration}m remaining)",
            WorldEventType.Cull => $"[EVENT] A cull is underway — {evt.EventName}s are swarming! ({duration}m remaining)",
            WorldEventType.Sale => $"[EVENT] A sale has started in {evt.EventName}! ({duration}m remaining)",
            WorldEventType.BonusQuest => $"[EVENT] New bonus quests are available! Check the board! ({duration}m remaining)",
            WorldEventType.Hunt => $"[EVENT] A new hunt has begun! Bonus targets are active! ({duration}m remaining)",
            _ => $"[EVENT] {evt.EventName} has started! ({duration}m remaining)"
        };

        WorldEventsBroadcast.Send(msg);
    }

    static void SendWarningMessage(ActiveScheduledEvent evt, Settings s)
    {
        string msg = evt.EventType switch
        {
            WorldEventType.Invasion => $"[EVENT] The invasion in {evt.EventName} is ending in 5 minutes!",
            WorldEventType.Cull => $"[EVENT] The {evt.EventName} cull ends in 5 minutes!",
            WorldEventType.Sale => $"[EVENT] The sale in {evt.EventName} ends in 5 minutes!",
            WorldEventType.BonusQuest => $"[EVENT] Bonus quest board rotates in 5 minutes!",
            WorldEventType.Hunt => $"[EVENT] The hunt ends in 5 minutes!",
            _ => $"[EVENT] {evt.EventName} ends in 5 minutes!"
        };

        WorldEventsBroadcast.Send(msg);
    }

    static void SendEndMessage(ActiveScheduledEvent evt, Settings s)
    {
        string msg = evt.EventType switch
        {
            WorldEventType.Invasion => $"[EVENT] The invasion in {evt.EventName} has ended!",
            WorldEventType.Cull => $"[EVENT] The {evt.EventName} cull has ended!",
            WorldEventType.Sale => $"[EVENT] The sale in {evt.EventName} has ended!",
            WorldEventType.BonusQuest => $"[EVENT] Bonus quests have rotated!",
            WorldEventType.Hunt => $"[EVENT] The hunt has ended! Check the leaderboards!",
            _ => $"[EVENT] {evt.EventName} has ended!"
        };

        WorldEventsBroadcast.Send(msg);
    }

    // ── Kill Tracking Helpers ────────────────────────────────────────────

    /// <summary>
    /// Returns true if the given landblock currently has an active event.
    /// Used by kill trackers to credit kills to events.
    /// </summary>
    internal static bool IsLandblockInActiveEvent(uint landblockId, out WorldEventType? eventType)
    {
        lock (_schedulerLock)
        {
            foreach (var evt in _activeEvents)
            {
                if (evt.Landblocks.Contains(landblockId))
                {
                    eventType = evt.EventType;
                    return true;
                }
            }
            eventType = null;
            return false;
        }
    }

    /// <summary>
    /// Returns all currently active event landblocks.
    /// </summary>
    internal static List<uint> GetAllActiveEventLandblocks()
    {
        lock (_schedulerLock)
        {
            return _activeEvents.SelectMany(e => e.Landblocks).Distinct().ToList();
        }
    }
}

/// <summary>
/// Types of world events managed by the scheduler.
/// </summary>
public enum WorldEventType
{
    Hunt,
    Invasion,
    Cull,
    Sale,
    BonusQuest,
    PoiHunt,
    ScavengerHunt
}

/// <summary>
/// Record of a currently active scheduled event.
/// </summary>
public record ActiveScheduledEvent(
    WorldEventType EventType,
    string EventName,
    DateTime StartTime,
    DateTime EndTime,
    List<uint> Landblocks
);
