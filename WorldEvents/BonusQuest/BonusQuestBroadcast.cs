namespace WorldEvents;

internal static class BonusQuestBroadcast
{
    static readonly string[] AddedFlavors =
    {
        "[EVENT - Bonus Quest] New bonus quests posted! Complete {0} for {1}x bonus XP!",
        "[EVENT - Bonus Quest] The quest board has been updated! Featured: {0} — {1}x XP on completion!",
        "[EVENT - Bonus Quest] Fresh bonus quests available: {0}. Earn {1}x bonus XP for each completion!",
        "[EVENT - Bonus Quest] Hear ye! Bonus quests posted: {0}. Adventurers who complete them earn {1}x XP!",
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
        var mult = (int)(settings.BonusQuestXpFraction * settings.BonusQuestXpMultiplier * 100);
        var multLabel = mult >= 100 ? $"{mult / 100}" : $"{mult / 100.0:0.#}";
        var template = AddedFlavors[Random.Shared.Next(AddedFlavors.Length)];
        HuntDisplay.BroadcastWorldLine(string.Format(template, list, multLabel));
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
            var mult = (int)(settings.BonusQuestXpFraction * settings.BonusQuestXpMultiplier * 100);
            var multLabel = mult >= 100 ? $"{mult / 100}" : $"{mult / 100.0:0.#}";

            HuntDisplay.BroadcastWorldLine($"[EVENT - Bonus Quest] Active bonus quests: {list} — {multLabel}x XP each. Board rotates in {rotateStr}.");
        }
    }
}
