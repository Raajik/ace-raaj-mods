namespace ChallengeModes.Features;

[HarmonyPatchCategory(nameof(HardcoreMode))]
public static class HardcoreMode
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.OnDeath), new Type[] { typeof(DamageHistoryInfo), typeof(DamageType), typeof(bool) })]
    public static void PostOnDeath(DamageHistoryInfo lastDamager, DamageType damageType, bool criticalHit, ref Player __instance, ref DeathMessage __result)
    {
        if (__instance is not Player player)
            return;

        if (player.GetProperty(FakeBool.Hardcore) != true)
            return;

        var settings = PatchClass.Settings;
        if (settings == null)
            return;

        var lastDeath = player.GetProperty(FakeFloat.TimestampLastPlayerDeath) ?? 0;
        var current = Time.GetUnixTime();
        var lapsed = current - lastDeath;
        player.SetProperty(FakeFloat.TimestampLastPlayerDeath, Time.GetUnixTime());

        if (lapsed > settings.HardcoreSecondsBetweenDeathAllowed)
        {
            player.SendMessage($"You died after {lapsed / 3600:0.0} hours and are given a free death.");
            return;
        }

        var lives = player.GetProperty(FakeInt.HardcoreLives) ?? 0;
        lives--;
        if (lives >= 0)
        {
            player.SendMessage($"You have {lives} lives remaining.");
            player.SetProperty(FakeInt.HardcoreLives, lives);
            return;
        }

        player.Character.DeleteTime = (ulong)Time.GetUnixTime();
        player.Character.IsDeleted = true;
        player.CharacterChangesDetected = true;
        player.Session?.LogOffPlayer(true);
        PlayerManager.HandlePlayerDelete(player.Character.Id);

        var damagerName = lastDamager?.Name ?? "unknown";
        PlayerManager.BroadcastToChannelFromConsole(Channel.Advocate1, $"{__instance.Name} has met an untimely demise at the hands of {damagerName}!");

        var success = PlayerManager.ProcessDeletedPlayer(player.Character.Id);
        if (success)
            ModManager.Log($"Successfully deleted character {__instance.Name} (0x{__instance.Guid}).");
        else
            ModManager.Log($"Unable to delete character {__instance.Name} (0x{__instance.Guid}) due to PlayerManager failure.");
    }
}
