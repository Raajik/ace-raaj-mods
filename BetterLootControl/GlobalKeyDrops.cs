using ACE.Common;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace BetterLootControl;

/// <summary>
/// Adds skeleton key global drops to creature corpses, separate from DefaultLootConfig.
/// SIK/SSK: 1% on all tiers. MFK/LEG: 1% on tier 7+.
/// Keys drop in stacks of 1-10.
/// </summary>
[HarmonyPatch]
internal static class GlobalKeyDrops
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure), new System.Type[] { typeof(ACE.Server.Entity.DamageHistoryInfo), typeof(Corpse) })]
    public static void PostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse, Creature __instance)
    {
        if (!PatchClass.Settings.EnableGlobalKeyDrops)
            return;

        if (__instance.DeathTreasure == null)
            return;

        if (corpse == null || corpse.IsDestroyed)
            return;

        var s = PatchClass.Settings;
        int tier = __instance.DeathTreasure.Tier;

        // SIK + SSK: 1% on all tiers
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < s.KeyDropChance)
        {
            var wcid = ThreadSafeRandom.Next(0.0f, 1.0f) < 0.5f
                ? s.SturdyIronKeyWcid
                : s.SturdySteelKeyWcid;
            TryAddKeyStack(corpse, wcid, s.EnableDebugLogging, __instance.Name);
        }

        // MFK + LEG: 1% on tier 7-8
        if (tier >= 7 && ThreadSafeRandom.Next(0.0f, 1.0f) < s.KeyDropChance)
        {
            var wcid = ThreadSafeRandom.Next(0.0f, 1.0f) < 0.5f
                ? s.ManaForgeKeyWcid
                : s.LegendaryKeyWcid;
            TryAddKeyStack(corpse, wcid, s.EnableDebugLogging, __instance.Name);
        }
    }

    static void TryAddKeyStack(Corpse corpse, uint wcid, bool debug, string creatureName)
    {
        var key = WorldObjectFactory.CreateNewWorldObject(wcid);
        if (key == null)
            return;

        int stackSize = ThreadSafeRandom.Next(1, 10);
        key.SetStackSize(stackSize);

        if (corpse.TryAddToInventory(key) && debug)
            ModManager.Log($"[BetterLootControl] Key drop: {key.Name} (×{stackSize}) on {creatureName}", ModManager.LogLevel.Info);
    }
}
