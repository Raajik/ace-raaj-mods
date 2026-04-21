using ACE.Server.WorldObjects;

namespace ChallengeModes;

internal static class CmChaos
{
    internal static void Handle(Player player, string[] tail)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.Enabled)
        {
            player.SendMessage("ChallengeModes is disabled on this server.");
            return;
        }

        if (tail.Length == 0)
        {
            SendStatus(player);
            return;
        }

        var cmd = tail[0].Trim().ToLowerInvariant();
        switch (cmd)
        {
            case "on":
            case "enable":
                TryTurnOn(player, s);
                break;
            case "off":
            case "disable":
                TurnOff(player);
                break;
            case "status":
            case "s":
                SendStatus(player);
                break;
            default:
                player.SendMessage("Usage: /cm chaos on | off | status");
                break;
        }
    }

    static void TryTurnOn(Player player, Settings s)
    {
        if (s.ChaosRequiresActiveChallenge && !PatchClass.PlayerHasActiveChallenge(player))
        {
            player.SendMessage("You need an active challenge mode to enable chaos (/cm list).");
            return;
        }

        var mult = Math.Clamp(s.ChaosQuestBonusMultiplier, 1f, 100f);
        player.SetProperty(CmFloat.ChaosQuestBonusMultiplier, mult);
        player.SendMessage($"Chaos mode ON: Loremaster quest-point multiplier factor ×{mult:0.##} (see /qb).");
    }

    static void TurnOff(Player player)
    {
        player.SetProperty(CmFloat.ChaosQuestBonusMultiplier, 1f);
        player.SendMessage("Chaos mode OFF (quest-point multiplier factor ×1).");
    }

    static void SendStatus(Player player)
    {
        var v = player.GetProperty(CmFloat.ChaosQuestBonusMultiplier) ?? 1f;
        player.SendMessage($"Chaos quest-point factor: ×{v:0.##} (1 = off). Use /cm chaos on | off.");
    }
}
