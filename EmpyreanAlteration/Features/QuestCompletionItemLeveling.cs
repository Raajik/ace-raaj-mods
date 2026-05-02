using ACE.Server.WorldObjects;

namespace EmpyreanAlteration.Features;

/// <summary>
/// Harmony patch on QuestManager.Update to award item-leveling points when a quest
/// is completed (reaches max solves) AND the quest would grant QB via Loremaster.
/// </summary>
[HarmonyPatchCategory("QuestCompletionItemLeveling")]
[HarmonyPatch(typeof(QuestManager), nameof(QuestManager.Update), new Type[] { typeof(string) })]
internal static class QuestCompletionItemLeveling
{
    [HarmonyPrefix]
    public static void PreUpdate(string questFormat, QuestManager __instance, out int __state)
    {
        __state = __instance.GetCurrentSolves(questFormat);
    }

    [HarmonyPostfix]
    [HarmonyPriority(Priority.First)]
    public static void PostUpdate(string questFormat, QuestManager __instance, int __state)
    {
        var s = PatchClass.Settings;
        if (s == null || !s.Enabled || s.ItemLevelingQuestCompletionPoints <= 0)
            return;

        if (__instance.Creature is not Player player)
            return;

        int previousSolves = __state;
        string questName = QuestManager.GetQuestName(questFormat) ?? questFormat;
        int maxSolves = __instance.GetMaxSolves(questName);

        if (maxSolves <= 0)
            return;

        int currentSolves = __instance.GetCurrentSolves(questFormat);

        // Only fire on a fresh completion (transitioned to max solves this Update)
        if (previousSolves >= maxSolves || currentSolves < maxSolves)
            return;

        // Check Loremaster bridge: would this grant QB? (pass dummy QP > 0; bridge checks cooldowns)
        if (!LoremasterBridge.WouldGrantQuestPoints(player, questName, 1.0f))
            return;

        // Award points to all equipped awakened items
        ItemLevelingPoints.AwardQuestCompletionPoints(player, questName, 1.0f);
    }
}
