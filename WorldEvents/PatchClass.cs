namespace WorldEvents;

[HarmonyPatch]
public partial class PatchClass : BasicPatch<Settings>
{
    internal static Settings? CurrentSettings;

    CancellationTokenSource? _huntTimerCts;

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
    }

    public override async Task OnWorldOpen()
    {
        ReloadSettings();
        HuntRuntime.LoadAllFromDisk(CurrentSettings ?? new Settings());
        StartHuntBackgroundTimer();
        await base.OnWorldOpen();
    }

    public override void Stop()
    {
        try { _huntTimerCts?.Cancel(); } catch { }

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

    // /event and /events — hub command for all active world events.
    [CommandHandler("event", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Show active world events. Usage: /event | /event hunt | /event xeno")]
    [CommandHandler("events", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Show active world events. Usage: /events | /events hunt | /events xeno")]
    public static void HandleEvents(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player) return;

        var sub = parameters.Length > 0 ? parameters[0].Trim().ToLowerInvariant() : "";

        switch (sub)
        {
            case "hunt":
                ShowHuntStatus(player, huntOnly: true);
                break;
            case "xeno" or "xenology" or "x":
                ShowHuntStatus(player, huntOnly: false);
                break;
            default:
                ShowAllEvents(player);
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
}
