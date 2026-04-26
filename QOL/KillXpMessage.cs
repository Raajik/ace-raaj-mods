using System.Collections.Concurrent;

namespace QOL;

public enum KillXpDisplayMode { ServerDefault, Off, Raw, Percent }

// Replaces the vanilla "You killed X!" notification with "You killed X! (48 xp)" or "You killed X! (0.003%)".
// ThreadStatic dict is reset before each OnDeath_GrantXP so fellowship-share XP doesn't bleed across kills.
[HarmonyPatchCategory(nameof(Features.KillXpMessage))]
internal static class KillXpMessage
{
    internal static readonly ConcurrentDictionary<uint, KillXpDisplayMode> PlayerPrefs = new();

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostfixPlayerEnterWorld(Player __instance)
    {
        PlayerProfileStore.PostfixPlayerEnterWorld(__instance);
        AutoBuff.OnPlayerEnterWorld(__instance);
    }
    [ThreadStatic]
    static Dictionary<uint, long>? _killXp;

    // Reset per kill — Priority.High ensures this runs before FullKillXpPerDamager's prefix.
    [HarmonyPrefix]
    [HarmonyPriority(Priority.High)]
    [HarmonyPatch(typeof(Creature), nameof(Creature.OnDeath_GrantXP))]
    public static void ResetKillXp() => _killXp = new();

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void TrackGrantXP(long amount, XpType xpType, Player __instance)
    {
        if (xpType != XpType.Kill || amount <= 0 || _killXp == null) return;
        _killXp.TryGetValue(__instance.Guid.Full, out long prev);
        _killXp[__instance.Guid.Full] = prev + amount;
    }

    // Replaces GetDeathMessage to append XP suffix to the killer's notification.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GetDeathMessage))]
    public static bool PrefixGetDeathMessage(
        DamageHistoryInfo lastDamagerInfo, DamageType damageType, bool criticalHit,
        Creature __instance, ref DeathMessage __result)
    {
        var lastDamager = lastDamagerInfo?.TryGetAttacker();

        if (lastDamagerInfo == null || lastDamagerInfo.Guid == __instance.Guid
            || lastDamager is Hotspot || lastDamager is Food)
        {
            __result = Strings.General[1];
            return false;
        }

        var deathMessage = Strings.GetDeathMessage(damageType, criticalHit);

        if (lastDamagerInfo.IsPlayer)
        {
            if (criticalHit && __instance is Player)
                deathMessage = Strings.PKCritical[0];

            if (lastDamager is Player playerKiller
                && PatchClass.Settings?.EnablePetKillSummary != true)
            {
                long earnedXp = 0;
                _killXp?.TryGetValue(playerKiller.Guid.Full, out earnedXp);

                string suffix = FormatSuffix(earnedXp, playerKiller);
                string killerMsg = string.Format(deathMessage.Killer, __instance.Name) + suffix;
                playerKiller.Session.Network.EnqueueSend(
                    new GameEventKillerNotification(playerKiller.Session, killerMsg));
            }
        }

        __result = deathMessage;
        return false;
    }

    static string FormatSuffix(long xp, Player player)
    {
        if (xp <= 0) return "";

        var mode = PlayerPrefs.TryGetValue(player.Guid.Full, out var pref)
            ? pref
            : KillXpDisplayMode.ServerDefault;

        if (mode == KillXpDisplayMode.Off) return "";

        var cfg = PatchClass.Settings?.KillXpMessage;
        bool showRaw, showPct, showKills;

        if (mode == KillXpDisplayMode.ServerDefault)
        {
            showRaw   = cfg?.ShowRaw   ?? true;
            showPct   = cfg?.ShowPercent ?? false;
            showKills = cfg?.ShowEstimatedKills ?? false;
        }
        else
        {
            showRaw   = mode == KillXpDisplayMode.Raw;
            showPct   = mode == KillXpDisplayMode.Percent;
            showKills = false;
        }

        var parts = new List<string>(3);
        if (showRaw)   parts.Add($"{xp:N0} xp");
        if (showPct)   parts.Add($"{ComputeLevelPct(xp, player):F1}%");
        if (showKills) parts.Add($"~{ComputeEstimatedKills(xp, player):N0} kills to level");

        return parts.Count > 0 ? $" [{string.Join("/", parts)}]" : "";
    }

    static double ComputeLevelPct(long xp, Player player)
    {
        try
        {
            var xpList = DatManager.PortalDat.XpTable.CharacterLevelXPList;
            int level = player.Level ?? 1;
            if (level >= xpList.Count - 1) return 0;
            long window = (long)xpList[level + 1] - (long)xpList[level];
            return window > 0 ? (double)xp / window * 100.0 : 0;
        }
        catch { return 0; }
    }

    static long ComputeEstimatedKills(long xpPerKill, Player player)
    {
        if (xpPerKill <= 0) return 0;
        try
        {
            var xpList = DatManager.PortalDat.XpTable.CharacterLevelXPList;
            int level = player.Level ?? 1;
            if (level >= xpList.Count - 1) return 0;
            long nextLevelXp = (long)xpList[level + 1];
            long totalXp = player.TotalExperience ?? (long)xpList[level];
            long remaining = Math.Max(0, nextLevelXp - totalXp);
            return (long)Math.Ceiling((double)remaining / xpPerKill);
        }
        catch { return 0; }
    }
}
