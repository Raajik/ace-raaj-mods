namespace LeyLineLedger;

using ACE.Server.WorldObjects;

// ChallengeModes can register a richer check (aptitude / alternate leveling). Fallback: SSF/Hardcore flags only.
public static class AccountBank
{
    public static Func<Player, bool>? ResolveChallengeMode { get; set; }

    public static void RegisterChallengeModeResolver(Func<Player, bool>? resolver)
    {
        ResolveChallengeMode = resolver;
    }

    public static bool IsChallengeLocal(Player player)
    {
        if (ResolveChallengeMode != null)
        {
            try
            {
                if (ResolveChallengeMode(player))
                    return true;
            }
            catch
            {
            }
        }

        return player.GetProperty(FakeBool.Ironman) == true
            || player.GetProperty(FakeBool.Hardcore) == true;
    }

    public static void MergeChallengeBankIntoAccount(Player player)
    {
        AccountBankStore.MergeChallengeCharacterPropsIntoAccount(player);
    }

    public static void MirrorAccountToPlayerAfterChallengeCleared(Player player)
    {
        AccountBankStore.MirrorAccountToPlayerIfStandard(player);
    }

    internal static void OnPlayerEnterWorld(Player player)
    {
        AccountBankStore.OnPlayerEnterWorld(player);
    }
}
