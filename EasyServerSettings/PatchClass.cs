namespace EasyServerSettings;

[HarmonyPatch]
public class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    // Avoid duplicate apply when both Start() and OnWorldOpen() run back-to-back on cold boot.
    static DateTime _lastAutoApplyUtc = DateTime.MinValue;
    const int AutoApplyDebounceSeconds = 3;

    public override void Start()
    {
        base.Start();
        Settings = SettingsContainer.Settings ?? new Settings();
        TryAutoApplyPreset("Start");
    }

    public override async Task OnWorldOpen()
    {
        Settings = SettingsContainer.Settings ?? new Settings();
        TryAutoApplyPreset("OnWorldOpen");
        await Task.CompletedTask;
    }

    void TryAutoApplyPreset(string source)
    {
        if (!Settings.EnableMod || !Settings.ApplyShardPreset)
            return;

        var now = DateTime.UtcNow;
        if ((now - _lastAutoApplyUtc).TotalSeconds < AutoApplyDebounceSeconds)
            return;

        _lastAutoApplyUtc = now;
        RunApply(Settings, source);
    }

    internal static void RunApply(Settings settings, string source)
    {
        try
        {
            var r = PresetApplier.Apply(settings, source);
            if (!settings.LogSummary)
                return;

            var totalRejected = r.BoolRejected + r.LongRejected + r.DoubleRejected;
            ModManager.Log(
                $"EasyServerSettings ({source}): settings applied — bool {r.BoolOk}/{r.BoolOk + r.BoolRejected}, long {r.LongOk}/{r.LongOk + r.LongRejected}, double {r.DoubleOk}/{r.DoubleOk + r.DoubleRejected}. Rejected: {totalRejected}.",
                totalRejected > 0 ? ModManager.LogLevel.Warn : ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"EasyServerSettings ({source}): apply failed: {ex.Message}", ModManager.LogLevel.Error);
        }
    }

    [CommandHandler("essapply", AccessLevel.Admin, CommandHandlerFlag.None,
        "Applies the shard preset via PropertyManager (same keys as EasyServerSettings/Sql/ace-shard-settings.sql). Usage: essapply")]
    public static void HandleEssApply(Session session, params string[] parameters)
    {
        _ = parameters;
        var cfg = Settings ?? new Settings();

        if (!cfg.EnableMod)
        {
            Notify(session, "EasyServerSettings: EnableMod is false.");
            return;
        }

        if (!cfg.ApplyShardPreset)
        {
            Notify(session, "EasyServerSettings: ApplyShardPreset is false.");
            return;
        }

        RunApply(cfg, session?.Player != null ? $"command by {session.Player.Name}" : "console");
        Notify(session, "EasyServerSettings: settings applied (see server log for counts).");
    }

    static void Notify(Session? session, string message)
    {
        if (session?.Player is Player p)
            p.SendMessage(message);
        else
            ModManager.Log(message, ModManager.LogLevel.Info);
    }
}
