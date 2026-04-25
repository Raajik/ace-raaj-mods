namespace WorldEvents;

internal static class BonusQuestBroadcast
{
    static readonly string[] AddedFlavors =
    {
        "[EVENT - Bonus Quest] New bonus quests posted! Complete {0} for tiered bonus XP — 20% for your 1st, 15% for 2nd, 10% for 3rd, 5% after that!",
        "[EVENT - Bonus Quest] The quest board has been updated! Featured: {0} — tiered XP rewards on completion!",
        "[EVENT - Bonus Quest] Fresh bonus quests available: {0}. Earn up to 20% of a level for your first completion!",
        "[EVENT - Bonus Quest] Hear ye! Bonus quests posted: {0}. 1st=20%, 2nd=15%, 3rd=10%, rest=5% XP!",
    };

    static readonly string[] NoQuestsFlavors =
    {
        "[EVENT - Bonus Quest] The quest board tried to refresh but found no eligible quests. Keep questing to unlock future picks!",
        "[EVENT - Bonus Quest] Quest board refresh: no eligible quests found this rotation. Complete more quests to unlock future picks!",
    };

    internal static void AnnounceQuestsAdded(Settings settings, List<string> added)
    {
        if (!settings.EnableBonusQuest) return;

        if (added.Count == 0)
        {
            var noMsg = NoQuestsFlavors[Random.Shared.Next(NoQuestsFlavors.Length)];
            HuntDisplay.BroadcastWorldLine(noMsg);
            return;
        }

        var list = BonusQuestDisplay.FormatQuestList(added);
        var template = AddedFlavors[Random.Shared.Next(AddedFlavors.Length)];
        HuntDisplay.BroadcastWorldLine(string.Format(template, list));
    }

    internal static void AnnounceReminder(Settings settings)
    {
        if (!settings.EnableBonusQuest) return;

        lock (BonusQuestRuntime.BonusQuestLock)
        {
            var bq = BonusQuestRuntime.ActiveWindow;
            if (bq == null || bq.QuestNames.Count == 0) return;

            var rotateIn = bq.WindowEndUtc - DateTime.UtcNow;
            var rotateStr = rotateIn.TotalSeconds <= 0 ? "now"
                : rotateIn.TotalHours >= 1 ? $"{(int)rotateIn.TotalHours}h {rotateIn.Minutes}m"
                : $"{(int)rotateIn.TotalMinutes}m";

            var list = BonusQuestDisplay.FormatQuestList(bq.QuestNames);

            HuntDisplay.BroadcastWorldLine($"[EVENT - Bonus Quest] Active bonus quests: {list} — tiered XP (20%/15%/10%/5%). Board rotates in {rotateStr}.");
        }
    }
}
