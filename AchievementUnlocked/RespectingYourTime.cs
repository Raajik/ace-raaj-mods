using ACE.Server.Managers;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Entity.Enum;

namespace AchievementUnlocked;

/// <summary>
/// Hooks into the achievement system to grant racial augments when the
/// [Respecting Your Time] achievement is unlocked (first character on account to reach level 25).
/// </summary>
public static class RespectingYourTime
{
    internal static void Initialize()
    {
        AchievementManager.OnAchievementUnlocked += OnAchievementUnlocked;
    }

    static void OnAchievementUnlocked(Player player, Achievement ach)
    {
        if (ach.Id != "RespectingYourTime")
            return;

        // Grant racial augments account-wide via Loremaster
        GrantRacialAugments(player);

        // World broadcast (one-time, tells everyone what was unlocked and how to get it)
        var broadcast = $"{player.Name} has unlocked '{ach.Name}' — {ach.Description}";
        PlayerManager.BroadcastToAll(new GameMessageSystemChat(broadcast, ChatMessageType.WorldBroadcast));
    }

    static void GrantRacialAugments(Player player)
    {
        try
        {
            // Use reflection to call Loremaster.AccountAugmentStore.GrantRacialAugments
            // This avoids a hard assembly reference.
            var lmAsm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.FullName?.StartsWith("Loremaster") == true);
            if (lmAsm == null)
                return;

            var storeType = lmAsm.GetType("Loremaster.AccountAugmentStore");
            if (storeType == null)
                return;

            var method = storeType.GetMethod("GrantRacialAugments", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Static);
            if (method == null)
                return;

            method.Invoke(null, new object[] { player });
        }
        catch (Exception ex)
        {
            ModManager.Log($"[AchievementUnlocked] RespectingYourTime racial augment grant failed: {ex.Message}", ModManager.LogLevel.Error);
        }
    }
}
