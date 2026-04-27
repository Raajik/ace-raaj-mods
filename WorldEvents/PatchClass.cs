namespace WorldEvents;

[HarmonyPatch]
public partial class PatchClass : BasicPatch<Settings>
{
    internal static Settings? CurrentSettings;

    CancellationTokenSource? _huntTimerCts;
    CancellationTokenSource? _bonusQuestTimerCts;
    CancellationTokenSource? _invasionTimerCts;
    CancellationTokenSource? _saleTimerCts;
    CancellationTokenSource? _cullTimerCts;
    CancellationTokenSource? _schedulerTimerCts;
    CancellationTokenSource? _poiHuntTimerCts;
    static bool _bonusQuestPatchesApplied;

    public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName)
    {
    }

    public override void Start()
    {
        base.Start();
        ReloadSettings();
        HuntPersistence.EnsureDirectories();
        HuntRuntime.LoadAllFromDisk(CurrentSettings ?? new Settings());
        StartHuntBackgroundTimer();

        BonusQuestRuntime.LoadFromDisk(CurrentSettings ?? new Settings());
        StartBonusQuestBackgroundTimer();
        TryApplyBonusQuestPatches();

        InvasionRuntime.LoadFromDisk(CurrentSettings ?? new Settings());
        StartInvasionBackgroundTimer();

        SaleRuntime.LoadFromDisk(CurrentSettings ?? new Settings());
        StartSaleBackgroundTimer();

        CullRuntime.LoadFromDisk(CurrentSettings ?? new Settings());
        StartCullBackgroundTimer();

        PoiHuntRuntime.LoadFromDisk(CurrentSettings ?? new Settings());
        StartPoiHuntBackgroundTimer();

        EventScheduler.Initialize(CurrentSettings ?? new Settings());
        StartSchedulerBackgroundTimer();
    }

    public override async Task OnWorldOpen()
    {
        ReloadSettings();
        HuntRuntime.LoadAllFromDisk(CurrentSettings ?? new Settings());
        StartHuntBackgroundTimer();
        BonusQuestRuntime.LoadFromDisk(CurrentSettings ?? new Settings());
        StartBonusQuestBackgroundTimer();
        InvasionRuntime.LoadFromDisk(CurrentSettings ?? new Settings());
        StartInvasionBackgroundTimer();
        SaleRuntime.LoadFromDisk(CurrentSettings ?? new Settings());
        StartSaleBackgroundTimer();
        CullRuntime.LoadFromDisk(CurrentSettings ?? new Settings());
        StartCullBackgroundTimer();
        PoiHuntRuntime.LoadFromDisk(CurrentSettings ?? new Settings());
        StartPoiHuntBackgroundTimer();
        EventScheduler.Initialize(CurrentSettings ?? new Settings());
        StartSchedulerBackgroundTimer();
        await base.OnWorldOpen();
    }

    public override void Stop()
    {
        try { _huntTimerCts?.Cancel(); } catch { }
        try { _bonusQuestTimerCts?.Cancel(); } catch { }
        try { _invasionTimerCts?.Cancel(); } catch { }
        try { _saleTimerCts?.Cancel(); } catch { }
        try { _cullTimerCts?.Cancel(); } catch { }
        try { _schedulerTimerCts?.Cancel(); } catch { }
        try { _poiHuntTimerCts?.Cancel(); } catch { }
        _bonusQuestPatchesApplied = false;

        try
        {
            if (CurrentSettings != null)
            {
                HuntRuntime.FlushGlobalIfDue(new Settings { DebounceSaveMilliseconds = 0 });
                var snap = new GlobalSpeciesKillsData { Species = new Dictionary<uint, long>(HuntRuntime.GlobalSpeciesKills) };
                HuntPersistence.SaveGlobal(snap);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[WorldEvents] Stop flush failed: {ex.Message}", ModManager.LogLevel.Warn);
        }

        base.Stop();
    }

    void ReloadSettings()
    {
        try { Settings = SettingsContainer.Settings ?? new Settings(); }
        catch { Settings ??= new Settings(); }
        CurrentSettings = Settings;
    }

    void StartHuntBackgroundTimer()
    {
        try { _huntTimerCts?.Cancel(); } catch { }

        _huntTimerCts = new CancellationTokenSource();
        var token = _huntTimerCts.Token;
        _ = Task.Run(async () =>
        {
            while (!token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(10_000, token).ConfigureAwait(false);
                    var s = CurrentSettings;
                    if (s?.EnableHunt == true)
                        HuntRuntime.TickHuntTimer(s);
                }
                catch (OperationCanceledException) { break; }
                catch (Exception ex)
                {
                    ModManager.Log($"[WorldEvents] Hunt timer: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }

    void StartBonusQuestBackgroundTimer()
    {
        try { _bonusQuestTimerCts?.Cancel(); } catch { }

        _bonusQuestTimerCts = new CancellationTokenSource();
        var token = _bonusQuestTimerCts.Token;
        _ = Task.Run(async () =>
        {
            while (!token.IsCancellationRequested)
            {
                try
                {
                    // 30s tick — windows are 20h so we don't need high frequency
                    await Task.Delay(30_000, token).ConfigureAwait(false);
                    var s = CurrentSettings;
                    if (s?.EnableBonusQuest == true)
                        BonusQuestRuntime.TickTimer(s);
                }
                catch (OperationCanceledException) { break; }
                catch (Exception ex)
                {
                    ModManager.Log($"[WorldEvents] BonusQuest timer: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }

    void StartInvasionBackgroundTimer()
    {
        try { _invasionTimerCts?.Cancel(); } catch { }

        _invasionTimerCts = new CancellationTokenSource();
        var token = _invasionTimerCts.Token;
        _ = Task.Run(async () =>
        {
            while (!token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(60_000, token).ConfigureAwait(false);
                    var s = CurrentSettings;
                    if (s?.EnableInvasion == true)
                        InvasionRuntime.TickTimer(s);
                }
                catch (OperationCanceledException) { break; }
                catch (Exception ex)
                {
                    ModManager.Log($"[WorldEvents] Invasion timer: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }

    void StartCullBackgroundTimer()
    {
        try { _cullTimerCts?.Cancel(); } catch { }

        _cullTimerCts = new CancellationTokenSource();
        var token = _cullTimerCts.Token;
        _ = Task.Run(async () =>
        {
            while (!token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(30_000, token).ConfigureAwait(false);
                    var s = CurrentSettings;
                    if (s != null)
                        CullRuntime.TickTimer(s);
                }
                catch (OperationCanceledException) { break; }
                catch (Exception ex)
                {
                    ModManager.Log($"[WorldEvents] Cull timer: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }

    void StartSaleBackgroundTimer()
    {
        try { _saleTimerCts?.Cancel(); } catch { }

        _saleTimerCts = new CancellationTokenSource();
        var token = _saleTimerCts.Token;
        _ = Task.Run(async () =>
        {
            while (!token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(30_000, token).ConfigureAwait(false);
                    var s = CurrentSettings;
                    if (s != null)
                        SaleRuntime.TickTimer(s);
                }
                catch (OperationCanceledException) { break; }
                catch (Exception ex)
                {
                    ModManager.Log($"[WorldEvents] Sale timer: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }

    void StartSchedulerBackgroundTimer()
    {
        try { _schedulerTimerCts?.Cancel(); } catch { }

        _schedulerTimerCts = new CancellationTokenSource();
        var token = _schedulerTimerCts.Token;
        _ = Task.Run(async () =>
        {
            while (!token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(30_000, token).ConfigureAwait(false);
                    var s = CurrentSettings;
                    if (s != null)
                        EventScheduler.Tick(s);
                }
                catch (OperationCanceledException) { break; }
                catch (Exception ex)
                {
                    ModManager.Log($"[WorldEvents] Scheduler timer: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }

    void StartPoiHuntBackgroundTimer()
    {
        try { _poiHuntTimerCts?.Cancel(); } catch { }

        _poiHuntTimerCts = new CancellationTokenSource();
        var token = _poiHuntTimerCts.Token;
        _ = Task.Run(async () =>
        {
            while (!token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(30_000, token).ConfigureAwait(false);
                    var s = CurrentSettings;
                    if (s?.EnablePoiHunt == true)
                        PoiHuntRuntime.Tick(s);
                }
                catch (OperationCanceledException) { break; }
                catch (Exception ex)
                {
                    ModManager.Log($"[WorldEvents] POI Hunt timer: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }

    void TryApplyBonusQuestPatches()
    {
        if (_bonusQuestPatchesApplied) return;
        try
        {
            var canSolve = AccessTools.Method(typeof(QuestManager), nameof(QuestManager.CanSolve));
            var update   = AccessTools.Method(typeof(QuestManager), "Update", new[] { typeof(string) });

            if (canSolve == null || update == null)
            {
                ModManager.Log("[WorldEvents] BonusQuest: QuestManager methods not found.", ModManager.LogLevel.Error);
                return;
            }

            ModC.Harmony?.Patch(canSolve, null,
                new HarmonyMethod(typeof(BonusQuestPatches), nameof(BonusQuestPatches.PostfixCanSolve)));
            ModC.Harmony?.Patch(update, null,
                new HarmonyMethod(typeof(BonusQuestPatches), nameof(BonusQuestPatches.PostfixUpdate)));

            _bonusQuestPatchesApplied = true;
            ModManager.Log("[WorldEvents] BonusQuest patches applied.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[WorldEvents] BonusQuest patch failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    // /top — leaderboard hub for world event participation.
    [CommandHandler("top", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Show world event leaderboards. Usage: /top events | /top qb")]
    public static void HandleTop(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player) return;

        var sub = parameters.Length > 0 ? parameters[0].Trim().ToLowerInvariant() : "";

        switch (sub)
        {
            case "bq" or "qb" or "bonusquest" or "bonus":
                ShowQbLeaderboard(player);
                break;
            case "events" or "event" or "":
                ShowEventsLeaderboard(player);
                break;
            default:
                player.SendMessage("[WorldEvents] Usage: /top events | /top bq");
                break;
        }
    }

    static void ShowEventsLeaderboard(Player player)
    {
        var board = ParticipationLedger.GetLeaderboard();
        if (board.Count == 0)
        {
            player.SendMessage("[WorldEvents] No participation data yet.");
            return;
        }
        player.SendMessage("[WorldEvents] Top participants (all events):");
        var top = board.Take(10).ToList();
        for (var i = 0; i < top.Count; i++)
        {
            var entry = top[i];
            player.SendMessage($"  {i + 1}. Account {entry.AccountId} — {entry.TotalEventCompletions} completion{(entry.TotalEventCompletions == 1 ? "" : "s")}");
        }
    }

    static void ShowQbLeaderboard(Player player)
    {
        var board = ParticipationLedger.GetLeaderboard();
        var qbBoard = board
            .Where(e => e.CompletionsByEventType.ContainsKey("BonusQuest"))
            .OrderByDescending(e => e.CompletionsByEventType["BonusQuest"])
            .ToList();

        if (qbBoard.Count == 0)
        {
            player.SendMessage("[Bonus Quest] No participation data yet.");
            return;
        }
        player.SendMessage("[Bonus Quest] Top participants (unique flags / repeats):");
        var top = qbBoard.Take(10).ToList();
        for (var i = 0; i < top.Count; i++)
        {
            var entry = top[i];
            var total = entry.CompletionsByEventType["BonusQuest"];
            var unique = entry.UniqueQuestNamesByEventType.TryGetValue("BonusQuest", out var names) ? names.Count : total;
            var repeats = total - unique;
            var repeatStr = repeats > 0 ? $", {repeats} repeat{(repeats == 1 ? "" : "s")}" : "";
            player.SendMessage($"  {i + 1}. Account {entry.AccountId} — {unique} unique{repeatStr}");
        }
    }

    // Admin: per-account participation detail.
    [CommandHandler("worldevents", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, -1,
        "WorldEvents admin. Usage: /worldevents participation <accountId>")]
    public static void HandleWorldEventsAdmin(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player) return;

        var sub = parameters.Length > 0 ? parameters[0].Trim().ToLowerInvariant() : "";
        if (sub == "participation" && parameters.Length > 1)
        {
            if (!uint.TryParse(parameters[1], out var accountId))
            {
                player.SendMessage("[WorldEvents] Invalid account id.");
                return;
            }

            var summary = ParticipationLedger.Load(accountId);
            if (summary.TotalEventCompletions == 0)
            {
                player.SendMessage($"[WorldEvents] No participation data for account {accountId}.");
                return;
            }
            player.SendMessage($"[WorldEvents] Account {summary.AccountId}");
            player.SendMessage($"  Total completions: {summary.TotalEventCompletions}");
            foreach (var kvp in summary.CompletionsByEventType)
                player.SendMessage($"  {kvp.Key}: {kvp.Value}");
            player.SendMessage($"  First: {summary.FirstCompletionUtc}  Last: {summary.LastCompletionUtc}");
            var chars = string.Join(", ", summary.Characters.Values);
            if (!string.IsNullOrEmpty(chars))
                player.SendMessage($"  Characters: {chars}");
        }
        else
        {
            player.SendMessage("[WorldEvents] Usage: /worldevents participation <accountId>");
        }
    }

    // /event and /events — hub command for all active world events.
    [CommandHandler("event", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Show active world events. Usage: /event | /event hunt | /event qb | /event on | /event off. Admin: /event start <invasion|cull|sale|hunt> [modifier] | /event stop [name] | /event status [name]")]
    [CommandHandler("events", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Show active world events. Usage: /events | /events hunt | /events qb | /events on | /events off. Admin: /events start <invasion|cull|sale|hunt> [modifier] | /events stop [name] | /events status [name]")]
    public static void HandleEvents(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player) return;

        var sub = parameters.Length > 0 ? parameters[0].Trim().ToLowerInvariant() : "";

        if (player.Session.AccessLevel >= AccessLevel.Admin &&
            (sub == "start" || sub == "stop" || sub == "status"))
        {
            HandleEventAdmin(player, sub, parameters);
            return;
        }

        switch (sub)
        {
            case "1" or "hunt":
                ShowHuntStatus(player, huntOnly: true);
                break;
            case "2" or "bq" or "qb" or "bonusquest" or "bonus":
                ShowBonusQuestStatus(player);
                break;
            case "3" or "invasion" or "inv":
                ShowInvasionStatus(player);
                break;
            case "4" or "cull":
                ShowCullStatus(player);
                break;
            case "5" or "sale":
                ShowSaleStatus(player);
                break;
            case "6" or "poihunt" or "poi":
                ShowPoiHuntStatus(player);
                break;
            case "off":
                WorldEventsBroadcast.SetOptOut(player, true);
                break;
            case "on":
                WorldEventsBroadcast.SetOptOut(player, false);
                break;
            default:
                ShowAllEvents(player);
                break;
        }
    }

    static void HandleEventAdmin(Player player, string sub, string[] parameters)
    {
        var s = CurrentSettings ?? new Settings();

        switch (sub)
        {
            case "start":
                if (parameters.Length < 2)
                {
                    player.SendMessage("[Admin] Usage: /event start <invasion|cull|sale|hunt> [modifier]");
                    return;
                }
                var eventName = parameters[1].Trim().ToLowerInvariant();
                var modifier = parameters.Length > 2 ? string.Join(" ", parameters.Skip(2)) : null;

                switch (eventName)
                {
                    case "invasion" or "inv":
                        InvasionRuntime.ForceStart(s, modifier);
                        player.SendMessage($"[Invasion] Force-started{(modifier != null ? $" at {modifier}" : "")}.");
                        break;
                    case "cull":
                        uint? typeId = null;
                        if (!string.IsNullOrWhiteSpace(modifier) && uint.TryParse(modifier, out var parsed))
                            typeId = parsed;
                        CullRuntime.ForceStart(s, typeId);
                        player.SendMessage("[Cull] Force-started.");
                        break;
                    case "sale":
                        SaleRuntime.ForceStart(s, modifier);
                        player.SendMessage($"[Sale] Force-started{(modifier != null ? $" at {modifier}" : "")}.");
                        break;
                    case "hunt":
                        HuntRuntime.ForceStart(s);
                        player.SendMessage("[Hunt] Force-started.");
                        break;
                    case "poihunt" or "poi":
                        PoiHuntRuntime.ForceStart(s);
                        player.SendMessage("[POI Hunt] Force-started.");
                        break;
                    default:
                        player.SendMessage($"[Admin] Unknown event '{eventName}'. Use: invasion, cull, sale, hunt, poihunt.");
                        break;
                }
                break;

            case "stop":
                if (parameters.Length < 2)
                {
                    // Stop all
                    InvasionRuntime.ForceStop(s);
                    CullRuntime.ForceStop();
                    SaleRuntime.ForceStop();
                    HuntRuntime.ForceStop();
                    player.SendMessage("[Admin] All active events stopped.");
                }
                else
                {
                    var target = parameters[1].Trim().ToLowerInvariant();
                    switch (target)
                    {
                        case "invasion" or "inv":
                            InvasionRuntime.ForceStop(s);
                            player.SendMessage("[Invasion] Force-stopped.");
                            break;
                        case "cull":
                            CullRuntime.ForceStop();
                            player.SendMessage("[Cull] Force-stopped.");
                            break;
                        case "sale":
                            SaleRuntime.ForceStop();
                            player.SendMessage("[Sale] Force-stopped.");
                            break;
                        case "hunt":
                            HuntRuntime.ForceStop();
                            player.SendMessage("[Hunt] Force-stopped.");
                            break;
                        case "poihunt" or "poi":
                            PoiHuntRuntime.ForceStop(s);
                            player.SendMessage("[POI Hunt] Force-stopped.");
                            break;
                        default:
                            player.SendMessage($"[Admin] Unknown event '{target}'. Use: invasion, cull, sale, hunt, poihunt.");
                            break;
                    }
                }
                break;

            case "status":
                if (parameters.Length < 2)
                {
                    ShowAllEvents(player);
                }
                else
                {
                    var target = parameters[1].Trim().ToLowerInvariant();
                    switch (target)
                    {
                        case "invasion" or "inv":
                            ShowInvasionStatus(player);
                            break;
                        case "cull":
                            ShowCullStatus(player);
                            break;
                        case "sale":
                            ShowSaleStatus(player);
                            break;
                        case "hunt":
                            ShowHuntStatus(player, huntOnly: true);
                            break;
                        case "poihunt" or "poi":
                            ShowPoiHuntStatus(player);
                            break;
                        default:
                            player.SendMessage($"[Admin] Unknown event '{target}'. Use: invasion, cull, sale, hunt, poihunt.");
                            break;
                    }
                }
                break;
        }
    }

    static void ShowAllEvents(Player player)
    {
        var settings = CurrentSettings;
        player.SendMessage("[WorldEvents] Active events:");

        if (settings?.EnableHunt == true)
        {
            lock (HuntRuntime.HuntLock)
            {
                var hunt = HuntRuntime.ActiveHunt;
                if (hunt != null)
                {
                    var targets = hunt.TargetSpecies.Count > 0
                        ? string.Join(", ", hunt.TargetSpecies.Select(s => HuntDisplay.SpeciesName(s)))
                        : "none";
                    player.SendMessage($"  Hunt ({hunt.WindowStartUtc:HH:mm}–{hunt.WindowEndUtc:HH:mm} UTC): {targets}");
                }
                else
                    player.SendMessage("  Hunt: no active window.");
            }
        }
        else
            player.SendMessage("  Hunt: disabled.");

        if (settings?.EnableBonusQuest == true)
        {
            lock (BonusQuestRuntime.BonusQuestLock)
            {
                var bq = BonusQuestRuntime.ActiveWindow;
                if (bq != null)
                {
                    var count = bq.QuestNames.Count;
                    var rotateIn = bq.WindowEndUtc - DateTime.UtcNow;
                    var rotStr = rotateIn.TotalSeconds <= 0 ? "now"
                        : rotateIn.TotalMinutes >= 60 ? $"{(int)rotateIn.TotalHours}h {rotateIn.Minutes}m"
                        : $"{(int)rotateIn.TotalMinutes}m";
                    player.SendMessage($"  Bonus Quest: {count} quest(s) active (rotates in {rotStr}).");
                }
                else
                    player.SendMessage("  Bonus Quest: board not initialized.");
            }
        }
        else
            player.SendMessage("  Bonus Quest: disabled.");

        if (settings?.EnableInvasion == true)
        {
            var inv = InvasionRuntime.GetActiveSnapshot();
            if (inv != null)
            {
                var rem = inv.EndsUtc - DateTime.UtcNow;
                var remStr = rem.TotalSeconds <= 0 ? "ending soon"
                    : rem.TotalHours >= 1 ? $"{(int)rem.TotalHours}h {rem.Minutes}m"
                    : $"{rem.Minutes}m";
                var towns = string.Join(", ", inv.Towns.Select(t => t.TownName));
                player.SendMessage($"  Invasion: {towns} under attack! ({remStr} remaining)");
            }
            else
                player.SendMessage("  Invasion: no active wave.");
        }
        else
            player.SendMessage("  Invasion: disabled.");

        if (settings?.CullEnabled == true)
        {
            var cull = CullRuntime.ActiveCull;
            if (cull != null)
            {
                var rem = cull.EndsUtc - DateTime.UtcNow;
                var remStr = rem.TotalSeconds <= 0 ? "ending soon" : $"{(int)rem.TotalMinutes}m";
                var tier = CullRuntime.GetSwarmTierFromKills(cull.TotalKills, settings);
                player.SendMessage($"  Cull: {cull.TargetSpeciesName}s swarming — tier {tier}, {cull.TotalKills} kills, {remStr} remaining.");
            }
            else
                player.SendMessage("  Cull: no active cull.");
        }
        else
            player.SendMessage("  Cull: disabled.");

        if (settings?.SaleEnabled == true)
        {
            var sale = SaleRuntime.ActiveSale;
            if (sale != null)
            {
                var rem = sale.EndsUtc - DateTime.UtcNow;
                var remStr = rem.TotalSeconds <= 0 ? "ending soon" : $"{(int)rem.TotalMinutes}m";
                player.SendMessage($"  Sale: {sale.TownName} — {remStr} remaining.");
            }
            else
                player.SendMessage("  Sale: no active sale.");
        }
        else
            player.SendMessage("  Sale: disabled.");

        if (settings?.EnablePoiHunt == true)
        {
            lock (PoiHuntRuntime.PoiHuntLock)
            {
                var poi = PoiHuntRuntime.ActiveEvent;
                if (poi != null)
                {
                    var currentRound = poi.Rounds.ElementAtOrDefault(poi.CurrentRoundIndex);
                    if (currentRound != null && currentRound.IsActive)
                    {
                        var rem = currentRound.EndTime - DateTime.UtcNow;
                        var remStr = rem.TotalSeconds <= 0 ? "ending soon" : $"{(int)rem.TotalMinutes}m";
                        player.SendMessage($"  POI Hunt: Round {currentRound.RoundNumber} active — {remStr} remaining.");
                    }
                    else
                    {
                        player.SendMessage("  POI Hunt: event active — no current round.");
                    }
                }
                else
                    player.SendMessage("  POI Hunt: no active event.");
            }
        }
        else
            player.SendMessage("  POI Hunt: disabled.");
    }

    static void ShowHuntStatus(Player player, bool huntOnly)
    {
        var settings = CurrentSettings;
        if (settings?.EnableHunt != true)
        {
            player.SendMessage("[WorldEvents] Hunt is disabled.");
            return;
        }

        if (!huntOnly)
        {
            var data = HuntRuntime.GetOrLoadPlayer(player.Guid.Full);
            player.SendMessage($"[Hunt] Lifetime kills: {data.TotalLifetimeKills:N0} — Total Hunt XP: {data.TotalHuntXp:0.##}");
        }

        lock (HuntRuntime.HuntLock)
        {
            var hunt = HuntRuntime.ActiveHunt;
            if (hunt == null) { player.SendMessage("[Hunt] No active hunt window."); return; }

            player.SendMessage($"[Hunt] Hunt window {hunt.WindowStartUtc:u} – {hunt.WindowEndUtc:u} UTC.");

            if (hunt.TargetSpecies.Count == 0)
                player.SendMessage("[Hunt] Bonus species: (none — need global kill data or adjust filters.)");
            else
            {
                for (var i = 0; i < hunt.TargetSpecies.Count; i++)
                {
                    var speciesId = hunt.TargetSpecies[i];
                    hunt.TargetMultipliers.TryGetValue(speciesId, out var mult);
                    player.SendMessage($"[Hunt] Bonus target {i + 1}/{hunt.TargetSpecies.Count}: {HuntDisplay.SpeciesName(speciesId)} — ×{mult:0.##}");
                }
            }

            var guid = player.Guid.Full;
            var bracketIdx = hunt.PlayerBrackets.TryGetValue(guid, out var b) ? b : HuntLevels.GetBracket(player);
            player.SendMessage($"[Hunt] Your bracket: {HuntLevels.BracketLabel(bracketIdx)}");

            var pts = 0.0;
            if (hunt.HuntPointsByBracket.TryGetValue(bracketIdx, out var bracketPts))
                bracketPts.TryGetValue(guid, out pts);
            player.SendMessage(pts > 0
                ? $"[Hunt] Your hunt points this window: {pts:0.##}"
                : "[Hunt] Your hunt points this window: 0 (no qualifying kills yet).");
        }
    }

    static void ShowPoiHuntStatus(Player player)
    {
        var settings = CurrentSettings;
        if (settings?.EnablePoiHunt != true)
        {
            player.SendMessage("[WorldEvents] POI Hunt is disabled.");
            return;
        }

        lock (PoiHuntRuntime.PoiHuntLock)
        {
            var evt = PoiHuntRuntime.ActiveEvent;
            if (evt == null)
            {
                player.SendMessage("[POI Hunt] No active event.");
                return;
            }

            var currentRound = evt.Rounds.ElementAtOrDefault(evt.CurrentRoundIndex);
            if (currentRound != null && currentRound.IsActive)
            {
                var rem = currentRound.EndTime - DateTime.UtcNow;
                var remStr = rem.TotalSeconds <= 0 ? "ending soon" : $"{(int)rem.TotalMinutes}m";
                player.SendMessage($"[POI Hunt] Round {currentRound.RoundNumber} active — {remStr} remaining.");
            }
            else
            {
                player.SendMessage($"[POI Hunt] Event {evt.EventId} active — no current round.");
            }

            var myFinds = evt.PlayerFindCounts.TryGetValue(player.Guid.Full, out var f) ? f : 0;
            player.SendMessage(myFinds > 0
                ? $"[POI Hunt] Your finds this event: {myFinds}"
                : "[POI Hunt] You haven't found any locations yet.");
        }
    }

    static void ShowBonusQuestStatus(Player player)
    {
        var settings = CurrentSettings;
        if (settings?.EnableBonusQuest != true)
        {
            player.SendMessage("[WorldEvents] Bonus Quest is disabled.");
            return;
        }

        lock (BonusQuestRuntime.BonusQuestLock)
        {
            var bq = BonusQuestRuntime.ActiveWindow;
            if (bq == null)
            {
                player.SendMessage("[Bonus Quest] Board not yet initialized.");
                return;
            }

            var rotateIn = bq.WindowEndUtc - DateTime.UtcNow;
            var rotateStr = rotateIn.TotalSeconds <= 0 ? "now"
                : rotateIn.TotalHours >= 1 ? $"{(int)rotateIn.TotalHours}h {rotateIn.Minutes}m"
                : $"{(int)rotateIn.TotalMinutes}m";

            if (bq.QuestNames.Count == 0)
            {
                player.SendMessage($"[Bonus Quest] Board is empty — next rotation in {rotateStr}.");
                return;
            }

            player.SendMessage($"[Bonus Quest] {bq.QuestNames.Count} active quest(s) — tiered XP (20%/15%/10%/5%). Next rotation in {rotateStr}:");

            var now = DateTime.UtcNow;
            for (var i = 0; i < bq.QuestNames.Count; i++)
            {
                var stamp = bq.QuestNames[i];
                var display = BonusQuestDisplay.QuestDisplayName(stamp);
                var expiry = bq.QuestExpiries.TryGetValue(stamp, out var exp) ? exp : bq.WindowEndUtc;
                var rem = expiry - now;
                var remStr = rem.TotalSeconds <= 0 ? "expiring"
                    : rem.TotalHours >= 1 ? $"{(int)rem.TotalHours}h {rem.Minutes}m left"
                    : $"{(int)rem.TotalMinutes}m left";
                player.SendMessage($"  {i + 1}. {display} — {remStr}");
            }

            var completions = bq.PlayerCompletions.TryGetValue(player.Guid.Full, out var c) ? c : 0;
            player.SendMessage(completions > 0
                ? $"[Bonus Quest] Your total completions: {completions}"
                : "[Bonus Quest] You haven't completed any bonus quests yet.");
        }
    }

    static void ShowInvasionStatus(Player player)
    {
        var settings = CurrentSettings;
        if (settings?.EnableInvasion != true)
        {
            player.SendMessage("[WorldEvents] Invasion is disabled.");
            return;
        }

        var wave = InvasionRuntime.GetActiveSnapshot();
        if (wave == null)
        {
            player.SendMessage("[Invasion] No active invasion.");
            return;
        }

        var remaining = wave.EndsUtc - DateTime.UtcNow;
        var remStr = remaining.TotalSeconds <= 0 ? "ending soon"
            : remaining.TotalHours >= 1 ? $"{(int)remaining.TotalHours}h {remaining.Minutes}m"
            : $"{remaining.Minutes}m";

        var themeStr = wave.ThemeName.Length > 0 ? $" [{wave.ThemeName} Invasion]" : "";
        player.SendMessage($"[Invasion]{themeStr} {wave.Towns.Count} town(s) under attack! Ends in {remStr} ({wave.EndsUtc:u} UTC).");

        foreach (var t in wave.Towns)
        {
            var tierStr = t.Tier > 0 ? $" — Tier {t.Tier}" : "";
            player.SendMessage($"  {t.TownName}{tierStr} ({t.Mode}" + (t.Mode == InvasionMode.Scripted && !string.IsNullOrEmpty(t.EventName) ? $": {t.EventName}" : "") + ")");
        }
    }

    static void ShowSaleStatus(Player player)
    {
        var settings = CurrentSettings;
        if (settings?.SaleEnabled != true)
        {
            player.SendMessage("[WorldEvents] Sale is disabled.");
            return;
        }

        var sale = SaleRuntime.ActiveSale;
        if (sale == null)
        {
            player.SendMessage("[Sale] No active sale.");
            return;
        }

        var remaining = sale.EndsUtc - DateTime.UtcNow;
        var remStr = remaining.TotalSeconds <= 0 ? "ending soon" : $"{(int)remaining.TotalMinutes}m";
        player.SendMessage($"[Sale] {sale.TownName} — ends in {remStr} ({sale.EndsUtc:u} UTC).");
        if (sale.MasterMageOnly)
            player.SendMessage("[Sale] All Master Mages are on sale.");
        else if (sale.IncludesMasterMage)
            player.SendMessage("[Sale] Includes local Master Mage.");
    }

    static void ShowCullStatus(Player player)
    {
        var settings = CurrentSettings;
        if (settings?.CullEnabled != true)
        {
            player.SendMessage("[WorldEvents] Cull is disabled.");
            return;
        }

        var cull = CullRuntime.ActiveCull;
        if (cull == null)
        {
            player.SendMessage("[Cull] No active cull.");
            return;
        }

        var remaining = cull.EndsUtc - DateTime.UtcNow;
        var remStr = remaining.TotalSeconds <= 0 ? "ending soon" : $"{(int)remaining.TotalMinutes}m";
        var tier = CullRuntime.GetSwarmTierFromKills(cull.TotalKills, settings);
        player.SendMessage($"[Cull] {cull.TargetSpeciesName}s swarming — tier {tier} (kills: {cull.TotalKills}), ends in {remStr}.");

        var top = cull.KillsByPlayer
            .OrderByDescending(kv => kv.Value)
            .Take(3)
            .ToList();
        if (top.Count > 0)
        {
            player.SendMessage("[Cull] Top killers:");
            for (var i = 0; i < top.Count; i++)
            {
                var name = cull.PlayerNames.TryGetValue(top[i].Key, out var n) ? n : $"GUID:{top[i].Key}";
                player.SendMessage($"  {i + 1}. {name} — {top[i].Value} kill{(top[i].Value == 1 ? "" : "s")}");
            }
        }

        var myKills = cull.KillsByPlayer.TryGetValue(player.Guid.Full, out var k) ? k : 0;
        player.SendMessage(myKills > 0
            ? $"[Cull] Your kills: {myKills}"
            : "[Cull] You haven't killed any target creatures yet.");
    }

}
