namespace WorldEvents;

internal static class ScavengerBroadcast
{
    internal static void SendNewTarget(ScavengerRound round)
    {
        WorldEventsBroadcast.Send($"[EVENT - Scavenger Hunt] Lorewalker Zahir seeks {round.TargetName}! Bring it to the Marketplace!");
    }

    internal static void SendTargetAcquired(ScavengerRound completed, ScavengerRound next)
    {
        WorldEventsBroadcast.Send($"[EVENT - Scavenger Hunt] The {completed.TargetName} has been found! Lorewalker Zahir now seeks {next.TargetName}!");
    }

    internal static void SendEventEnd(ActiveScavengerHuntData data, Settings settings)
    {
        var itemsCollected = data.Rounds.Count(r => r.TurnedInByPlayerGuids.Count > 0);
        var msg = $"[EVENT - Scavenger Hunt] The hunt has ended! {itemsCollected} item{(itemsCollected == 1 ? "" : "s")} collected.";

        var winners = data.PlayerTurnInCounts
            .OrderByDescending(kv => kv.Value)
            .Take(settings.ScavengerHunt.BonusLootTopN)
            .ToList();

        if (winners.Count > 0)
        {
            var topName = PlayerManager.FindByGuid(new ObjectGuid(winners[0].Key))?.Name ?? $"GUID:{winners[0].Key:X}";
            msg += $" Top collector: {topName} with {winners[0].Value} turn-in{(winners[0].Value == 1 ? "" : "s")}!";
        }

        WorldEventsBroadcast.Send(msg);
    }
}
