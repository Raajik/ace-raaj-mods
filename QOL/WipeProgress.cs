using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Managers;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;

namespace QOL;

internal static class WipeProgress
{
    static uint? _pendingAdminGuid;

    internal static void HandleCommand(Player admin)
    {
        if (admin?.Session == null)
            return;

        if (admin.Account?.AccessLevel < (uint)AccessLevel.Admin)
        {
            admin.SendMessage("This command requires Admin access.");
            return;
        }

        var text = "This will PERMANENTLY wipe all character progress for ALL non-admin accounts:\n" +
                   "- Quest Points, Achievement bonuses, Milestone bonuses\n" +
                   "- Challenge mode progress (completions, run levels)\n" +
                   "- Bank balances (LeyLineLedger)\n" +
                   "- All account-wide achievements and quest flags\n\n" +
                   "All non-admin players will be kicked. This cannot be undone. Continue?";

        if (!admin.ConfirmationManager.EnqueueSend(new Confirmation_WipeData(admin.Guid), text))
        {
            admin.SendMessage("You already have a confirmation dialog open.");
            return;
        }

        _pendingAdminGuid = admin.Guid.Full;
    }

    internal static void OnConfirmed(Player admin)
    {
        if (_pendingAdminGuid == null || admin.Guid.Full != _pendingAdminGuid.Value)
            return;

        _pendingAdminGuid = null;

        var adminAccountId = admin.Account?.AccountId ?? 0;
        int wipedAccounts = 0;
        int wipedChars = 0;
        int kickedPlayers = 0;

        // ── 1. Wipe account-wide JSON files ──
        try
        {
            var modDir = Path.GetDirectoryName(typeof(WipeProgress).Assembly.Location) ?? "";
            var parentDir = Directory.GetParent(modDir)?.FullName ?? modDir;

            var filesToWipe = new[]
            {
                Path.Combine(parentDir, "AchievementUnlocked", "AccountAchievements.json"),
                Path.Combine(parentDir, "AchievementUnlocked", "AccountPoolBonus.json"),
                Path.Combine(parentDir, "AchievementUnlocked", "AccountMilestoneBonus.json"),
                Path.Combine(parentDir, "AchievementUnlocked", "AccountTierProgress.json"),
                Path.Combine(parentDir, "Loremaster", "AccountQuestFlags.json"),
            };

            foreach (var path in filesToWipe)
            {
                if (File.Exists(path))
                {
                    File.WriteAllText(path, "{}");
                    ModManager.Log($"[Wipe] Cleared {Path.GetFileName(path)}", ModManager.LogLevel.Info);
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Wipe] Failed to wipe JSON files: {ex.Message}", ModManager.LogLevel.Error);
        }

        // ── 2. Wipe all online non-admin players ──
        foreach (var player in PlayerManager.GetAllOnline())
        {
            if (player?.Account == null)
                continue;

            // Skip admin accounts
            if (player.Account.AccountId == adminAccountId || player.Account.AccessLevel >= (uint)AccessLevel.Admin)
                continue;

            wipedAccounts++;

            try
            {
                WipeCharacter(player);
                player.SavePlayerToDatabase();
                wipedChars++;

                // Kick player so they re-log with clean state
                player.Session?.LogOffPlayer();
                kickedPlayers++;
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Wipe] Error wiping {player.Name}: {ex.Message}", ModManager.LogLevel.Error);
            }
        }

        // ── 3. Broadcast and log ──
        var msg = $"[WIPE] {admin.Name} wiped all non-admin progress. {wipedChars} characters from {wipedAccounts} accounts reset. {kickedPlayers} players kicked.";
        ModManager.Log(msg, ModManager.LogLevel.Info);

        foreach (var p in PlayerManager.GetAllOnline())
            p.SendMessage(msg, ChatMessageType.Broadcast);
    }

    static void WipeCharacter(Player player)
    {
        // ── Loremaster / Quest Points ──
        player.RemoveProperty((FakeFloat)11011); // QuestPointsExtra
        player.RemoveProperty((FakeFloat)11012); // EnlightenmentPoolBonus
        player.RemoveProperty((FakeFloat)11014); // RepeatStampMultiplier
        player.RemoveProperty((FakeFloat)11015); // AchievementPoolBonus
        player.RemoveProperty((FakeFloat)11016); // AccountMilestoneBonus
        player.RemoveProperty((FakeFloat)11017); // ChallengeRunQuestPoints
        player.RemoveProperty(FakeFloat.QuestBonus);

        // ── ChallengeModes (raw property IDs) ──
        player.RemoveProperty((FakeInt)11000); // ChallengeCompletionCount
        player.RemoveProperty((FakeInt)11001); // ChallengeRunMaxLevel
        player.RemoveProperty(FakeBool.Ironman);
        player.RemoveProperty(FakeBool.Hardcore);
        player.RemoveProperty(FakeInt.HardcoreLives);
        player.RemoveProperty(FakeFloat.TimestampLastPlayerDeath);
        player.RemoveProperty((FakeFloat)11013); // ChaosQuestBonusMultiplier

        // ── LeyLineLedger bank balance ──
        player.RemoveProperty((FakeFloat)20001);
        player.RemoveProperty((FakeFloat)20002);
        player.RemoveProperty((FakeFloat)20003);
        player.RemoveProperty((FakeFloat)20004);
        player.RemoveProperty((FakeFloat)20005);

        // ── Reset vitae ──
        player.RemoveProperty((PropertyFloat)218); // Vitae
        player.SetProperty((PropertyFloat)218, 1.0f);

        // ── Clear stored quest timestamps ──
        player.RemoveProperty((PropertyString)11030); // RepeatQuestPointTimestamps
        player.RemoveProperty((PropertyString)11031); // RepeatRewardsGranted
    }
}

// Confirmation dialog handler
internal class Confirmation_WipeData : Confirmation
{
    readonly ObjectGuid _adminGuid;

    public Confirmation_WipeData(ObjectGuid adminGuid) : base(adminGuid, ConfirmationType.Yes_No)
    {
        _adminGuid = adminGuid;
    }

    public override void ProcessConfirmation(bool response, bool timeout = false)
    {
        if (!response)
        {
            var admin = PlayerManager.FindByGuid(_adminGuid) as Player;
            admin?.SendMessage("Wipe cancelled.");
            return;
        }

        var player = PlayerManager.FindByGuid(_adminGuid) as Player;
        if (player == null)
            return;

        WipeProgress.OnConfirmed(player);
    }
}
