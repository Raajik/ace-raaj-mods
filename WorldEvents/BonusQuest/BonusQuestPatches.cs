namespace WorldEvents;

// Applied manually via AccessTools in PatchClass.TryApplyBonusQuestPatches().
internal static class BonusQuestPatches
{
    // Bypass the quest repeat-timer for any quest that is active in the current bonus window.
    // This works for online and offline players alike — no DB writes needed.
    internal static void PostfixCanSolve(QuestManager __instance, string questFormat, ref bool __result)
    {
        if (__result) return; // already allowed
        if (__instance.Creature is not Player) return;

        var name = questFormat.Contains('@')
            ? questFormat[..questFormat.IndexOf('@')]
            : questFormat;

        if (!BonusQuestRuntime.IsActiveBonusQuest(name)) return;

        // Respect hard max-solves limits even during bonus windows
        if (__instance.IsMaxSolves(name)) return;

        __result = true;
    }

    // Fires after every QuestManager.Update call on a Player.
    // Used for (a) bonus XP grants and (b) the universal quest completion log.
    internal static void PostfixUpdate(QuestManager __instance, string questFormat)
    {
        if (__instance.Creature is not Player player) return;

        var name = questFormat.Contains('@')
            ? questFormat[..questFormat.IndexOf('@')]
            : questFormat;

        var settings = PatchClass.CurrentSettings;

        // Quest completion log — record ALL completions
        if (settings?.QuestLogEnabled == true)
            BonusQuestRuntime.EnqueueLogEntry(player.Guid.Full, name);

        // Bonus quest detection and reward
        if (settings?.EnableBonusQuest == true && BonusQuestRuntime.IsActiveBonusQuest(name))
            BonusQuestRuntime.OnQuestCompleted(player, name, settings);
    }
}
