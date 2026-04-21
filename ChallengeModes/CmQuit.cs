using ACE.Entity.Enum;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using static ACE.Server.WorldObjects.Player;

namespace ChallengeModes;

internal static class CmQuit
{
    internal static void TryEnqueueConfirmation(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.Enabled)
        {
            player.SendMessage("ChallengeModes is disabled on this server.");
            return;
        }

        if (!PatchClass.PlayerHasActiveChallenge(player))
        {
            player.SendMessage("You do not have any challenge modes active.");
            return;
        }

        if (s.CmQuitRequiresConfirmation)
        {
            var text = BuildConfirmText(s);
            if (!player.ConfirmationManager.EnqueueSend(new Confirmation_CmQuit(player.Guid), text))
                player.SendMessage("You already have a confirmation dialog open.");
        }
        else
            Apply(player);
    }

    static string BuildConfirmText(Settings s)
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

        parts.Add("you will leave all challenge modes (permanent lockouts where applicable)");
        parts.Add("your character gains a small shared XP pool bonus (level ÷ 10000)");

        var body = parts.Count > 0 ? string.Join(", ", parts) + "." : string.Empty;
        return $"If you continue, {body} Do you wish to quit all challenge modes?";
    }

    internal static void Apply(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.Enabled)
            return;

        if (!PatchClass.PlayerHasActiveChallenge(player))
        {
            player.SendMessage("You do not have any challenge modes active.");
            return;
        }

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

        PatchClass.DisableAllChallengeModesForQuit(player);
        CmCommands.RefreshChallengeRadar(player);
        player.SavePlayerToDatabase();
        player.SendMessage(
            $"You have quit all challenge modes. Shared enlightenment XP pool increased by {delta:0.####} (from level {capLevel}).",
            ChatMessageType.Broadcast);
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
            if (!player.TryCreateInInventoryWithNetworking(destItem, out _))
                continue;

            player.Session.Network.EnqueueSend(
                new GameMessagePublicUpdateInstanceID(destItem, PropertyInstanceId.Container, destItem.Container.Guid),
                new GameEventItemServerSaysMoveItem(player.Session, destItem));
            destItem.EmoteManager.OnDrop(player);
            destItem.SaveBiotaToDatabase();
        }
    }
}
