namespace Xenology;

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
        XenologyPersistence.EnsureDirectories();
        XenologyRuntime.LoadAllFromDisk(CurrentSettings ?? new Settings());
        StartHuntBackgroundTimer();
    }

    public override async Task OnWorldOpen()
    {
        ReloadSettings();
        XenologyRuntime.LoadAllFromDisk(CurrentSettings ?? new Settings());
        StartHuntBackgroundTimer();
        await base.OnWorldOpen();
    }

    public override void Stop()
    {
        try
        {
            _huntTimerCts?.Cancel();
        }
        catch
        {
        }

        try
        {
            if (CurrentSettings != null)
            {
                XenologyRuntime.FlushGlobalIfDue(new Settings { DebounceSaveMilliseconds = 0 });
                var snap = new GlobalSpeciesKillsData { Species = new Dictionary<uint, long>(XenologyRuntime.GlobalSpeciesKills) };
                XenologyPersistence.SaveGlobal(snap);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Xenology] Stop flush failed: {ex.Message}", ModManager.LogLevel.Warn);
        }

        base.Stop();
    }

    void ReloadSettings()
    {
        try
        {
            Settings = SettingsContainer.Settings ?? new Settings();
        }
        catch
        {
            Settings ??= new Settings();
        }

        CurrentSettings = Settings;
    }

    void StartHuntBackgroundTimer()
    {
        try
        {
            _huntTimerCts?.Cancel();
        }
        catch
        {
        }

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
                    if (s?.EnableXenology == true)
                        XenologyRuntime.TickHuntTimer(s);
                }
                catch (OperationCanceledException)
                {
                    break;
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[Xenology] Hunt timer: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }
}
