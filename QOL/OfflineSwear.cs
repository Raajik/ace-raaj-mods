using System.Collections.Concurrent;
using ACE.Database;
using ACE.Database.Models.Shard;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Managers;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;

namespace QOL;

public static class OfflineSwear
{
    static readonly ConcurrentDictionary<uint, DateTime> SwearCooldowns = new();
    static readonly TimeSpan CooldownDuration = TimeSpan.FromMinutes(15);

    [CommandHandler("swear", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 1,
        "Swear allegiance to another character. Usage: /swear <patron name>")]
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

        // Cooldown check
        if (SwearCooldowns.TryGetValue(player.Guid.Full, out var lastSwear))
        {
            var remaining = CooldownDuration - (DateTime.UtcNow - lastSwear);
            if (remaining > TimeSpan.Zero)
            {
                player.SendMessage($"You must wait {remaining.TotalMinutes:0} more minute(s) before swearing allegiance again.");
                return;
            }
        }

        var requestedName = string.Join(" ", parameters).Trim();
        if (string.IsNullOrEmpty(requestedName))
        {
            player.SendMessage("Usage: /swear <patron name>");
            return;
        }

        var patron = PlayerManager.FindByName(requestedName, out bool isOnline);
        if (patron is null)
        {
            player.SendMessage($"No character named \"{requestedName}\" exists.");
            return;
        }

        if (patron.Guid == player.Guid)
        {
            player.SendMessage("You cannot swear allegiance to yourself.");
            return;
        }

        // Friend / allegiance bypass for ignore/locked filters
        bool isFriend = false;
        bool sameAllegiance = false;
        try
        {
            isFriend = player.Character.HasAsFriend(patron.Guid.Full, player.CharacterDatabaseLock);
        }
        catch { /* fallback */ }
        try
        {
            sameAllegiance = player.MonarchId != null && player.MonarchId == patron.MonarchId;
        }
        catch { /* fallback */ }
        bool bypassFilters = isFriend || sameAllegiance;

        // Check if target is ignoring allegiance requests
        bool ignoresRequests = false;
        if (!bypassFilters)
        {
            if (isOnline && patron is Player onlinePatron)
            {
                ignoresRequests = onlinePatron.GetCharacterOption(CharacterOption.IgnoreAllegianceRequests);
            }
            else
            {
                // Offline player: load character stub to check options
                try
                {
                    var character = DatabaseManager.Shard.BaseDatabase.GetCharacterStubByGuid(patron.Guid.Full);
                    if (character != null)
                    {
                        ignoresRequests = (character.CharacterOptions1 & (int)CharacterOptions1.IgnoreAllegianceRequests) != 0;
                    }
                }
                catch { /* fallback: allow if DB lookup fails */ }
            }
        }

        if (ignoresRequests)
        {
            player.SendMessage($"{patron.Name} is not accepting allegiance requests.");
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
            if (!bypassFilters && targetNode.Allegiance.IsLocked && !targetNode.Allegiance.HasApprovedVassal(player.Guid.Full)
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

        // Apply cooldown
        SwearCooldowns[player.Guid.Full] = DateTime.UtcNow;

        ModManager.Log($"[QOL/swear] {player.Name} swore to patron {patron.Name} (online={isOnline}).", ModManager.LogLevel.Info);
    }

    static bool IsOlthoiHeritage(IPlayer p)
    {
        if (p is Player pl)
            return pl.IsOlthoiPlayer;
        var h = p.Heritage;
        return h == (int)HeritageGroup.Olthoi;
    }
}
