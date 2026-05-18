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
            var modDir = Path.GetDirectoryName(typeof(WipeProgress).Assembly.Location);
            if (string.IsNullOrWhiteSpace(modDir))
                modDir = AppDomain.CurrentDomain.BaseDirectory;

            var parentDir = Directory.GetParent(modDir)?.FullName ?? modDir;
            if (string.IsNullOrWhiteSpace(parentDir))
                parentDir = modDir;

            // Also wipe from ModData (survives deploy but contains live state)
            string serverRoot;
            try
            {
                serverRoot = Path.GetDirectoryName(typeof(ModManager).Assembly.Location) ?? ".";
            }
            catch
            {
                serverRoot = ".";
            }
            var modDataRoot = Path.GetFullPath(Path.Combine(serverRoot, "ModData"));

            var filesToWipe = new[]
            {
                Path.Combine(parentDir, "AchievementUnlocked", "AccountAchievements.json"),
                Path.Combine(parentDir, "AchievementUnlocked", "AccountPoolBonus.json"),
                Path.Combine(parentDir, "AchievementUnlocked", "AccountMilestoneBonus.json"),
                Path.Combine(parentDir, "AchievementUnlocked", "AccountTierProgress.json"),
                Path.Combine(parentDir, "Loremaster", "AccountQuestFlags.json"),
                // ModData equivalents
                Path.Combine(modDataRoot, "AchievementUnlocked", "AccountAchievements.json"),
                Path.Combine(modDataRoot, "AchievementUnlocked", "AccountPoolBonus.json"),
                Path.Combine(modDataRoot, "AchievementUnlocked", "AccountMilestoneBonus.json"),
                Path.Combine(modDataRoot, "AchievementUnlocked", "AccountTierProgress.json"),
                Path.Combine(modDataRoot, "Loremaster", "AccountQuestFlags.json"),
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

        // ── LeyLineLedger bank balances (PropertyInt64, not FakeFloat) ──
        // Hardcoded default property IDs used by LeyLineLedger
        var bankProps = new[]
        {
            39999, // CashProperty (pyreals)
            39998, // LuminanceProperty
            40120, // AltCurrencyProperty (Zefs)
            40200, // LegacyPooledSalvagePropertyToClear
            40130, // Lockpick durability
        };
        foreach (var prop in bankProps)
            player.SetProperty((PropertyInt64)prop, 0);

        // Salvage bank materials (FirstMaterialBankPropertyId = 40201, up to 100 slots)
        for (int i = 0; i < 100; i++)
            player.SetProperty((PropertyInt64)(40201 + i), 0);

        // Item bank properties (common defaults from LeyLineLedger Settings.Items)
        var itemBankProps = new[] { 40001, 40002, 40003, 40004, 40005 };
        foreach (var prop in itemBankProps)
            player.SetProperty((PropertyInt64)prop, 0);

        // ── Keys (hardcoded props from /b display) ──
        player.SetProperty((PropertyInt64)40250, 0); // SIK
        player.SetProperty((PropertyInt64)40500, 0); // SSK
        player.SetProperty((PropertyInt64)40750, 0); // MFK
        player.SetProperty((PropertyInt64)41000, 0); // L

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
