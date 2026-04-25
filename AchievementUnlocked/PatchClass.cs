namespace AchievementUnlocked;

[HarmonyPatch]
public class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    public override void Start()
    {
        base.Start();
        Settings = SettingsContainer.Settings ?? new Settings();
        AchievementManager.Initialize(Settings);
        RespectingYourTime.Initialize();
    }

    public override async Task OnWorldOpen()
    {
        Settings = SettingsContainer.Settings ?? new Settings();
        AchievementManager.Initialize(Settings);
        RespectingYourTime.Initialize();
    }

    // ─── Login Evaluation ───

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostPlayerEnterWorld(Player __instance)
    {
        if (Settings?.EnableAchievementFramework != true)
            return;

        // Initialize decoupled counters from current player state
        var questCount = __instance.QuestManager?.GetQuests().Count(q => q.HasSolves()) ?? 0;
        __instance.SetProperty(AchievementProperties.CachedQuestCount, questCount);

        // Sync all account-wide achievements and pool bonus to this character
        AchievementManager.SyncAllAccountAchievementsToCharacter(__instance);

        // Evaluate tier-based achievements on login (account-wide for Loremaster)
        AchievementManager.EvaluateAccountLoremasterTiers(__instance.Account.AccountId);
    }

    // ─── Kill Tracking ───

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die), new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostCreatureDie(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Creature __instance)
    {
        if (Settings?.EnableAchievementFramework != true || Settings?.EnableKillTracking != true)
            return;

        var killerPlayer = lastDamager?.TryGetPetOwnerOrAttacker() as Player
                        ?? topDamager?.TryGetPetOwnerOrAttacker() as Player;

        if (killerPlayer is null)
            return;

        // Track lifetime kills for ReachProgressPoints evaluation
        var lifetimeKills = killerPlayer.GetProperty(AchievementProperties.LifetimeKills) ?? 0;
        killerPlayer.SetProperty(AchievementProperties.LifetimeKills, lifetimeKills + 1);

        AchievementManager.OnCreatureKilled(killerPlayer, __instance);

        // Re-evaluate account-wide Loremaster tiers after kill
        AchievementManager.EvaluateAccountLoremasterTiers(killerPlayer.Account.AccountId);
    }

    // ─── Quest Tracking ───

    [HarmonyPostfix]
    [HarmonyPatch(typeof(QuestManager), nameof(QuestManager.Update), new Type[] { typeof(string) })]
    public static void PostQuestUpdate(string questFormat, QuestManager __instance)
    {
        if (Settings?.EnableAchievementFramework != true || Settings?.EnableQuestTracking != true)
            return;

        if (__instance?.Creature is not Player player)
            return;

        // Only count when the quest was actually stamped/completed (not just updated)
        var questName = QuestManager.GetQuestName(questFormat);
        if (string.IsNullOrWhiteSpace(questName))
            return;

        // Refresh cached quest count for ReachProgressPoints evaluation
        var questCount = player.QuestManager?.GetQuests().Count(q => q.HasSolves()) ?? 0;
        player.SetProperty(AchievementProperties.CachedQuestCount, questCount);

        AchievementManager.OnQuestCompleted(player, questName);

        // Re-evaluate account-wide Loremaster tiers after quest completion
        AchievementManager.EvaluateAccountLoremasterTiers(player.Account.AccountId);
    }

    // ─── PropertyInt Tracking (Level, Attributes, etc.) ───

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.UpdateProperty), new Type[] { typeof(WorldObject), typeof(PropertyInt), typeof(int?), typeof(bool) })]
    public static void PostUpdatePropertyInt(WorldObject obj, PropertyInt prop, int? value, bool broadcast, Player __instance)
    {
        if (Settings?.EnableAchievementFramework != true || Settings?.EnablePropertyTracking != true)
            return;

        if (value is null)
            return;

        if (prop == PropertyInt.Level)
            AchievementManager.OnLevelChanged(__instance);

        AchievementManager.OnPropertyIntChanged(__instance, prop, value.Value);
    }

    // ─── PropertyFloat Tracking ───

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.UpdateProperty), new Type[] { typeof(WorldObject), typeof(PropertyFloat), typeof(double?), typeof(bool) })]
    public static void PostUpdatePropertyFloat(WorldObject obj, PropertyFloat prop, double? value, bool broadcast, Player __instance)
    {
        if (Settings?.EnableAchievementFramework != true || Settings?.EnablePropertyTracking != true)
            return;

        if (value is null)
            return;

        AchievementManager.OnPropertyFloatChanged(__instance, prop, value.Value);
    }

    // ─── Skill Tracking ───

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionRaiseSkill), new Type[] { typeof(Skill), typeof(uint) })]
    public static void PostHandleActionRaiseSkill(Skill skill, uint amount, Player __instance)
    {
        if (Settings?.EnableAchievementFramework != true || Settings?.EnableSkillTracking != true)
            return;

        var cs = __instance.GetCreatureSkill(skill);
        if (cs is null)
            return;

        var baseLevel = (int)(cs.Ranks + cs.InitLevel);
        AchievementManager.OnSkillChanged(__instance, skill, baseLevel);
    }

    // ─── Player Commands ───

    [CommandHandler("achievements", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0, "View your achievements.", "Usage: /achievements [list|progress|info <id>]")]
    public static void HandleAchievements(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (Settings?.EnableAchievementFramework != true)
        {
            player.SendMessage("Achievement framework is currently disabled.", ChatMessageType.Broadcast);
            return;
        }

        var args = parameters.Length > 0 ? parameters[0].Trim().ToLowerInvariant() : "list";

        switch (args)
        {
            case "list":
                SendAchievementList(player);
                break;
            case "progress":
                SendAchievementProgress(player);
                break;
            case "info" when parameters.Length > 1:
                SendAchievementInfo(player, parameters[1]);
                break;
            default:
                player.SendMessage("Usage: /achievements [list|progress|info <id>]", ChatMessageType.System);
                break;
        }
    }

    [CommandHandler("ach", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0, "Short alias for /achievements.")]
    public static void HandleAch(Session session, params string[] parameters)
    {
        HandleAchievements(session, parameters);
    }

    static void SendAchievementList(Player player)
    {
        var categories = AchievementManager.AllAchievements
            .GroupBy(a => a.Category)
            .OrderBy(g => g.Key);

        player.SendMessage("=== Achievements ===", ChatMessageType.System);

        foreach (var cat in categories)
        {
            player.SendMessage($"  [{cat.Key}]", ChatMessageType.System);
            foreach (var ach in cat.OrderBy(a => a.Name))
            {
                bool unlocked = AchievementManager.HasAchievement(player, ach.Id);
                string status = unlocked ? "[✓]" : "[ ]";
                string name = ach.Hidden && !unlocked ? "???" : ach.Name;
                player.SendMessage($"    {status} {name}", ChatMessageType.System);
            }
        }
    }

    static void SendAchievementProgress(Player player)
    {
        player.SendMessage("=== Achievement Progress ===", ChatMessageType.System);
        foreach (var ach in AchievementManager.AllAchievements.Where(a => !AchievementManager.HasAchievement(player, a.Id)))
        {
            if (ach.Hidden)
                continue;

            var progress = ach.Type == AchievementType.ReachProgressPoints
                ? AchievementManager.EvaluateProgressPoints(player)
                : AchievementManager.GetProgress(player, ach.Id);
            var required = ach.Type switch
            {
                AchievementType.KillCreature or AchievementType.KillAny or AchievementType.CompleteQuest => ach.RequiredCount,
                AchievementType.ReachLevel or AchievementType.ReachSkill or AchievementType.ReachAttribute or AchievementType.ReachPropertyInt or AchievementType.ReachPropertyFloat or AchievementType.ReachProgressPoints => ach.RequiredValue,
                _ => 0,
            };

            if (required > 0)
                player.SendMessage($"  {ach.Name}: {progress} / {required}", ChatMessageType.System);
            else
                player.SendMessage($"  {ach.Name}: in progress", ChatMessageType.System);
        }
    }

    static void SendAchievementInfo(Player player, string id)
    {
        var ach = AchievementManager.AllAchievements.FirstOrDefault(a => string.Equals(a.Id, id, StringComparison.OrdinalIgnoreCase));
        if (ach is null)
        {
            player.SendMessage($"Achievement '{id}' not found.", ChatMessageType.System);
            return;
        }

        bool unlocked = AchievementManager.HasAchievement(player, ach.Id);
        if (ach.Hidden && !unlocked)
        {
            player.SendMessage("This achievement is hidden.", ChatMessageType.System);
            return;
        }

        player.SendMessage($"=== {ach.Name} ===", ChatMessageType.System);
        player.SendMessage($"Id: {ach.Id}", ChatMessageType.System);
        player.SendMessage($"Category: {ach.Category}", ChatMessageType.System);
        player.SendMessage($"Description: {ach.Description}", ChatMessageType.System);
        player.SendMessage($"Type: {ach.Type}", ChatMessageType.System);
        player.SendMessage($"Status: {(unlocked ? "Unlocked" : "Locked")}", ChatMessageType.System);

        if (!unlocked && ach.Prerequisites?.Count > 0)
            player.SendMessage($"Prerequisites: {string.Join(", ", ach.Prerequisites)}", ChatMessageType.System);
    }

    // ─── Admin Commands ───

    [CommandHandler("achievementadmin", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, -1, "Administer achievements.", "Usage: /achievementadmin grant <player> <id> | grantall <player> | revoke <player> <id> | checkall <player> | progress <player> <id> <value>")]
    public static void HandleAchievementAdmin(Session session, params string[] parameters)
    {
        if (session?.Player is not Player admin)
            return;

        if (Settings?.EnableAchievementFramework != true)
        {
            admin.SendMessage("Achievement framework is currently disabled.", ChatMessageType.Broadcast);
            return;
        }

        if (Settings?.AllowAdminCommands != true)
        {
            admin.SendMessage("Achievement admin commands are disabled in Settings.json.", ChatMessageType.Broadcast);
            return;
        }

        if (parameters.Length < 1)
        {
            admin.SendMessage("Usage: /achievementadmin grant <player> <id> | grantall <player> | revoke <player> <id> | checkall <player> | progress <player> <id> <value>", ChatMessageType.System);
            return;
        }

        var cmd = parameters[0].Trim().ToLowerInvariant();

        switch (cmd)
        {
            case "grant" when parameters.Length >= 3:
                AdminGrant(admin, parameters[1], parameters[2]);
                break;
            case "grantall" when parameters.Length >= 2:
                AdminGrantAll(admin, parameters[1]);
                break;
            case "revoke" when parameters.Length >= 3:
                AdminRevoke(admin, parameters[1], parameters[2]);
                break;
            case "checkall" when parameters.Length >= 2:
                AdminCheckAll(admin, parameters[1]);
                break;
            case "progress" when parameters.Length >= 4:
                AdminSetProgress(admin, parameters[1], parameters[2], parameters[3]);
                break;
            default:
                admin.SendMessage("Usage: /achievementadmin grant <player> <id> | grantall <player> | revoke <player> <id> | checkall <player> | progress <player> <id> <value>", ChatMessageType.System);
                break;
        }
    }

    static Player? ResolveTargetPlayer(Player admin, string nameOrGuid)
    {
        // Try online first
        var target = PlayerManager.GetOnlinePlayer(nameOrGuid);
        if (target is not null)
            return target;

        // Try by partial name
        target = PlayerManager.GetAllOnline().FirstOrDefault(p => p.Name.Contains(nameOrGuid, StringComparison.OrdinalIgnoreCase));
        if (target is not null)
            return target;

        admin.SendMessage($"Player '{nameOrGuid}' not found online.", ChatMessageType.System);
        return null;
    }

    static void AdminGrant(Player admin, string targetName, string id)
    {
        var target = ResolveTargetPlayer(admin, targetName);
        if (target is null)
            return;

        AchievementManager.UnlockAchievement(target, id, skipPrerequisites: true);
        admin.SendMessage($"Granted achievement '{id}' to {target.Name}.", ChatMessageType.System);
    }

    static void AdminGrantAll(Player admin, string targetName)
    {
        var target = ResolveTargetPlayer(admin, targetName);
        if (target is null)
            return;

        var all = AchievementManager.AllAchievements;
        int granted = 0;
        int skipped = 0;

        foreach (var ach in all)
        {
            if (AchievementManager.HasAchievement(target, ach.Id))
            {
                skipped++;
                continue;
            }

            AchievementManager.UnlockAchievement(target, ach.Id, skipPrerequisites: true);
            granted++;
        }

        admin.SendMessage($"Granted {granted} achievements to {target.Name}. {skipped} already unlocked. Total: {all.Count}.", ChatMessageType.System);
    }

    static void AdminRevoke(Player admin, string targetName, string id)
    {
        var target = ResolveTargetPlayer(admin, targetName);
        if (target is null)
            return;

        AchievementManager.RevokeAchievement(target, id);
        admin.SendMessage($"Revoked achievement '{id}' from {target.Name}.", ChatMessageType.System);
    }

    static void AdminCheckAll(Player admin, string targetName)
    {
        var target = ResolveTargetPlayer(admin, targetName);
        if (target is null)
            return;

        int unlocked = 0;
        foreach (var ach in AchievementManager.AllAchievements)
        {
            if (AchievementManager.HasAchievement(target, ach.Id))
            {
                unlocked++;
                continue;
            }

            // Evaluate counter-based achievements where the progress may already be high enough
            if (ach.Type == AchievementType.KillAny || ach.Type == AchievementType.KillCreature || ach.Type == AchievementType.CompleteQuest)
            {
                var progress = AchievementManager.GetProgress(target, ach.Id);
                if (progress >= ach.RequiredCount)
                    AchievementManager.UnlockAchievement(target, ach.Id);
            }
            else if (ach.Type == AchievementType.ReachLevel)
            {
                if ((target.Level ?? 0) >= ach.RequiredValue)
                    AchievementManager.UnlockAchievement(target, ach.Id);
            }
            else if (ach.Type == AchievementType.ReachSkill)
            {
                if (!string.IsNullOrWhiteSpace(ach.Target) && Enum.TryParse<Skill>(ach.Target, out var skill))
                {
                    if (target.Skills.TryGetValue(skill, out var creatureSkill) && creatureSkill.Base >= ach.RequiredValue)
                        AchievementManager.UnlockAchievement(target, ach.Id);
                }
            }
            else if (ach.Type == AchievementType.ReachAttribute)
            {
                if (!string.IsNullOrWhiteSpace(ach.Target) && Enum.TryParse<PropertyAttribute>(ach.Target, out var attr))
                {
                    var attrVal = attr switch
                    {
                        PropertyAttribute.Strength => target.Strength?.Base,
                        PropertyAttribute.Endurance => target.Endurance?.Base,
                        PropertyAttribute.Coordination => target.Coordination?.Base,
                        PropertyAttribute.Quickness => target.Quickness?.Base,
                        PropertyAttribute.Focus => target.Focus?.Base,
                        PropertyAttribute.Self => target.Self?.Base,
                        _ => null,
                    };
                    if (attrVal >= ach.RequiredValue)
                        AchievementManager.UnlockAchievement(target, ach.Id);
                }
            }
            else if (ach.Type == AchievementType.ReachPropertyInt)
            {
                if (!string.IsNullOrWhiteSpace(ach.Target) && Enum.TryParse<PropertyInt>(ach.Target, out var prop))
                {
                    var val = target.GetProperty(prop) ?? 0;
                    if (val >= ach.RequiredValue)
                        AchievementManager.UnlockAchievement(target, ach.Id);
                }
            }
            else if (ach.Type == AchievementType.ReachPropertyFloat)
            {
                if (!string.IsNullOrWhiteSpace(ach.Target) && Enum.TryParse<PropertyFloat>(ach.Target, out var prop))
                {
                    var val = target.GetProperty(prop) ?? 0.0;
                    if ((int)val >= ach.RequiredValue)
                        AchievementManager.UnlockAchievement(target, ach.Id);
                }
            }
        }

        var total = AchievementManager.AllAchievements.Count;
        admin.SendMessage($"Checked all achievements for {target.Name}: {unlocked}/{total} now unlocked.", ChatMessageType.System);
    }

    static void AdminSetProgress(Player admin, string targetName, string id, string valueStr)
    {
        var target = ResolveTargetPlayer(admin, targetName);
        if (target is null)
            return;

        if (!int.TryParse(valueStr, out var value))
        {
            admin.SendMessage("Progress value must be an integer.", ChatMessageType.System);
            return;
        }

        AchievementManager.SetProgress(target, id, value);
        admin.SendMessage($"Set progress of '{id}' for {target.Name} to {value}.", ChatMessageType.System);
    }
}
