using ACE.Server.Managers;

namespace WorldEvents;

/// <summary>
/// Computes repeatQB quest-point rewards for WorldEvents placement slots.
/// 1st=5, 2nd=3, 3rd=2, 4th+=1. Solo (1 participant) = 10.
/// </summary>
internal static class PlacementQuestPoints
{
    internal static int ComputeAmount(int zeroBasedRank, int participantCount)
    {
        if (participantCount == 1)
            return 10;

        return zeroBasedRank switch
        {
            0 => 5,
            1 => 3,
            2 => 2,
            _ => 1,
        };
    }

    internal static string PlacementLabel(int zeroBasedRank)
    {
        return (zeroBasedRank + 1) switch
        {
            1 => "1st place",
            2 => "2nd place",
            3 => "3rd place",
            _ => $"{zeroBasedRank + 1}th place",
        };
    }

    /// <summary>
    /// Grants QP to every player in the provided ordered ranking.
    /// Called from Hunt, Cull, and Invasion distribution loops.
    /// </summary>
    internal static void GrantToAll(IEnumerable<KeyValuePair<uint, double>> ordered, int participantCount, string eventName)
    {
        var idx = 0;
        foreach (var kvp in ordered)
        {
            var player = PlayerManager.GetOnlinePlayer(kvp.Key);
            if (player == null)
            {
                idx++;
                continue;
            }

            var amount = ComputeAmount(idx, participantCount);
            var label = PlacementLabel(idx);
            LoremasterBridge.GrantQuestPoints(player, amount, $"{eventName} ({label})");
            idx++;
        }
    }

    /// <summary>
    /// Grants QP to a single player by rank.
    /// </summary>
    internal static void GrantByRank(Player player, int zeroBasedRank, int participantCount, string eventName)
    {
        var amount = ComputeAmount(zeroBasedRank, participantCount);
        var label = PlacementLabel(zeroBasedRank);
        LoremasterBridge.GrantQuestPoints(player, amount, $"{eventName} ({label})");
    }
}
