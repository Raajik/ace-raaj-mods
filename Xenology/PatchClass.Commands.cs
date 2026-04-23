namespace Xenology;

public partial class PatchClass
{
    [CommandHandler("xenology", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    [CommandHandler("xeno", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    [CommandHandler("x", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    public static void HandleXenology(Session session, params string[] parameters)
    {
        HandleXenologyCore(session, huntOnly: false);
    }

    [CommandHandler("hunt", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    public static void HandleHunt(Session session, params string[] parameters)
    {
        HandleXenologyCore(session, huntOnly: true);
    }

    static void HandleXenologyCore(Session session, bool huntOnly)
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

        if (!huntOnly)
        {
            var data = XenologyRuntime.GetOrLoadPlayer(player.Guid.Full);
            player.SendMessage($"[Xenology] Lifetime kills: {data.TotalLifetimeKills:N0} — Total xXP: {data.TotalXenologyXp:0.##}.");
        }

        lock (XenologyRuntime.HuntLock)
        {
            var hunt = XenologyRuntime.ActiveHunt;
            if (hunt == null)
            {
                player.SendMessage("[Xenology] No active hunt window.");
                return;
            }

            player.SendMessage($"[Xenology] Hunt window {hunt.WindowStartUtc:u} – {hunt.WindowEndUtc:u} UTC.");

            if (hunt.TargetSpecies.Count == 0)
            {
                player.SendMessage("[Xenology] Bonus species: (none — need global kill data or adjust filters.)");
            }
            else
            {
                for (var i = 0; i < hunt.TargetSpecies.Count; i++)
                {
                    var wcid = hunt.TargetSpecies[i];
                    var name = XenologyDisplay.WeenieName(wcid);
                    hunt.TargetMultipliers.TryGetValue(wcid, out var mult);
                    player.SendMessage($"[Xenology] Bonus target {i + 1}/{hunt.TargetSpecies.Count}: {name} — ×{mult:0.##} (WCID {wcid})");
                }
            }

            if (hunt.HuntPointsByPlayer.TryGetValue(player.Guid.Full, out var pts))
                player.SendMessage($"[Xenology] Your hunt points this window: {pts:0.##}");
            else
                player.SendMessage("[Xenology] Your hunt points this window: 0 (no qualifying kills yet).");
        }
    }
}
