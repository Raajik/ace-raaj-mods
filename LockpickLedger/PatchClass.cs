namespace LockpickLedger;

[HarmonyPatch]
public partial class PatchClass : BasicPatch<Settings>
{
    internal static Settings? CurrentSettings;

    static MethodInfo? _tryCreateInInventoryMethod;
    static MethodInfo? _worldObjectOnUseMethod;
    bool _autoBankPatched;
    bool _lockUsePatched;

    CancellationTokenSource? _regenCts;

    public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName)
    {
    }

    public override void Start()
    {
        base.Start();
        ReloadSettings();
        ApplyPatches();
        StartRegenTimer();
    }

    public override async Task OnWorldOpen()
    {
        ReloadSettings();
        ApplyPatches();
        StartRegenTimer();
        await base.OnWorldOpen();
    }

    public override void Stop()
    {
        try { _regenCts?.Cancel(); } catch { }
        base.Stop();
    }

    void ReloadSettings()
    {
        try { Settings = SettingsContainer.Settings ?? new Settings(); }
        catch { Settings ??= new Settings(); }
        CurrentSettings = Settings;
    }

    void ApplyPatches()
    {
        if (CurrentSettings?.Enabled != true) return;

        if (!_autoBankPatched)
        {
            try
            {
                _tryCreateInInventoryMethod = AccessTools.Method(
                    typeof(Player),
                    nameof(Player.TryCreateInInventoryWithNetworking),
                    new[] { typeof(WorldObject), typeof(int), typeof(bool) });

                if (_tryCreateInInventoryMethod != null)
                {
                    var prefix = AccessTools.Method(typeof(PatchClass), nameof(PreTryCreateInInventory));
                    ModC.Harmony.Patch(_tryCreateInInventoryMethod, prefix: new HarmonyMethod(prefix));
                    _autoBankPatched = true;
                    ModManager.Log("[LockpickLedger] Auto-bank patch applied.", ModManager.LogLevel.Info);
                }
                else
                {
                    ModManager.Log("[LockpickLedger] Player.TryCreateInInventoryWithNetworking not found.", ModManager.LogLevel.Warn);
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[LockpickLedger] Auto-bank patch failed: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        if (!_lockUsePatched)
        {
            try
            {
                _worldObjectOnUseMethod = AccessTools.Method(
                    typeof(WorldObject),
                    "OnUse",
                    new[] { typeof(Player) });

                if (_worldObjectOnUseMethod != null)
                {
                    var prefix = AccessTools.Method(typeof(PatchClass), nameof(PreWorldObjectOnUse));
                    ModC.Harmony.Patch(_worldObjectOnUseMethod, prefix: new HarmonyMethod(prefix));
                    _lockUsePatched = true;
                    ModManager.Log("[LockpickLedger] Lock-use patch applied.", ModManager.LogLevel.Info);
                }
                else
                {
                    ModManager.Log("[LockpickLedger] WorldObject.OnUse(Player) not found.", ModManager.LogLevel.Warn);
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[LockpickLedger] Lock-use patch failed: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }

    void StartRegenTimer()
    {
        try { _regenCts?.Cancel(); } catch { }
        _regenCts = new CancellationTokenSource();
        var token = _regenCts.Token;
        _ = Task.Run(async () =>
        {
            while (!token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(60_000, token).ConfigureAwait(false);
                    var s = CurrentSettings;
                    if (s?.Enabled == true && s.LimitlessRegenEnabled)
                        TickLimitlessRegen(s);
                }
                catch (OperationCanceledException) { break; }
                catch (Exception ex)
                {
                    ModManager.Log($"[LockpickLedger] Regen timer error: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }

    static void TickLimitlessRegen(Settings settings)
    {
        var now = (long)Time.GetUnixTime();
        var intervalSeconds = settings.LimitlessRegenIntervalSeconds;
        var baseCharges = (long)settings.LimitlessRegenChargesPerInterval;

        foreach (var player in PlayerManager.GetAllOnline())
        {
            try
            {
                var lastGrant = player.GetProperty((PropertyInt64)LockpickProps.LimitlessLastGrantUnix) ?? 0;
                if (lastGrant == 0) continue;

                if (now - lastGrant < intervalSeconds) continue;

                var stackCount = Math.Max(1L, player.GetProperty((PropertyInt64)LockpickProps.LimitlessLockpickCount) ?? 1L);
                var charges = baseCharges * stackCount;

                var current = player.GetProperty((PropertyInt64)LockpickProps.LockpickDurability) ?? 0;
                var newTotal = current + charges;
                player.SetProperty((PropertyInt64)LockpickProps.LockpickDurability, newTotal);
                player.SetProperty((PropertyInt64)LockpickProps.LimitlessLastGrantUnix, now);

                player.SendMessage($"[Lockpick] Passive regen{(stackCount > 1 ? $" (×{stackCount})" : "")}: +{charges:N0} Lockpick Durability. Total: {newTotal:N0}.");
            }
            catch (Exception ex)
            {
                ModManager.Log($"[LockpickLedger] Regen error for player: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }

    [CommandHandler("lp", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Lockpick Durability. /lp for status, /lp help for commands.")]
    [CommandHandler("lockpick", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Lockpick Durability. /lockpick for status.")]
    public static void HandleLp(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player) return;

        if (CurrentSettings?.Enabled != true)
        {
            player.SendMessage("[Lockpick] LockpickLedger is disabled on this server.");
            return;
        }

        var sub = parameters.Length > 0 ? parameters[0].Trim().ToLowerInvariant() : "";

        switch (sub)
        {
            case "" or "status":
                SendStatus(player);
                break;
            case "pref":
                HandlePref(player, parameters.Length > 1 ? parameters[1] : "");
                break;
            case "help" or "?":
                player.SendMessage(
                    "=== Lockpick Durability ===\n" +
                    "/lp              — show banked durability and status\n" +
                    "/lp pref keyfirst     — use valid keys before durability (default)\n" +
                    "/lp pref durability   — use banked durability before keys");
                break;
            default:
                player.SendMessage("Unknown subcommand. Type /lp help for commands.");
                break;
        }
    }

    static void SendStatus(Player player)
    {
        var durability = player.GetProperty((PropertyInt64)LockpickProps.LockpickDurability) ?? 0L;
        var lastGrant = player.GetProperty((PropertyInt64)LockpickProps.LimitlessLastGrantUnix) ?? 0L;
        var stackCount = player.GetProperty((PropertyInt64)LockpickProps.LimitlessLockpickCount) ?? 0L;
        var hasLimitless = lastGrant > 0;
        var prefDurabilityFirst = (player.GetProperty((PropertyInt)LockpickProps.KeyPriorityPref) ?? 0) == 1;

        var sb = new StringBuilder();
        sb.AppendLine("=== Lockpick Durability ===");
        sb.AppendLine($"Banked Durability:   {durability:N0}");

        if (hasLimitless)
        {
            var s = CurrentSettings;
            sb.AppendLine($"Limitless Lockpick:  active × {stackCount} (passive regen)");
            if (s?.LimitlessRegenEnabled == true)
            {
                var ratePerInterval = (long)s.LimitlessRegenChargesPerInterval * Math.Max(1L, stackCount);
                var hours = s.LimitlessRegenIntervalSeconds / 3600.0;
                sb.AppendLine($"  Rate:              +{ratePerInterval:N0} every {hours:0.#} hours");
                var now = (long)Time.GetUnixTime();
                var remaining = Math.Max(0L, s.LimitlessRegenIntervalSeconds - (now - lastGrant));
                sb.AppendLine($"  Next regen in:     {FormatDuration(remaining)}");
            }
        }
        else
        {
            sb.AppendLine("Limitless Lockpick:  inactive");
        }

        sb.Append($"Key priority:        {(prefDurabilityFirst ? "Durability first" : "Key first (default)")}");

        player.SendMessage(sb.ToString());
    }

    static void HandlePref(Player player, string pref)
    {
        switch (pref.Trim().ToLowerInvariant())
        {
            case "keyfirst" or "key":
                player.SetProperty((PropertyInt)LockpickProps.KeyPriorityPref, 0);
                player.SendMessage("[Lockpick] Preference set: Key first (valid keys are used before durability).");
                break;
            case "durability" or "dur" or "durabilityfirst" or "d":
                player.SetProperty((PropertyInt)LockpickProps.KeyPriorityPref, 1);
                player.SendMessage("[Lockpick] Preference set: Durability first (banked charges are used before keys).");
                break;
            default:
                player.SendMessage("Usage: /lp pref keyfirst | /lp pref durability");
                break;
        }
    }

    static string FormatDuration(long seconds)
    {
        if (seconds <= 0) return "now";
        var h = seconds / 3600;
        var m = (seconds % 3600) / 60;
        if (h > 0) return $"{h}h {m}m";
        return $"{m}m";
    }

    internal static bool HasLockpickSkill(Player player)
    {
        if (CurrentSettings?.RequireLockpickSkill != true) return true;
        var skill = player.GetCreatureSkill(Skill.Lockpick);
        return skill != null && skill.AdvancementClass >= SkillAdvancementClass.Trained;
    }
}
