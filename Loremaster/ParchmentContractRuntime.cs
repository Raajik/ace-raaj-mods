namespace Loremaster;

// Per-contract rolls and resolved targets (pools) stored on the player while a parchment is active.
internal static class ParchmentContractRuntime
{
    internal static uint GetResolvedExploreLandblockRaw(Player player, ParchmentTemplateSettings t)
    {
        int? v = player.GetProperty(LMParchmentInt.ExploreTargetLandblockRaw);
        if (v.HasValue && v.Value != 0)
            return (uint)v.Value;

        return t.ExploreLandblockRaw;
    }

    internal static uint GetResolvedKillTargetWcid(Player player, ParchmentTemplateSettings t)
    {
        if (t.TargetCreatureWcid != 0)
            return t.TargetCreatureWcid;

        int? v = player.GetProperty(LMParchmentInt.RuntimeKillTargetWcid);
        if (v.HasValue && v.Value > 0)
            return (uint)v.Value;

        return 0;
    }

    internal static void ApplyPoolRollsOnCommit(Player player, ParchmentTemplateSettings template, string normalizedKind)
    {
        player.RemoveProperty(LMParchmentInt.ExploreTargetLandblockRaw);
        player.RemoveProperty(LMParchmentInt.RuntimeKillTargetWcid);

        if (normalizedKind == "explore" && template.ExploreLandblockRawPool is { Count: > 0 } poolE)
        {
            uint raw = poolE[Random.Shared.Next(poolE.Count)];
            player.SetProperty(LMParchmentInt.ExploreTargetLandblockRaw, unchecked((int)raw));
            return;
        }

        if (normalizedKind == "kill" && template.TargetCreatureWcid == 0 && template.KillTargetCreatureWcidPool is { Count: > 0 } poolK)
        {
            uint wcid = poolK[Random.Shared.Next(poolK.Count)];
            player.SetProperty(LMParchmentInt.RuntimeKillTargetWcid, unchecked((int)wcid));
        }
    }
}
