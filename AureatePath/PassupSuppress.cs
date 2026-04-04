using System.Collections.Concurrent;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace AureatePath;

[HarmonyPatchCategory(nameof(PassupSuppress))]
public static class PassupSuppress
{
    static readonly ConcurrentDictionary<uint, DateTime> PassupSuppressUntil = new();

    internal static void RegisterWindow(Player player, Settings s)
    {
        if (!s.SuppressAllegiancePassupXpAfterEnlightenment || s.AllegiancePassupXpSuppressMinutes <= 0)
            return;

        PassupSuppressUntil[player.Guid.Full] = DateTime.UtcNow.AddMinutes(s.AllegiancePassupXpSuppressMinutes);
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreGrantXP(ref long amount, XpType xpType, ShareType shareType, ref Player __instance)
    {
        if (__instance is null || PatchClass.Settings is not { } s || !s.SuppressAllegiancePassupXpAfterEnlightenment)
            return;

        if (shareType != ShareType.Allegiance)
            return;

        if (!PassupSuppressUntil.TryGetValue(__instance.Guid.Full, out var until))
            return;

        if (DateTime.UtcNow > until)
        {
            PassupSuppressUntil.TryRemove(__instance.Guid.Full, out _);
            return;
        }

        amount = 0;
    }
}
