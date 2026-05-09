using ACE.Entity;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace ChallengeModes;

public sealed class Confirmation_CmQuit : Confirmation
{
    public Confirmation_CmQuit(ObjectGuid playerGuid)
        : base(playerGuid, ConfirmationType.Yes_No)
    {
    }

    public override void ProcessConfirmation(bool response, bool timeout = false)
    {
        var player = Player;
        if (player is null)
            return;

        if (!response)
        {
            if (!timeout)
                player.SendMessage("Challenge quit cancelled.", ChatMessageType.Broadcast);
            return;
        }

        CmQuit.Apply(player);
    }
}
