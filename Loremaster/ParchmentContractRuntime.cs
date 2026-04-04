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

    internal static bool GetResolvedKillTargetIsRare(Player player) =>
        player.GetProperty(LMParchmentInt.RuntimeKillTargetRare) == 1;

    internal static int GetEffectiveKillCount(Player player, ParchmentTemplateSettings t)
    {
        if (GetResolvedKillTargetIsRare(player) && t.KillCount > 1)
            return 1;
        return t.KillCount;
    }

    internal static (uint Wcid, int Count) GetResolvedFetch(Player player, ParchmentTemplateSettings t)
    {
        int? rw = player.GetProperty(LMParchmentInt.RuntimeFetchItemWcid);
        int? rc = player.GetProperty(LMParchmentInt.RuntimeFetchItemCount);
        if (rw is > 0 && rc is > 0)
            return ((uint)rw.Value, rc.Value);
        return (t.FetchItemWcid, 1);
    }

    internal static void ApplyPoolRollsOnCommit(Player player, ParchmentTemplateSettings template, string normalizedKind)
    {
        player.RemoveProperty(LMParchmentInt.ExploreTargetLandblockRaw);
        player.RemoveProperty(LMParchmentInt.RuntimeKillTargetWcid);
        player.RemoveProperty(LMParchmentInt.RuntimeKillTargetRare);
        player.RemoveProperty(LMParchmentInt.RuntimeFetchItemWcid);
        player.RemoveProperty(LMParchmentInt.RuntimeFetchItemCount);

        if (normalizedKind == "explore")
        {
            if (template.ExploreLandblockWeightedPool is { Count: > 0 } wE)
            {
                var picked = ParchmentWeightedPick.PickLandblock(wE);
                if (picked is uint raw && raw != 0)
                    player.SetProperty(LMParchmentInt.ExploreTargetLandblockRaw, unchecked((int)raw));
                return;
            }

            if (template.ExploreLandblockRawPool is { Count: > 0 } poolE)
            {
                uint raw = poolE[Random.Shared.Next(poolE.Count)];
                player.SetProperty(LMParchmentInt.ExploreTargetLandblockRaw, unchecked((int)raw));
            }

            return;
        }

        if (normalizedKind == "kill" && template.TargetCreatureWcid == 0)
        {
            if (template.KillTargetWeightedPool is { Count: > 0 } wK)
            {
                var pk = ParchmentWeightedPick.PickKill(wK);
                if (pk is { } kv)
                {
                    player.SetProperty(LMParchmentInt.RuntimeKillTargetWcid, unchecked((int)kv.Wcid));
                    player.SetProperty(LMParchmentInt.RuntimeKillTargetRare, kv.Rare ? 1 : 0);
                }

                return;
            }

            if (template.KillTargetCreatureWcidPool is { Count: > 0 } poolK)
            {
                uint wcid = poolK[Random.Shared.Next(poolK.Count)];
                player.SetProperty(LMParchmentInt.RuntimeKillTargetWcid, unchecked((int)wcid));
                player.SetProperty(LMParchmentInt.RuntimeKillTargetRare, 0);
            }
        }

        if (normalizedKind == "fetch" && template.FetchItemWeightedPool is { Count: > 0 } wF)
        {
            var pf = ParchmentWeightedPick.PickFetch(wF);
            if (pf is { } f)
            {
                player.SetProperty(LMParchmentInt.RuntimeFetchItemWcid, unchecked((int)f.Wcid));
                player.SetProperty(LMParchmentInt.RuntimeFetchItemCount, f.Stack);
            }
        }
    }
}
