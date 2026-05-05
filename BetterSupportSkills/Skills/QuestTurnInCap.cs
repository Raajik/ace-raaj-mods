using System.Collections.Concurrent;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

// Daily-cap on quest turn-in XP for high-value quest items dropped by TrophyDrops.
//
// 2026-05-04 -- bulk-turn-in machinery for the Drudge Charm tier line was extracted to Windblown
// (Windblown/TrophyLines/TrophyTurnInPatches.cs). Anything that wants per-WCID bulk reward + emote
// suppression now lives there as data-driven config (Content/TrophyLines/*.json). BSS keeps ONLY the
// per-player-per-day quest XP cap mechanic below: a soft cap on QuestItemWcids that prevents farm-loops
// from grinding limitless XP off a single trophy line.
[HarmonyPatchCategory(nameof(Features.TrophyDropsSkill))]
internal static class QuestTurnInCap
{
    static readonly ConcurrentDictionary<uint, PendingTurnIn> _pending = new();

    record PendingTurnIn(uint Wcid, DateTime Timestamp);

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "GiveObjectToNPC", new Type[] {
        typeof(WorldObject), typeof(WorldObject), typeof(Container), typeof(Container), typeof(bool), typeof(int) })]
    public static void PreGiveObjectToNPC(WorldObject item, Player __instance)
    {
        if (item == null || __instance == null) return;

        var settings = PatchClass.Settings?.QuestTrophyDrops;
        if (settings?.Enabled != true) return;
        if (settings.QuestItemWcids == null || settings.QuestItemWcids.Count == 0) return;
        if (!settings.QuestItemWcids.Contains(item.WeenieClassId)) return;

        _pending[__instance.Guid.Full] = new PendingTurnIn(item.WeenieClassId, DateTime.UtcNow);
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreGrantXP(ref long amount, XpType xpType, Player __instance)
    {
        if (amount <= 0 || xpType != XpType.Quest || __instance == null) return;
        if (!_pending.TryGetValue(__instance.Guid.Full, out var pending)) return;

        if (DateTime.UtcNow - pending.Timestamp > TimeSpan.FromSeconds(10))
        {
            _pending.TryRemove(__instance.Guid.Full, out _);
            return;
        }

        var trophySettings = PatchClass.Settings?.QuestTrophyDrops;
        if (trophySettings?.Enabled != true) return;

        var result = QuestTurnInTracker.RecordTurnIn(__instance.Guid.Full, pending.Wcid, trophySettings);
        _pending.TryRemove(__instance.Guid.Full, out _);

        if (result.WasCapped)
        {
            amount = 0;
            __instance.SendMessage(trophySettings.XpSuppressedMessage);
        }
    }

}
