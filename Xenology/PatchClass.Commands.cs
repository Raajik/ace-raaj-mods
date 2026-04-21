namespace Xenology;

public partial class PatchClass
{
    [CommandHandler("xenology", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    public static void HandleXenology(Session session, params string[] parameters)
    {
        var player = session.Player;
        if (player == null)
            return;

        var settings = CurrentSettings;
        if (settings?.EnableXenology != true)
        {
            player.SendMessage("Xenology is disabled.");
            return;
        }

        var data = XenologyRuntime.GetOrLoadPlayer(player.Guid.Full);
        player.SendMessage($"[Xenology] Lifetime kills: {data.TotalLifetimeKills:N0} — Total xXP: {data.TotalXenologyXp:0.##}.");

        lock (XenologyRuntime.HuntLock)
        {
            var hunt = XenologyRuntime.ActiveHunt;
            if (hunt == null)
            {
                player.SendMessage("[Xenology] No active hunt window.");
                return;
            }

            player.SendMessage($"[Xenology] Hunt ends at {hunt.WindowEndUtc:u} UTC — targets: {string.Join(", ", hunt.TargetSpecies)}");
            if (hunt.HuntPointsByPlayer.TryGetValue(player.Guid.Full, out var pts))
                player.SendMessage($"[Xenology] Your hunt points this window: {pts:0.##}");
        }
    }
}
