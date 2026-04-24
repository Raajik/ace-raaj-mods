namespace Loremaster;

using System.Reflection;
using System.Text.Json;

using ACE.Database.Models.Shard;
using ACE.Server.WorldObjects;

using Microsoft.EntityFrameworkCore;

[HarmonyPatch]
public partial class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    static readonly string[] EmpyreanAlterationRelocatedCategories =
    {
        nameof(EquipPostCreation),
        nameof(OverrideCheckUseRequirements),
    };

    // Same instance as Settings — avoids drift between reload paths.
    internal static Settings NotificationDefaults => Settings;

    static FileSystemWatcher? _settingsWatcher;
    static FileSystemWatcher? _lootConfigWatcher;
    static DateTime _lastSettingsReload = DateTime.MinValue;
    static DateTime _lastLootConfigReload = DateTime.MinValue;
    const int SettingsReloadDebounceMs = 500;

    // Completion-bonus, parchment, and trophy/level-fraction quest XP call GrantXP with amounts already derived as fractions of next level; skip the retention/QP equipment chain (RunWithoutQuestXpMultiplier) so low StandardBaseXpRetention does not crush them.
    static int _questXpMultiplierSuppressDepth;

    internal static void RunWithoutQuestXpMultiplier(Action action)
    {
        _questXpMultiplierSuppressDepth++;
        try
        {
            action();
        }
        finally
        {
            _questXpMultiplierSuppressDepth--;
        }
    }

    // Start() runs on every mod load — cold boot AND hot-reload.
    // OnWorldOpen() is a one-shot ACE event fired at server startup; if the mod is
    // loaded after the world is already up (hot-reload), OnWorldOpen() never fires,
    // leaving Settings null.  Assigning here covers both cases.
    public override void Start()
    {
        base.Start();
        Settings = SettingsContainer.Settings ?? new Settings();
        ReloadLootConfig();
        EnsureLootConfigFileWatcher();
        TryApplyPortalHasQuestSolvesHooks();
        RefreshEmpyreanAlterationRelocatedPatches();
        RefreshParchmentQuestPatches();
        TrophyBurdenXp.Initialize();

        // OnWorldOpen never runs on hot-reload; still recalc anyone online and watch Settings.json.
        UpdateIngamePlayers();
        SetupSettingsJsonWatcher();
    }

    public override async Task OnWorldOpen()
    {
        // SettingsContainer may have reloaded since Start(); refresh the reference.
        Settings = SettingsContainer.Settings ?? new Settings();

        // Reload sidecar JSON (OnWorldOpen does not run on mod hot-reload; Start handles that).
        ReloadLootConfig();
        EnsureLootConfigFileWatcher();

        // Recalculate QP for all online players on reload/start
        UpdateIngamePlayers();

        SetupSettingsJsonWatcher();
        RefreshEmpyreanAlterationRelocatedPatches();
        RefreshParchmentQuestPatches();
    }

    static void RefreshEmpyreanAlterationRelocatedPatches()
    {
        var harmony = Mod.Instance?.Harmony;
        if (harmony is null)
            return;

        foreach (var c in EmpyreanAlterationRelocatedCategories)
        {
            try
            {
                harmony.UnpatchCategory(c);
            }
            catch
            {
            }
        }

        if (Settings.EnableEquipPostCreation)
            harmony.PatchCategory(nameof(EquipPostCreation));

        if (Settings.EnableOverrideCheckUseRequirements)
            harmony.PatchCategory(nameof(OverrideCheckUseRequirements));
    }

    // When Settings.json changes, reload and recalc QP for all online players.
    // Skip watcher if mod folder path is empty (e.g. assembly loaded without a file location).
    void SetupSettingsJsonWatcher()
    {
        _settingsWatcher?.Dispose();
        _settingsWatcher = null;

        var modFolder = GetModDirectory();
        if (string.IsNullOrEmpty(modFolder) || !Directory.Exists(modFolder))
            return;

        _settingsWatcher = new FileSystemWatcher(modFolder)
        {
            Filter = "Settings.json",
            NotifyFilter = NotifyFilters.LastWrite | NotifyFilters.Size
        };
        _settingsWatcher.Changed += OnLoremasterSettingsFileChanged;
        _settingsWatcher.EnableRaisingEvents = true;
    }

    // Folder containing Loremaster.dll and JSON sidecars (e.g. Settings.json).
    // Assembly.Location is empty in some hosting setups; fall back to ModManager.ModPath + assembly name.
    internal static string GetModDirectory()
    {
        try
        {
            var asm = typeof(PatchClass).Assembly;
            var location = asm.Location;
            if (!string.IsNullOrWhiteSpace(location))
            {
                var dir = Path.GetDirectoryName(location);
                if (!string.IsNullOrEmpty(dir))
                {
                    var full = Path.GetFullPath(dir);
                    if (Directory.Exists(full))
                        return full;
                }
            }

            var name = asm.GetName().Name ?? "Loremaster";
            var fallback = Path.GetFullPath(Path.Combine(ModManager.ModPath, name));
            if (Directory.Exists(fallback))
                return fallback;
        }
        catch
        {
        }

        return "";
    }

    internal static void ReloadLootConfig()
    {
        var path = LootConfigPaths.ResolveLootConfigPath(ModManager.ModPath, Settings?.LootConfigPath);
        LootConfigStore.TryLoad(path, msg => ModManager.Log(msg, ModManager.LogLevel.Warn), out _);
    }

    static void EnsureLootConfigFileWatcher()
    {
        try
        {
            if (_lootConfigWatcher is not null)
                return;

            var resolved = LootConfigPaths.ResolveLootConfigPath(ModManager.ModPath, Settings?.LootConfigPath);
            var dir = Path.GetDirectoryName(resolved);
            if (string.IsNullOrEmpty(dir) || !Directory.Exists(dir))
                return;

            _lootConfigWatcher = new FileSystemWatcher(dir)
            {
                Filter = "LootConfig.json",
                NotifyFilter = NotifyFilters.LastWrite | NotifyFilters.Size
            };
            _lootConfigWatcher.Changed += OnLootConfigFileChanged;
            _lootConfigWatcher.EnableRaisingEvents = true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster] Could not watch loot config folder: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void OnLootConfigFileChanged(object? sender, FileSystemEventArgs e)
    {
        if ((DateTime.UtcNow - _lastLootConfigReload).TotalMilliseconds < SettingsReloadDebounceMs)
            return;
        _lastLootConfigReload = DateTime.UtcNow;

        try
        {
            ReloadLootConfig();
            ModManager.Log("[Loremaster] Reloaded LootConfig.json", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster] LootConfig reload failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public override void Stop()
    {
        _settingsWatcher?.Dispose();
        _settingsWatcher = null;

        _lootConfigWatcher?.Dispose();
        _lootConfigWatcher = null;

        foreach (var c in EmpyreanAlterationRelocatedCategories)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(c);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Loremaster] Stop UnpatchCategory {c}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        try
        {
            ModC.Harmony.UnpatchCategory("ParchmentQuestHooks");
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster] Stop UnpatchCategory ParchmentQuestHooks: {ex.Message}", ModManager.LogLevel.Warn);
        }

        lock (PortalQuestHookLock)
            PortalQuestHooksApplied = false;

        base.Stop();
    }

    void OnLoremasterSettingsFileChanged(object? sender, FileSystemEventArgs e)
    {
        if ((DateTime.UtcNow - _lastSettingsReload).TotalMilliseconds < SettingsReloadDebounceMs)
            return;
        _lastSettingsReload = DateTime.UtcNow;

        try
        {
            var path = e.FullPath;
            if (!File.Exists(path)) return;
            var json = File.ReadAllText(path);
            var loaded = JsonSerializer.Deserialize<Settings>(json, new JsonSerializerOptions { PropertyNameCaseInsensitive = true });
            if (loaded is not null)
            {
                SettingsContainer.Settings = loaded;
                Settings = loaded;
                UpdateIngamePlayers();
                RefreshEmpyreanAlterationRelocatedPatches();
                RefreshParchmentQuestPatches();
                ReloadLootConfig();
                ModManager.Log("[Loremaster] Settings.json reloaded; recalculated QP for all online players.");
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster] Failed to reload Settings.json: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Player commands
    // ─────────────────────────────────────────────────────────────────────────

    [CommandHandler("qb", AccessLevel.Player, CommandHandlerFlag.RequiresWorld,
        "Shows the multiplicative XP breakdown (Base XP block). Type /qb help for all subcommands.")]
    public static void HandleQuests(Session session, params string[] parameters)
    {
        var player = session.Player;
        if (player is null) return;

        if (parameters.Length > 0)
        {
            switch (parameters[0].ToLowerInvariant())
            {
                case "list":
                    var quests = player.QuestManager?.GetQuests() ?? new List<CharacterPropertiesQuestRegistry>();
                    var sb = new StringBuilder();
                    sb.AppendLine("Quest Name / Completions / QP Value");
                    sb.AppendLine(new string('-', 50));
                    foreach (var quest in quests)
                    {
                        if (!Settings.QuestBonuses.TryGetValue(quest.QuestName, out var pts))
                            pts = Settings.DefaultPoints;
                        sb.AppendLine($"{quest.QuestName,-35} x{quest.NumTimesCompleted,-4} {pts} QP");
                    }
                    player.UpdateQuestPoints();
                    var listQp = player.GetProperty(FakeFloat.QuestBonus) ?? 0;
                    sb.AppendLine(new string('-', 50));
                    sb.AppendLine($"Total: {listQp} QP");
                    LoremasterExtensions.SendMessageLinesAsSystem(player, sb.ToString());
                    LoremasterExtensions.SendXpBonusBreakdown(player);
                    return;

                case "detailed":
                    player.UpdateQuestPoints();
                    LoremasterExtensions.SendXpBonusBreakdownDetailed(player);
                    return;

                case "help":
                    player.SendMessage(
                        "[Loremaster] /qb subcommands:\n" +
                        "  /qb               — multiplicative XP breakdown (Base XP block only)\n" +
                        "  /qb detailed      — full breakdown: QP + chaos split, Loremaster chain, ChallengeModes milestone (if loaded)\n" +
                        "  /qb list          — show all quests with completions and QP value\n" +
                        "  /qb help          — show this help message\n" +
                        "  /topqb            — top 10 by stored QP, your QP, and global rank\n" +
                        "\nToggle personal notifications (per-character, persists across sessions):\n" +
                        "  /qb NotifyAll            — enable or disable all notifications at once\n" +
                        "  /qb NotifyQuest          — QP gains and losses\n" +
                        "  /qb NotifyKillXp         — kill XP multiplier messages\n" +
                        "  /qb NotifyQuestXp        — quest XP multiplier messages\n" +
                        "  /qb NotifyKillLuminance  — kill luminance multiplier messages\n" +
                        "  /qb NotifyQuestLuminance — quest luminance multiplier messages");
                    return;

                case "notifyall":
                    // If all are on, turn all off; otherwise turn all on.
                    var allOn = player.Notify(LMBool.NotifyQuest)
                             && player.Notify(LMBool.NotifyKillXp)
                             && player.Notify(LMBool.NotifyQuestXp)
                             && player.Notify(LMBool.NotifyKillLuminance)
                             && player.Notify(LMBool.NotifyQuestLuminance);
                    var next = !allOn;
                    player.SetProperty(LMBool.NotifyQuest,          next);
                    player.SetProperty(LMBool.NotifyKillXp,         next);
                    player.SetProperty(LMBool.NotifyQuestXp,        next);
                    player.SetProperty(LMBool.NotifyKillLuminance,  next);
                    player.SetProperty(LMBool.NotifyQuestLuminance, next);
                    player.SendMessage($"[Loremaster] All notifications {(next ? "enabled" : "disabled")}.");
                    return;

                case "notifyquest":          player.ToggleNotify(LMBool.NotifyQuest,          "Quest QP");        return;
                case "notifykillxp":         player.ToggleNotify(LMBool.NotifyKillXp,         "Kill XP");         return;
                case "notifyquestxp":        player.ToggleNotify(LMBool.NotifyQuestXp,        "Quest XP");        return;
                case "notifykillluminance":  player.ToggleNotify(LMBool.NotifyKillLuminance,  "Kill Luminance");  return;
                case "notifyquestluminance": player.ToggleNotify(LMBool.NotifyQuestLuminance, "Quest Luminance"); return;
                default:
                    player.SendMessage($"[Loremaster] Unknown subcommand '{parameters[0]}'. Type /qb help for usage.");
                    return;
            }
        }

        // Default: multiplicative breakdown only (no preamble; line-per-message System avoids ♪ suffixes).
        player.UpdateQuestPoints();
        LoremasterExtensions.SendXpBonusBreakdown(player);
    }

    [CommandHandler("topqb", AccessLevel.Player, CommandHandlerFlag.RequiresWorld,
        "Shows top 10 characters by Quest Points, your QP, and global rank.")]
    public static void HandleTopQuestPoints(Session session, params string[] parameters)
    {
        var player = session.Player;
        if (player is null) return;

        player.UpdateQuestPoints();
        var myQp = player.GetProperty(FakeFloat.QuestBonus) ?? 0;
        var propId = (ushort)FakeFloat.QuestBonus;

        try
        {
            using var ctx = new ShardDbContext();
            var top = ctx.BiotaPropertiesFloat.AsNoTracking()
                .Where(p => p.Type == propId)
                .Join(ctx.Character.AsNoTracking(), p => p.ObjectId, c => c.Id, (p, c) => new { c.Name, p.Value, c.IsDeleted })
                .Where(x => !x.IsDeleted)
                .OrderByDescending(x => x.Value)
                .Take(10)
                .ToList();

            var rank = ctx.BiotaPropertiesFloat.AsNoTracking()
                           .Count(p => p.Type == propId && p.Value > myQp) + 1;

            var sb = new StringBuilder();
            sb.AppendLine("==== Top Quest Points (top 10) ====");
            var place = 1;
            foreach (var row in top)
            {
                sb.AppendLine($"  {place,2}. {row.Name,-32} {row.Value,8:0.##} QP");
                place++;
            }

            sb.AppendLine("---");
            sb.AppendLine($"Your QP: {myQp:0.##}  |  Global rank (by stored QP): {rank:N0}");
            player.SendMessage(sb.ToString());
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster] /topqb failed: {ex}", ModManager.LogLevel.Error);
            player.SendMessage("[Loremaster] Could not query leaderboard (see server log).");
        }
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Admin commands
    // ─────────────────────────────────────────────────────────────────────────

    [CommandHandler("qb-inspect", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld,
        "Inspect quest bonus data for a named player.",
        "Usage: /qb-inspect <playerName>")]
    public static void HandleAdminInspect(Session session, params string[] parameters)
    {
        if (session?.Player is not Player admin)
            return;

        if (parameters.Length < 1)
        {
            admin.SendMessage("Usage: /qb-inspect <playerName>");
            return;
        }

        var targetName = parameters[0];
        var target     = PlayerManager.GetOnlinePlayer(targetName);

        if (target is null)
        {
            admin.SendMessage($"Player '{targetName}' is not online.");
            return;
        }

        var qp          = target.GetProperty(FakeFloat.QuestBonus) ?? 0;
        var totalMult   = target.GetTotalXpMultiplier();
        var charCount   = target.QuestManager.GetQuests().Count(x => x.HasSolves());
        var accountCount = target.GetAccountUniqueQuestCount();

        admin.SendMessage(
            $"[Loremaster Inspect] {target.Name}\n" +
            $"  Stored QP       : {qp}\n" +
            $"  Total XP Mult   : {totalMult * 100.0:0.##}% of raw\n" +
            $"  Char quests     : {charCount}\n" +
            $"  Account unique  : {accountCount}\n" +
            $"  Account-wide    : {Settings.UseAccountWideQuests}");
    }

    [CommandHandler("qb-reset", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld,
        "Recalculates and resets quest bonus for a named player.",
        "Usage: /qb-reset <playerName>")]
    public static void HandleAdminReset(Session session, params string[] parameters)
    {
        if (session?.Player is not Player admin)
            return;

        if (parameters.Length < 1)
        {
            admin.SendMessage("Usage: /qb-reset <playerName>");
            return;
        }

        var targetName = parameters[0];
        var target     = PlayerManager.GetOnlinePlayer(targetName);

        if (target is null)
        {
            admin.SendMessage($"Player '{targetName}' is not online.");
            return;
        }

        target.UpdateQuestPoints();
        var qp        = target.GetProperty(FakeFloat.QuestBonus) ?? 0;
        var totalMult = target.GetTotalXpMultiplier();

        admin.SendMessage($"[Loremaster] Reset {target.Name}: {qp} QP → total XP mult {totalMult * 100.0:0.##}% of raw.");
        target.SendMessage($"[Loremaster] Your quest bonus has been recalculated by an admin: {qp} QP → total XP mult {totalMult * 100.0:0.##}% of raw.");
    }

    [CommandHandler("qb-resetall", AccessLevel.Admin, CommandHandlerFlag.None,
        "Recalculates quest bonus for all online players. Safe to run after settings changes.")]
    public static void HandleAdminResetAll(Session session, params string[] parameters)
    {
        UpdateIngamePlayers();
        var count = PlayerManager.GetAllOnline().Count();
        var msg   = $"[Loremaster] Recalculated quest bonuses for {count} online player(s).";
        session?.Player?.SendMessage(msg);
        ModManager.Log(msg);
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Shared utility
    // ─────────────────────────────────────────────────────────────────────────

    public static void UpdateIngamePlayers()
    {
        foreach (var player in PlayerManager.GetAllOnline())
            player.UpdateQuestPoints();
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Login hook — recalculate on enter world
    // ─────────────────────────────────────────────────────────────────────────

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostPlayerEnterWorld(ref Player __instance)
    {
        // Defer QP calculation by one tick — Account and QuestManager may not
        // be fully attached yet at the point this postfix fires.
        // Copy to local first — ref parameters cannot be captured in lambdas.
        var player = __instance;
        var chain = new ActionChain();
        chain.AddAction(player, () => player.UpdateQuestPoints());
        chain.EnqueueChain();
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Quest completion / removal tracking
    // ─────────────────────────────────────────────────────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(QuestManager), nameof(QuestManager.Decrement), new Type[] { typeof(string), typeof(int) })]
    public static void PreDecrement(string quest, int amount, ref QuestManager __instance)
    {
        var questName = QuestManager.GetQuestName(quest);
        if (questName is null) return;

        var qst = __instance.GetQuest(questName);
        if (qst is null) return;

        // QP loss disabled: losing QP is not allowed.
        // if (qst.NumTimesCompleted == 1 && __instance.Creature is Player player)
        // {
        //     player.IncQuestPoints(-qst.Value());
        //     if (player.Notify(LMBool.NotifyQuest))
        //         player.SendMessage(LoremasterExtensions.FormatQpNotification($"−{qst.Value()} QP (quest removed: {questName})"));
        // }
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(QuestManager), nameof(QuestManager.Erase), new Type[] { typeof(string) })]
    public static void PreErase(string questFormat, ref QuestManager __instance)
    {
        var questName = QuestManager.GetQuestName(questFormat);
        if (questName is null) return;

        var qst = __instance.GetQuest(questName);
        if (qst is null) return;

        // QP loss disabled: losing QP is not allowed.
        // if (qst.NumTimesCompleted == 1 && __instance.Creature is Player player)
        // {
        //     player.IncQuestPoints(-qst.Value());
        //     if (player.Notify(LMBool.NotifyQuest))
        //         player.SendMessage(LoremasterExtensions.FormatQpNotification($"−{qst.Value()} QP (quest removed: {questName})"));
        // }
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Update / SetQuestCompletions — Prefix captures solve count, Postfix reacts
    // ─────────────────────────────────────────────────────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(QuestManager), nameof(QuestManager.Update), new Type[] { typeof(string) })]
    public static void PreUpdate(string questFormat, ref QuestManager __instance, ref int __state)
    {
        __state = __instance.GetCurrentSolves(questFormat);
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(QuestManager), nameof(QuestManager.SetQuestCompletions), new Type[] { typeof(string), typeof(int) })]
    public static void PreSetQuestCompletions(string questFormat, int questCompletions, ref QuestManager __instance, ref int __state)
    {
        __state = __instance.GetCurrentSolves(questFormat);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(QuestManager), nameof(QuestManager.Update), new Type[] { typeof(string) })]
    public static void PostUpdate(string questFormat, ref QuestManager __instance, ref int __state)
    {
        CheckQuestEligibilityChange(questFormat, __instance, __state);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(QuestManager), nameof(QuestManager.SetQuestCompletions), new Type[] { typeof(string), typeof(int) })]
    public static void PostSetQuestCompletions(string questFormat, int questCompletions, ref QuestManager __instance, ref int __state)
    {
        CheckQuestEligibilityChange(questFormat, __instance, __state);
    }

    private static void CheckQuestEligibilityChange(string questFormat, QuestManager instance, int previousSolves)
    {
        var solves = instance.GetCurrentSolves(questFormat);
        if (instance.Creature is not Player player) return;

        // ── First ever solve (0 → any) ───────────────────────────────────────
        if (previousSolves == 0 && solves != 0)
        {
            var quest = instance.GetQuest(QuestManager.GetQuestName(questFormat));
            if (quest is null)
                return;

            var beforeQp = (float)(player.GetProperty(FakeFloat.QuestBonus) ?? 0f);
            player.UpdateQuestPoints();
            var afterQp = (float)(player.GetProperty(FakeFloat.QuestBonus) ?? 0f);
            if (player.Notify(LMBool.NotifyQuest))
            {
                var delta = afterQp - beforeQp;
                if (delta > 0.0001f)
                    player.SendMessage(LoremasterExtensions.FormatQpNotification($"+{delta:0.##} QP from {questFormat}"));
            }

            var questName = QuestManager.GetQuestName(questFormat) ?? questFormat;

            // One-time XP + loot bonuses (QP already reflected in UpdateQuestPoints)
            player.GrantCompletionBonuses(questName);

            // Achievement check: newCount includes the just-added quest; prevCount = newCount - 1.
            var newAccountCount = Settings.UseAccountWideQuests
                ? player.GetAccountUniqueQuestCount()
                : player.QuestManager?.GetQuests().Count(q => q.HasSolves()) ?? 0;
            var prevAccountCount = Math.Max(0, newAccountCount - 1);
            player.CheckAndBroadcastAchievement(prevAccountCount, newAccountCount);
        }

        // ── Repeat solve (previously solved, solve count increased) ─────────
        if (previousSolves > 0 && solves > previousSolves)
        {
            var questName = QuestManager.GetQuestName(questFormat) ?? questFormat;
            var qst = instance.GetQuest(questName);
            var qpVal = qst?.Value() ?? 0f;
            bool stampGranted = player.TryAwardRepeatQuestPoints(questName, qpVal);
            player.UpdateQuestPoints();

            if (stampGranted && !player.HasReceivedRepeatReward(questName))
            {
                player.GrantCompletionBonuses(questName);
                player.GrantRepeatSolveLoot(questName);
                player.MarkRepeatRewardGranted(questName);
            }
        }

        // ── Quest removed (any → 0) ──────────────────────────────────────────
        // QP loss disabled: losing QP is not allowed.
        // if (previousSolves != 0 && solves == 0)
        // {
        //     var quest = instance.GetQuest(QuestManager.GetQuestName(questFormat));
        //     player.IncQuestPoints(-quest.Value());
        //     if (player.Notify(LMBool.NotifyQuest))
        //         player.SendMessage(LoremasterExtensions.FormatQpNotification($"−{quest.Value()} QP from {questFormat}"));
        // }
    }

    // ─────────────────────────────────────────────────────────────────────────
    // XP / Luminance — multiplicative chain (base retention × QP × equipment × augments × enlight × challenge); luminance optional full chain.
    // ─────────────────────────────────────────────────────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreGrantXP(ref long amount, XpType xpType, ShareType shareType, ref Player __instance)
    {
        if (_questXpMultiplierSuppressDepth > 0)
            return;

        var mult  = __instance.GetTotalXpMultiplier();
        var total = (long)(amount * mult);

        var notify = xpType == XpType.Kill  && __instance.Notify(LMBool.NotifyKillXp)
                  || xpType == XpType.Quest && __instance.Notify(LMBool.NotifyQuestXp);
        if (notify && __instance.Session != null)
            __instance.SendMessage($"Earned {total:N0} XP! ({amount:N0} raw × {mult * 100.0:0.##}% of full vanilla)");

        amount = total;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.EarnLuminance), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreEarnLuminance(ref long amount, XpType xpType, ShareType shareType, ref Player __instance)
    {
        var mult = Settings?.ApplyStandardBaseXpScaleToLuminance == true
            ? __instance.GetTotalXpMultiplier()
            : __instance.QuestBonus();
        var total = (long)(amount * mult);

        var notify = xpType == XpType.Kill  && __instance.Notify(LMBool.NotifyKillLuminance)
                  || xpType == XpType.Quest && __instance.Notify(LMBool.NotifyQuestLuminance);
        if (notify && __instance.Session != null)
            __instance.SendMessage($"Earned {total:N0} luminance! ({amount:N0} raw × {mult * 100.0:0.##}% of full vanilla)");

        amount = total;
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Trophy Burden XP
    // ─────────────────────────────────────────────────────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionGiveObjectRequest), new Type[] { typeof(uint), typeof(uint), typeof(int) })]
    public static void PreHandleActionGiveObjectRequest(Player __instance, uint targetGuid, uint itemGuid, int amount)
    {
        var target = __instance.FindObject(targetGuid, Player.SearchLocations.Landblock, out _, out _, out _) as Container;
        var item = __instance.FindObject(itemGuid, Player.SearchLocations.MyInventory | Player.SearchLocations.MyEquippedItems, out _, out _, out _);

        TrophyBurdenXp.HandleGiveRequest(__instance, target, item);
    }
}
