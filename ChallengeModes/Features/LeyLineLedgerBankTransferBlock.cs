using System.Reflection;
using ACE.Server.Managers;
using ACE.Server.Network;
using HarmonyLib;

namespace ChallengeModes.Features;

// Blocks LeyLineLedger /bank transfer pyreals when either party has an active challenge (SSF, hardcore, aptitude, or alternate leveling).
// Uses reflection so ChallengeModes does not require LeyLineLedger.dll at compile time; patch is skipped if that mod is absent.
[HarmonyPatchCategory("ChallengeModes")]
[HarmonyPatch]
public static class LeyLineLedgerBankTransferBlock
{
    public static bool Prepare()
    {
        return TargetMethod() != null;
    }

    [HarmonyTargetMethod]
    static MethodBase? TargetMethod()
    {
        var t = AccessTools.TypeByName("LeyLineLedger.BankExtensions");
        if (t is null)
            return null;

        return AccessTools.Method(t, "TransferPyreals", new[] { typeof(Session), typeof(string), typeof(string) });
    }

    [HarmonyPrefix]
    static bool Prefix(Session session, string amountToken, string targetName)
    {
        var sender = session?.Player;
        if (sender is null)
            return true;

        if (PatchClass.PlayerHasActiveChallenge(sender))
        {
            sender.SendMessage("You cannot use bank transfers while a challenge mode is active.");
            return false;
        }

        var trimmed = targetName.Trim();
        if (string.IsNullOrEmpty(trimmed))
            return true;

        var targetOnline = PlayerManager.GetOnlinePlayer(trimmed);
        if (targetOnline is not null)
        {
            if (PatchClass.PlayerHasActiveChallenge(targetOnline))
            {
                sender.SendMessage("That character cannot receive bank transfers while a challenge mode is active.");
                return false;
            }

            return true;
        }

        if (PatchClass.OfflineCharacterNameHasActiveChallenge(trimmed))
        {
            sender.SendMessage("That character cannot receive bank transfers while a challenge mode is active.");
            return false;
        }

        return true;
    }
}
