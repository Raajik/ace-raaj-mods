using ACE.Entity.Enum;
using ACE.Server.Managers;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using static ACE.Server.WorldObjects.Player;

namespace ChallengeModes;

internal static class CmQuit
{
    internal static void TryEnqueue(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.Enabled)
        {
            player.SendMessage("ChallengeModes is disabled on this server.");
            return;
        }

        if (s.CmQuitRequiresConfirmation)
        {
            var text = BuildConfirmText(s, PatchClass.PlayerHasActiveChallenge(player));
            if (!player.ConfirmationManager.EnqueueSend(new Confirmation_CmQuit(player.Guid), text))
                player.SendMessage("You already have a confirmation dialog open.");
        }
        else
            Apply(player);
    }

    static string BuildConfirmText(Settings s, bool hasActiveChallenge)
    {
        var parts = new List<string>();
        if (s.CmQuitRemoveLevel)
            parts.Add("your level will be reset");
        if (s.CmQuitRemoveAttributes)
            parts.Add("your attributes will be reset");
        if (s.CmQuitRemoveSkills)
            parts.Add("your skills will be reset");
        if (s.CmQuitRemoveLuminance)
            parts.Add("your luminance will be stripped");
        if (s.CmQuitRemoveSociety)
            parts.Add("your society standing will be removed");
        if (s.CmQuitRemoveAetheria)
            parts.Add("your aetheria progress will be reset");
        if (s.CmQuitUnequipAll)
            parts.Add("your equipped items will be moved to your pack");

        if (hasActiveChallenge)
        {
            parts.Add("you will leave all challenge modes (permanent lockouts where applicable)");
            parts.Add("your character gains a small shared XP pool bonus (level \u00f7 10000)");
        }

        var body = parts.Count > 0 ? string.Join(", ", parts) + "." : string.Empty;
        return $"If you continue, {body} Do you wish to {(hasActiveChallenge ? "quit all challenge modes" : "reset to level 1")}?";
    }

    internal static void Apply(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.Enabled)
            return;

        var hadActiveChallenge = PatchClass.PlayerHasActiveChallenge(player);

        LeyLineLedgerBridge.MergeChallengeBankIntoAccount(player);

        var capLevel = player.Level ?? 1;
        var delta = capLevel / 10000f;
        if (delta > 0f)
        {
            var cur = (float)(player.GetProperty(CmFloat.EnlightenmentPoolBonus) ?? 0f);
            player.SetProperty(CmFloat.EnlightenmentPoolBonus, cur + delta);
        }

        if (s.CmQuitUnequipAll)
            UnequipAllToPack(player);

        if (s.CmQuitRemoveSociety)
            Enlightenment.RemoveSociety(player);
        if (s.CmQuitRemoveLuminance)
            Enlightenment.RemoveLuminance(player);
        if (s.CmQuitRemoveAetheria)
            Enlightenment.RemoveAetheria(player);
        if (s.CmQuitRemoveAttributes)
            Enlightenment.RemoveAttributes(player);
        if (s.CmQuitRemoveSkills)
            Enlightenment.RemoveSkills(player);
        if (s.CmQuitRemoveLevel)
            Enlightenment.RemoveLevel(player);

        if (hadActiveChallenge)
        {
            PatchClass.DisableAllChallengeModesForQuit(player);
            LeyLineLedgerBridge.MirrorAccountToPlayerAfterChallengeCleared(player);
            CmCommands.RefreshChallengeRadar(player);
        }

        // Clear isolated challenge quest points; account-wide pool takes over on next quest update
        player.SetProperty((FakeFloat)11017, 0f);

        player.SavePlayerToDatabase();

        if (hadActiveChallenge)
        {
            player.SendMessage(
                $"You have quit all challenge modes and been reset to level 1. Shared enlightenment XP pool increased by {delta:0.####}.",
                ChatMessageType.Broadcast);
        }
        else
        {
            player.SendMessage(
                $"You have been reset to level 1. Shared enlightenment XP pool increased by {delta:0.####} (from level {capLevel}).",
                ChatMessageType.Broadcast);
        }
    }

    static void UnequipAllToPack(Player player)
    {
        if (player.Session is null)
            return;

        foreach (var wo in player.EquippedObjects.Values.ToList())
        {
            if (!player.TryDequipObjectWithNetworking(wo.Guid.Full, out var destItem, DequipObjectAction.DequipToPack))
                continue;
            if (destItem is null)
                continue;

            // Use TryAddToInventory (not TryCreateInInventoryWithNetworking) to avoid sending
            // GameMessageCreateObject for an item the client already knows about, which can
            // leave gear invisible until relog.
            if (!player.TryAddToInventory(destItem, out var container))
            {
                // Fallback: drop at feet if pack is full so the item isn't lost
                destItem.Location = new Position(player.Location);
                LandblockManager.AddObject(destItem);
                player.SendMessage($"Your pack was full; {destItem.Name} was dropped at your feet.");
                continue;
            }

            // Send the same container-update messages ACE uses after TryDequipObject + TryAddToInventory
            player.Session.Network.EnqueueSend(
                new GameMessagePublicUpdateInstanceID(destItem, PropertyInstanceId.Container, container.Guid),
                new GameEventItemServerSaysContainId(player.Session, destItem, container));

            destItem.EmoteManager.OnDrop(player);
            destItem.SaveBiotaToDatabase();
        }

        // Force client inventory refresh so unequipped items are visible
        player.SendInventoryAndWieldedItems();
    }
}
