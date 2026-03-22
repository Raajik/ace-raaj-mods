namespace QOL;

public static class OfflineSwear
{
    [CommandHandler("offlineswear", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 1,
        "Swear allegiance to another character on your account that is offline. Usage: /offlineswear <patron name>")]
    public static void Handle(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (player.Session?.Network == null)
            return;

        if (!S.Settings.EnableOfflineSwear)
        {
            player.SendMessage("That command is disabled.");
            return;
        }

        if (player.Account?.AccountId is not uint accountId)
        {
            player.SendMessage("Your session has no account; cannot use this command.");
            return;
        }

        var requestedName = string.Join(" ", parameters).Trim();
        if (string.IsNullOrEmpty(requestedName))
        {
            player.SendMessage("Usage: /offlineswear <patron name>");
            return;
        }

        var accountPlayers = PlayerManager.GetAccountPlayers(accountId);
        if (accountPlayers is null || accountPlayers.Count == 0)
        {
            player.SendMessage("No characters found for your account.");
            return;
        }

        IPlayer? patron = null;
        foreach (var kvp in accountPlayers)
        {
            var p = kvp.Value;
            if (p.Guid == player.Guid)
                continue;
            if (p.Name.Equals(requestedName, StringComparison.OrdinalIgnoreCase))
            {
                patron = p;
                break;
            }
        }

        if (patron is null)
        {
            player.SendMessage($"No other character named \"{requestedName}\" exists on your account.");
            return;
        }

        if (PlayerManager.GetOnlinePlayer(patron.Guid) is not null)
        {
            player.SendMessage($"{patron.Name} is online; use the normal swear flow instead.");
            return;
        }

        if (player.IsOlthoiPlayer)
        {
            player.Session.Network.EnqueueSend(new GameEventWeenieError(player.Session, WeenieError.OlthoiCannotJoinAllegiance));
            return;
        }

        if (IsOlthoiHeritage(patron))
        {
            player.Session.Network.EnqueueSend(new GameMessageSystemChat("The Olthoi have loyalty only to their Olthoi Queen!", ChatMessageType.Broadcast));
            player.SendWeenieError(WeenieError.None);
            return;
        }

        if (player.PatronId is not null)
        {
            player.Session.Network.EnqueueSend(new GameMessageSystemChat("You've already sworn allegiance.", ChatMessageType.Broadcast));
            player.Session.Network.EnqueueSend(new GameEventWeenieError(player.Session, WeenieError.YouveAlreadySwornAllegiance));
            return;
        }

        if (player.House != null && player.House.SlumLord.HouseRequiresMonarch && player.House.HouseOwner == player.Guid.Full)
        {
            player.Session.Network.EnqueueSend(new GameEventWeenieError(player.Session, WeenieError.CannotSwearAllegianceWhileOwningMansion));
            return;
        }

        AllegianceManager.LoadPlayer(patron);
        AllegianceManager.LoadPlayer(player);

        var selfNode = player.AllegianceNode;
        var targetNode = patron.AllegianceNode;

        if (targetNode != null)
        {
            if (targetNode.TotalVassals >= 11)
            {
                player.Session.Network.EnqueueSend(new GameMessageSystemChat($"{patron.Name} already has the maximum # of vassals", ChatMessageType.Broadcast));
                return;
            }

            if (selfNode != null && selfNode.IsMonarch && selfNode.PlayerGuid == targetNode.Monarch.PlayerGuid)
            {
                player.Session.Network.EnqueueSend(new GameMessageSystemChat($"You cannot swear allegiance to {patron.Name}.", ChatMessageType.Broadcast));
                return;
            }

            var patronOfficer = targetNode.Player?.AllegianceOfficerRank ?? 0;
            if (targetNode.Allegiance.IsLocked && !targetNode.Allegiance.HasApprovedVassal(player.Guid.Full)
                && patronOfficer < (int)AllegianceOfficerLevel.Castellan)
            {
                player.Session.Network.EnqueueSend(new GameMessageSystemChat($"{patron.Name} is not accepting allegiance requests.", ChatMessageType.Broadcast));
                return;
            }

            if (targetNode.Allegiance.IsBanned(player.Guid.Full))
            {
                player.Session.Network.EnqueueSend(new GameMessageSystemChat($"You are banned from joining {patron.Name}'s allegiance.", ChatMessageType.Broadcast));
                return;
            }
        }

        player.PatronId = patron.Guid.Full;

        var monarchGuid = AllegianceManager.GetMonarch(patron).Guid.Full;
        player.UpdateProperty(PropertyInstanceId.Monarch, monarchGuid, true);

        player.ExistedBeforeAllegianceXpChanges = (patron.Level ?? 1) >= (player.Level ?? 1);

        if (player.Allegiance != null && player.Allegiance.MonarchId == player.Guid.Full)
            player.HandleMonarchSwear();

        player.SaveBiotaToDatabase();

        player.Session.Network.EnqueueSend(new GameMessageSystemChat($"{patron.Name} has accepted your oath of Allegiance!", ChatMessageType.Broadcast));
        player.EnqueueBroadcastMotion(new Motion(MotionStance.NonCombat, MotionCommand.Kneel));

        AllegianceManager.OnSwearAllegiance(player);

        player.AllegianceXPGenerated = 0;
        player.AllegianceOfficerRank = null;

        player.Session.Network.EnqueueSend(
            new GameEventAllegianceUpdate(player.Session, player.Allegiance, player.AllegianceNode),
            new GameEventAllegianceAllegianceUpdateDone(player.Session));

        if (player.GetCharacterOption(CharacterOption.ListenToAllegianceChat) && player.Allegiance != null)
            player.JoinTurbineChatChannel("Allegiance");

        ModManager.Log($"[QOL/offlineswear] {player.Name} swore to offline patron {patron.Name} (same account).", ModManager.LogLevel.Info);
    }

    static bool IsOlthoiHeritage(IPlayer p)
    {
        if (p is Player pl)
            return pl.IsOlthoiPlayer;
        var h = p.Heritage;
        return h == (int)HeritageGroup.Olthoi;
    }
}
