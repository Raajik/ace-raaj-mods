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

    // Thread-static state for repeatQB unique entry creation across Harmony patch boundaries
    [ThreadStatic] static bool _creatingRepeatQbEntry;
    [ThreadStatic] static uint _currentStampGiverWcid;

    // Lottery contribution accumulator (drained by LeyLineLedger before each draw)
    internal static readonly object LotteryLock = new();
    internal static double PendingLotteryContribution = 0;

    public static void RunWithoutQuestXpMultiplier(Action action)
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
        Settings = SettingsContainer.Settings ?? new Settings();
        base.Start();
        ReloadLootConfig();
        EnsureLootConfigFileWatcher();
        TryApplyPortalHasQuestSolvesHooks();
        RefreshEmpyreanAlterationRelocatedPatches();
        RefreshParchmentQuestPatches();
        RefreshAccountAugmentPatches();
        AccountQuestFlags.Load();
        RepeatQbTracker.Load();
        MomentumSystem.Initialize();

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
        RefreshAccountAugmentPatches();
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
                RefreshAccountAugmentPatches();
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

        admin.SendMessage($"[Loremaster] Reset {target.Name}: {qp} QP -> total XP mult {totalMult * 100.0:0.##}% of raw.");
        target.SendMessage($"[Loremaster] Your quest bonus has been recalculated by an admin: {qp} QP -> total XP mult {totalMult * 100.0:0.##}% of raw.");
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
        if (PatchClass.Settings is null) return;
        var solves = instance.GetCurrentSolves(questFormat);
        if (instance.Creature is not Player player) return;

        // ── First ever solve (0 → any) ───────────────────────────────────────
        if (previousSolves == 0 && solves != 0)
        {
            var quest = instance.GetQuest(QuestManager.GetQuestName(questFormat));
            if (quest is null)
                return;

            var questName = QuestManager.GetQuestName(questFormat) ?? questFormat;
            var baseName = LoremasterExtensions.GetBaseQuestName(questName);
            var isRepeatQbEntry = questName.Contains("#repeatQB", StringComparison.OrdinalIgnoreCase);
            var accountId = player.Account?.AccountId;
            bool isAccountRepeat = accountId.HasValue
                && Settings.EnableAccountWideRepeatCooldown
                && RepeatQbTracker.HasRepeatQb(accountId.Value, baseName);

            // Record account-wide completion regardless (use base name for cooldown)
            if (accountId.HasValue && Settings.EnableAccountWideRepeatCooldown)
                RepeatQbTracker.RecordRepeatQb(accountId.Value, baseName);

            // Account-wide quest flag: all characters on this account treated as completed
            if (accountId.HasValue && !isRepeatQbEntry)
                AccountQuestFlags.AddFlag(accountId.Value, baseName);

            if (isAccountRepeat || isRepeatQbEntry)
            {
                // Repeat completion (either account-wide repeat or a repeatQB unique entry)
                var qpVal = quest.Value();
                bool stampGranted = player.TryAwardRepeatQuestPoints(baseName, qpVal);

                // Challenge-mode /qb uses ChallengeRunQuestPoints only (see LoremasterExtensions.UpdateQuestPoints).
                // Account-repeat 0→1 can hit TryAwardRepeatQuestPoints false (account cooldown from another toon
                // or stale RepeatQbTracker.json after a wipe). Still credit this stamp so displayed QB does not stay 0.
                if (ChallengeModesActiveBridge.PlayerHasActiveChallenge(player) && qpVal > 0f)
                {
                    var current = (float)(player.GetProperty(LMFloat.ChallengeRunQuestPoints) ?? 0f);
                    player.SetProperty(LMFloat.ChallengeRunQuestPoints, current + qpVal);
                }

                player.UpdateQuestPoints();

                // Only grant completion bonuses/loot for genuine first completions,
                // not for repeatQB unique entries.
                if (!isRepeatQbEntry && stampGranted)
                {
                    player.GrantCompletionBonuses(baseName);
                    player.GrantRepeatSolveLoot(baseName);
                }
            }
            else
            {
                // Genuine first completion
                var beforeQp = (float)(player.GetProperty(FakeFloat.QuestBonus) ?? 0f);

                if (ChallengeModesActiveBridge.PlayerHasActiveChallenge(player))
                {
                    var qpVal = quest.Value();
                    var current = (float)(player.GetProperty(LMFloat.ChallengeRunQuestPoints) ?? 0f);
                    player.SetProperty(LMFloat.ChallengeRunQuestPoints, current + qpVal);
                }

                player.UpdateQuestPoints();
                var afterQp = (float)(player.GetProperty(FakeFloat.QuestBonus) ?? 0f);
                
                // One-time XP + loot bonuses (QP already reflected in UpdateQuestPoints)
                var bonusXp = player.GrantCompletionBonuses(baseName);
                
                // Combined QP + XP message
                if (player.Notify(LMBool.NotifyQuest))
                {
                    var delta = afterQp - beforeQp;
                    if (delta > 0.0001f)
                    {
                        var msg = bonusXp > 0
                            ? $"+{delta:0.##} QP from {questFormat} (bonus: +{bonusXp:N0} XP)"
                            : $"+{delta:0.##} QP from {questFormat}";
                        player.SendMessage(LoremasterExtensions.FormatQpNotification(msg));
                    }
                }

                // Achievement check: newCount includes the just-added quest; prevCount = newCount - 1.
                var newAccountCount = Settings.UseAccountWideQuests
                    ? player.GetAccountUniqueQuestCount()
                    : player.QuestManager?.GetQuests().Count(q => q.HasSolves()) ?? 0;
                var prevAccountCount = Math.Max(0, newAccountCount - 1);
                player.CheckAndBroadcastAchievement(prevAccountCount, newAccountCount);
            }
        }

        // ── Repeat solve (previously solved, solve count increased) ─────────
        if (previousSolves > 0 && solves > previousSolves && !_creatingRepeatQbEntry)
        {
            var questName = QuestManager.GetQuestName(questFormat) ?? questFormat;
            var worldQuest = DatabaseManager.World.GetCachedQuest(questName);
            // Kill-task ticks 1→2→…→MaxSolves-1: not a repeat completion; skip TryAwardRepeatQuestPoints
            // (avoids account cooldown line on every kill).
            var isMidProgressKillTask = worldQuest != null && worldQuest.MaxSolves > 1 && solves < worldQuest.MaxSolves;
            if (!isMidProgressKillTask)
            {
                var baseName = LoremasterExtensions.GetBaseQuestName(questName);
                var qst = instance.GetQuest(questName);
                var qpVal = qst?.Value() ?? 0f;

                // Check if questgiver is blacklisted
                var giverWcid = (uint)(player.GetProperty(LMInt.LastQuestgiverWcid) ?? 0);
                if (RepeatQbQuestgiverBlacklist.IsBlacklisted(giverWcid))
                {
                    if (player.Notify(LMBool.NotifyQuest))
                        player.SendMessage(LoremasterExtensions.FormatQpNotification($"This questgiver does not award repeatQB credit."));
                    return;
                }

                // Check account-wide cooldown
                bool stampGranted = player.TryAwardRepeatQuestPoints(baseName, qpVal);

                if (stampGranted)
                {
                    // Create a unique quest entry so this repeat counts as +1 QP
                    _creatingRepeatQbEntry = true;
                    try
                    {
                        var uniqueName = $"{baseName}#repeatQB{solves}";
                        instance.Update(uniqueName);

                        // Record in tracker
                        if (player.Account?.AccountId is uint acctId)
                            RepeatQbTracker.RecordRepeatQb(acctId, baseName);

                        if (player.Notify(LMBool.NotifyQuest))
                            player.SendMessage(LoremasterExtensions.FormatQpNotification($"+1 repeatQB from {baseName}"));
                    }
                    finally
                    {
                        _creatingRepeatQbEntry = false;
                    }
                }

                if (ChallengeModesActiveBridge.PlayerHasActiveChallenge(player) && stampGranted)
                {
                    var current = (float)(player.GetProperty(LMFloat.ChallengeRunQuestPoints) ?? 0f);
                    player.SetProperty(LMFloat.ChallengeRunQuestPoints, current + qpVal);
                }

                player.UpdateQuestPoints();
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
    // EmoteManager — Track questgiver WCID when stamping quests
    // ─────────────────────────────────────────────────────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(EmoteManager), nameof(EmoteManager.ExecuteEmote), new Type[] { typeof(PropertiesEmote), typeof(PropertiesEmoteAction), typeof(WorldObject) })]
    public static void PreExecuteEmote(PropertiesEmote emoteSet, PropertiesEmoteAction emote, WorldObject targetObject, EmoteManager __instance)
    {
        if ((EmoteType)emote.Type is EmoteType.StampQuest or EmoteType.StampMyQuest)
        {
            _currentStampGiverWcid = __instance.WorldObject?.WeenieClassId ?? 0;
        }
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Kill Task Auto-Reaccept
    // ─────────────────────────────────────────────────────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(QuestManager), nameof(QuestManager.HandleKillTask))]
    public static bool PreHandleKillTask(string killQuestName, WorldObject killedCreature, ref QuestManager __instance)
    {
        if (__instance.Creature is not Player player) return true;
        if (Settings is null) return true;

        var questName = QuestManager.GetQuestName(killQuestName);
        if (string.IsNullOrEmpty(questName)) return true;

        // If player doesn't have the quest yet, let vanilla handle acceptance
        if (!__instance.HasQuest(questName))
            return true;

        if (killedCreature == null)
            return true;

        var dbQuest = DatabaseManager.World.GetCachedQuest(questName);
        if (dbQuest == null)
            return true;

        // If already max-solved, check cooldown for auto-reaccept
        if (__instance.IsMaxSolves(questName))
        {
            var quest = DatabaseManager.World.GetCachedQuest(questName);
            if (quest == null) return true;

            var stored = player.GetProperty(LMString.KillTaskAutoAcceptTimestamps);
            Dictionary<string, long>? timestamps = null;
            if (!string.IsNullOrEmpty(stored))
            {
                try { timestamps = JsonSerializer.Deserialize<Dictionary<string, long>>(stored); } catch { }
            }
            timestamps ??= new Dictionary<string, long>(StringComparer.OrdinalIgnoreCase);

            var now = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
            var lastCompleted = timestamps.TryGetValue(questName, out var ts) ? ts : 0L;
            var minDelta = (uint)(quest.MinDelta * PropertyManager.GetDouble("quest_mindelta_rate", 1).Item);

            if (now - lastCompleted >= minDelta)
            {
                // Auto-reaccept: reset to 0 solves
                __instance.SetQuestCompletions(questName, 0);
                timestamps[questName] = now;
                player.SetProperty(LMString.KillTaskAutoAcceptTimestamps, JsonSerializer.Serialize(timestamps));

                // Grant +1 repeatQB for reaccept
                player.AddExtraQuestPoints(1);
                player.UpdateQuestPoints();
                if (player.Notify(LMBool.NotifyQuest))
                    player.SendMessage(LoremasterExtensions.FormatQpNotification($"+1 repeatQB -- Kill task '{questName}' auto-reaccepted"));

                // Now let vanilla handle the kill credit for this new cycle
                return true;
            }

            // Still on cooldown — skip vanilla
            return false;
        }

        if (Settings.CompactKillTaskMessages && dbQuest.MaxSolves > 0)
        {
            __instance.Stamp(killQuestName);
            var playerQuest = __instance.GetQuest(questName);
            if (playerQuest == null)
                return true;

            var cur = playerQuest.NumTimesCompleted;
            var max = dbQuest.MaxSolves;
            var line = __instance.IsMaxSolves(questName)
                ? $"({cur}/{max}) complete."
                : $"({cur}/{max})";
            player.Session.Network.EnqueueSend(new GameMessageSystemChat(line, ChatMessageType.Broadcast));
            return false;
        }

        return true;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(QuestManager), nameof(QuestManager.HandleKillTask))]
    public static void PostHandleKillTask(string killQuestName, WorldObject killedCreature, ref QuestManager __instance)
    {
        if (__instance.Creature is not Player player) return;

        var questName = QuestManager.GetQuestName(killQuestName);
        if (string.IsNullOrEmpty(questName)) return;

        // If just reached max solves, grant +1 repeatQB and record timestamp
        if (__instance.IsMaxSolves(questName))
        {
            var stored = player.GetProperty(LMString.KillTaskAutoAcceptTimestamps);
            Dictionary<string, long>? timestamps = null;
            if (!string.IsNullOrEmpty(stored))
            {
                try { timestamps = JsonSerializer.Deserialize<Dictionary<string, long>>(stored); } catch { }
            }
            timestamps ??= new Dictionary<string, long>(StringComparer.OrdinalIgnoreCase);

            timestamps[questName] = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
            player.SetProperty(LMString.KillTaskAutoAcceptTimestamps, JsonSerializer.Serialize(timestamps));

            player.AddExtraQuestPoints(1);
            player.UpdateQuestPoints();
            if (player.Notify(LMBool.NotifyQuest))
                player.SendMessage(LoremasterExtensions.FormatQpNotification($"+1 repeatQB -- Kill task '{questName}' completed"));
        }
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

        double mult;
        long total;

        if (xpType == XpType.Quest)
        {
            var s = Settings;
            var baseRetention = s is null ? 1.0 : Math.Clamp(s.BonusXpBaseRetentionPercent / 100.0, 0.0, 100.0);
            total = (long)(amount * baseRetention);

            if (s is not null && s.QuestXpPerQuestPoint > 0)
            {
                var qb = (float)(__instance.GetProperty(FakeFloat.QuestBonus) ?? 0);
                var floor = (long)(__instance.GetXpToNextLevel() * qb * s.QuestXpPerQuestPoint);
                if (total < floor)
                    total = floor;
            }

            mult = amount > 0 ? (double)total / amount : baseRetention;
        }
        else
        {
            mult = __instance.GetTotalXpMultiplier();

            // Consume cross-mod context multipliers (Hunt, Cull) set by Creature.Die prefixes
            var huntMult = __instance.GetProperty((PropertyFloat)40121);
            var cullMult = __instance.GetProperty((PropertyFloat)40125);
            if (huntMult.HasValue && huntMult.Value > 0)
                mult *= huntMult.Value;
            if (cullMult.HasValue && cullMult.Value > 0)
                mult *= cullMult.Value;

            total = (long)(amount * mult);

            if (huntMult.HasValue)
                __instance.RemoveProperty((PropertyFloat)40121);
            if (cullMult.HasValue)
                __instance.RemoveProperty((PropertyFloat)40125);

            // Track final killer XP for WorldEvents hunt window points (PropertyInt64 40126 = HuntPropertyIds.PendingGrantedCharacterXp).
            if (xpType == XpType.Kill && huntMult.HasValue && huntMult.Value > 0)
                __instance.SetProperty((PropertyInt64)40126, total);
        }

        // Apply level parity BEFORE momentum so momentum consumes from the parity-adjusted amount
        double parityMult = MomentumSystem.ApplyLevelParityMultiplier(__instance, ref total);
        if (parityMult != 1.0 && __instance.Notify(LMBool.NotifyQuestXp))
        {
            var parityStr = parityMult > 1.0 ? $"+{(parityMult - 1.0) * 100:0.##}% parity" : $"-{Math.Abs(parityMult - 1.0) * 100:0.##}% parity";
            // We'll just include it in the notify below
        }

        // Apply momentum multiplier (consumes from account-wide pool)
        double momentumMult = MomentumSystem.ApplyMomentumMultiplier(__instance, ref total);
        if (momentumMult > 1.0)
            mult *= momentumMult;

        var notify = xpType == XpType.Quest && __instance.Notify(LMBool.NotifyQuestXp);
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
    // Rested XP — login / logout hooks
    // ─────────────────────────────────────────────────────────────────────────

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostPlayerEnterWorld(Player __instance)
    {
        if (__instance?.Session?.Network != null)
            MomentumSystem.OnPlayerEnterWorld(__instance);
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "LogOut_Final", new Type[] { typeof(bool) })]
    public static void PreLogOut_Final(bool skipAnimations, Player __instance)
    {
        MomentumSystem.OnPlayerLogOut(__instance);
    }

}
