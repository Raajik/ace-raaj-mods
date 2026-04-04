namespace Loremaster;

internal static class ParchmentTownCrier
{
    internal static void TryTurnIn(Player player)
    {
        var cfg = PatchClass.Settings?.BarkeeperParchments;
        if (cfg?.Enable != true)
            return;

        var tIdx = ParchmentActiveState.GetTemplateIndex1Based(player);
        if (tIdx <= 0)
        {
            player.SendMessage("You have no sealed contract to report to the Town Crier.");
            return;
        }

        var template = ParchmentActiveState.ResolveTemplate(tIdx);
        if (template is null)
        {
            ParchmentActiveState.Clear(player);
            return;
        }

        var kind = (template.Kind ?? "").Trim();
        if (string.Equals(kind, "Kill", StringComparison.OrdinalIgnoreCase))
        {
            player.SendMessage("The Town Crier cannot verify a hunting contract. Complete your kills in the field.");
            return;
        }

        if (string.Equals(kind, "Explore", StringComparison.OrdinalIgnoreCase))
        {
            var lb = player.CurrentLandblock?.Id.Raw ?? 0u;
            uint needRaw = ParchmentContractRuntime.GetResolvedExploreLandblockRaw(player, template);
            if (lb != needRaw)
            {
                player.SendMessage(
                    $"You are not at the contract's destination (here: {lb:X8}, need: {needRaw:X8}).");
                return;
            }

            ParchmentQuestHooks.CompleteParchment(player);
            return;
        }

        if (string.Equals(kind, "Fetch", StringComparison.OrdinalIgnoreCase))
        {
            var (needWcid, needCount) = ParchmentContractRuntime.GetResolvedFetch(player, template);
            if (player.GetNumInventoryItemsOfWCID(needWcid) < needCount)
            {
                player.SendMessage(
                    $"You need {needCount}× {ParchmentDisplayNames.WeenieName(needWcid)} in your pack.");
                return;
            }

            if (!player.TryConsumeFromInventoryWithNetworking(needWcid, needCount))
            {
                player.SendMessage("Could not remove the required items from your pack.");
                return;
            }

            ParchmentQuestHooks.CompleteParchment(player);
            return;
        }

        player.SendMessage("Your contract type is not recognized.");
    }
}
