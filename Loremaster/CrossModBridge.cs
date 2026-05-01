namespace Loremaster;

/// <summary>
/// Public cross-mod bridge for other mods to interact with Loremaster systems.
/// Called via reflection — do not assume Loremaster is loaded. Wrap in try/catch.
/// </summary>
public static class CrossModBridge
{
    /// <summary>
    /// Grants repeatQB-style quest points to a player and updates their QP total.
    /// Sends a formatted +N repeatQB message if the player's NotifyQuest setting is on.
    /// </summary>
    public static void GrantWorldEventsQuestPoints(Player player, float amount, string source)
    {
        if (amount <= 0 || player == null)
            return;

        player.AddExtraQuestPoints(amount);
        player.UpdateQuestPoints();

        if (player.Notify(LMBool.NotifyQuest))
            player.SendMessage(LoremasterExtensions.FormatQpNotification($"+{amount} repeatQB from {source}"));
    }

    /// <summary>
    /// Donates quest points from a player. Increases their DonatedQuestPoints offset and recalculates display.
    /// Returns true if the donation succeeded (does not check if total goes negative; UpdateQuestPoints clamps to 0).
    /// The donation contributes to the player's total donated offset, reducing their effective QB for XP purposes.
    /// </summary>
    public static bool DonateQuestPoints(Player player, float amount)
    {
        if (amount <= 0 || player == null)
            return false;

        var cur = (float)(player.GetProperty(LMFloat.DonatedQuestPoints) ?? 0);
        player.SetProperty(LMFloat.DonatedQuestPoints, cur + amount);
        player.UpdateQuestPoints();

        player.SendMessage(LoremasterExtensions.FormatQpNotification($"-{amount} QB donated to the lottery pool."));
        return true;
    }

    /// <summary>
    /// Grants QB as a lottery prize. Directly sets QuestPointsExtra (bypasses the 10% contribution tracking).
    /// Also updates display and sends a formatted message.
    /// </summary>
    public static void GrantLotteryQbPrize(Player player, float amount)
    {
        if (amount <= 0 || player == null)
            return;

        var cur = (float)(player.GetProperty(LMFloat.QuestPointsExtra) ?? 0);
        player.SetProperty(LMFloat.QuestPointsExtra, cur + amount);
        player.UpdateQuestPoints();

        if (player.Notify(LMBool.NotifyQuest))
            player.SendMessage(LoremasterExtensions.FormatQpNotification($"+{amount} QB from lottery prize!"));
    }

    /// <summary>
    /// Drains the accumulated QP lottery contribution pool and returns the whole amount.
    /// Called by LeyLineLedger before each lottery draw.
    /// </summary>
    public static long DrainPendingLotteryContributions()
    {
        lock (PatchClass.LotteryLock)
        {
            var whole = (long)Math.Floor(PatchClass.PendingLotteryContribution);
            PatchClass.PendingLotteryContribution -= whole;
            return whole;
        }
    }
}
