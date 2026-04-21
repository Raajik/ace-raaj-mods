using ACE.Entity;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace LeyLineLedger;

public sealed class Confirmation_HouseStorageUpgrade : Confirmation
{
    public Confirmation_HouseStorageUpgrade(ObjectGuid playerGuid)
        : base(playerGuid, ConfirmationType.Yes_No)
    {
    }

    public override void ProcessConfirmation(bool response, bool timeout = false)
    {
        Player? player = Player;
        if (player is null)
            return;

        if (!response)
        {
            if (!timeout)
                player.SendMessage("House storage upgrade cancelled.");
            return;
        }

        HouseStorageUpgrade.ApplyConfirmed(player);
    }
}
