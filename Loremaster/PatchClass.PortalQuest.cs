namespace Loremaster;

public partial class PatchClass
{
    static readonly object PortalQuestHookLock = new();
    static bool PortalQuestHooksApplied;

    // HasQuestSolves overloads are not reliably targeted from a second HarmonyPatch class under BaseMod; patch manually once.
    void TryApplyPortalHasQuestSolvesHooks()
    {
        lock (PortalQuestHookLock)
        {
            if (PortalQuestHooksApplied)
                return;

            try
            {
                MethodInfo? prefix = AccessTools.Method(typeof(PatchClass), nameof(PortalHasQuestSolves_Prefix));
                if (prefix == null)
                    return;

                foreach (var m in AccessTools.GetDeclaredMethods(typeof(QuestManager)).Where(m =>
                             m.Name == "HasQuestSolves" && m.GetMethodBody() != null && !m.IsAbstract))
                {
                    try
                    {
                        ModC.Harmony.Patch(m, prefix: new HarmonyMethod(prefix));
                    }
                    catch (Exception ex)
                    {
                        ModManager.Log($"[Loremaster] HasQuestSolves patch skip: {ex.Message}", ModManager.LogLevel.Warn);
                    }
                }

                PortalQuestHooksApplied = true;
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Loremaster] Portal quest hooks failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    public static bool PortalHasQuestSolves_Prefix(QuestManager __instance, ref bool __result, object[] __args)
    {
        if (PatchClass.Settings?.PermanentFlagQuests is not { Count: > 0 } permanent)
            return true;

        if (__instance?.Creature is not Player player)
            return true;

        var questFormat = __args.FirstOrDefault(a => a is string) as string;
        if (string.IsNullOrWhiteSpace(questFormat))
            return true;

        var questName = QuestManager.GetQuestName(questFormat);
        if (string.IsNullOrWhiteSpace(questName))
            return true;

        if (!permanent.Contains(questName))
            return true;

        var quest = __instance.GetQuest(questName);
        if (quest is null || quest.NumTimesCompleted <= 0)
            return true;

        __result = true;
        return false;
    }
}
