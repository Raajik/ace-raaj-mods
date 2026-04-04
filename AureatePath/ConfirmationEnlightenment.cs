using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace AureatePath;

public sealed class Confirmation_Enlightenment : Confirmation
{
    public Confirmation_Enlightenment(ObjectGuid playerGuid)
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
                player.SendMessage("Enlightenment cancelled.", ChatMessageType.Broadcast);
            return;
        }

        Enlightenment.HandleEnlightenment(null, player);
    }
}
