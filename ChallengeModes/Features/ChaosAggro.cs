using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace ChallengeModes.Features;

internal static class ChaosAggro
{
    // Postfix on FindNextTarget: if no target was found, check for chaos players at 3x visual range.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), "FindNextTarget")]
    public static void PostFindNextTarget(Creature __instance, ref bool __result)
    {
        if (__result)
            return; // Already has a target

        if (__instance?.Location == null)
            return;

        float awareness = (float)(__instance.VisualAwarenessRange ?? 0.0);
        if (awareness <= 0)
            return;

        float chaosRange = awareness * 3.0f;

        WorldObject? bestTarget = null;
        float bestDist = float.MaxValue;

        foreach (var player in PlayerManager.GetAllOnline())
        {
            if (player?.Location == null)
                continue;
            if (player.IsDead)
                continue;
            if (!PatchClass.IsChaosEnabled(player))
                continue;

            float dist = __instance.GetDistance(player);
            if (dist > chaosRange)
                continue;
            if (dist < bestDist)
            {
                bestDist = dist;
                bestTarget = player;
            }
        }

        if (bestTarget != null)
        {
            // Set the creature's attack target directly.
            // Use reflection to set the private AttackTarget field.
            var field = typeof(Creature).GetField("AttackTarget", System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance);
            field?.SetValue(__instance, bestTarget);

            __result = true;
        }
    }
}
