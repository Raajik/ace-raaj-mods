namespace Loremaster;

public partial class PatchClass
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(QuestManager), nameof(QuestManager.GetNextSolveTime), new[] { typeof(string) })]
    public static void GetNextSolveTime_Postfix(string questFormat, QuestManager __instance, ref TimeSpan __result)
    {
        if (__result == TimeSpan.MinValue) return;
        if (__result == TimeSpan.MaxValue) return;
        if (PatchClass.Settings is null || !PatchClass.Settings.EnableQuestCooldownReduction) return;

        if (__instance.Creature is not Player player)
            return;

        var questName = QuestManager.GetQuestName(questFormat);
        if (string.IsNullOrWhiteSpace(questName))
            return;

        var playerQuest = __instance.GetQuest(questName);

        // Portal QuestRestriction requires hasQuest && !CanSolve. CanSolve is true when GetNextSolveTime is MinValue.
        // Do not shorten MinDelta for these quests — keep vanilla __result from the original method.
        if (PatchClass.Settings.PermanentFlagQuests is { Count: > 0 } flagQuests && flagQuests.Contains(questName))
            return;

        var quest = DatabaseManager.World.GetCachedQuest(questName);
        if (quest is null) return;
        if (playerQuest is null) return;

        // Short MinDelta quests are almost always "flag then use portal/door" timers; reduction makes CanSolve true early
        // and triggers WeenieError.QuestSolvedTooLongAgo. Only apply reduction when the world quest MinDelta is above this.
        var minDeltaFloor = PatchClass.Settings.QuestCooldownReductionOnlyIfMinDeltaExceedsSeconds;
        if (minDeltaFloor > 0 && quest.MinDelta <= minDeltaFloor)
            return;

        var reduction = player.GetQuestCooldownReduction();
        if (reduction <= 0) return;

        var currentTime = (uint)Time.GetUnixTime();
        double minDeltaSeconds = quest.MinDelta;
        if (QuestManager.CanScaleQuestMinDelta(quest))
            minDeltaSeconds *= PropertyManager.GetDouble("quest_mindelta_rate", 1).Item;

        var effectiveMinDelta = minDeltaSeconds * (1.0 - reduction);
        var nextSolveTime = playerQuest.LastTimeCompleted + (uint)effectiveMinDelta;

        if (currentTime >= nextSolveTime)
            __result = TimeSpan.MinValue;
        else
            __result = TimeSpan.FromSeconds(nextSolveTime - currentTime);
    }
}
