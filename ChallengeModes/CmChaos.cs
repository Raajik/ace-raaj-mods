using ACE.Server.WorldObjects;

namespace ChallengeModes;

internal static class CmChaos
{
    internal static void TryActivate(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.Enabled)
        {
            player.SendMessage("ChallengeModes is disabled on this server.");
            return;
        }

        if (PatchClass.IsChaosEnabled(player))
        {
            player.SendMessage("Chaos is already active on this character.");
            return;
        }

        if (PatchClass.IsChaosDeclined(player))
        {
            player.SendMessage("Chaos cannot be re-enabled on this character (you previously left it).");
            return;
        }

        if (player.Level != 1)
        {
            player.SendMessage("Chaos can only be activated at level 1.");
            return;
        }

        var mult = Math.Clamp(s.ChaosQuestBonusMultiplier, 1f, 100f);
        player.SetProperty(CmFloat.ChaosQuestBonusMultiplier, mult);
        PatchClass.SetChaosEnabled(player, true);
        PatchClass.OnChallengeStarted(player);
        CmCommands.RefreshChallengeRadar(player);
        player.SendMessage($"Chaos is ON -- Loremaster quest-point multiplier ×{mult:0.##}, Swarmed reinforcements escalate up to 5×, and aggro radius is tripled.");
    }

    internal static void Leave(Player player)
    {
        if (!PatchClass.IsChaosEnabled(player))
            return;

        PatchClass.SetChaosEnabled(player, false);
        PatchClass.SetChaosDeclined(player, true);
        player.SetProperty(CmFloat.ChaosQuestBonusMultiplier, 1f);
    }
}
