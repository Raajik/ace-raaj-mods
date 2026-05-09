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
        if (__instance?.Creature is not Player player)
            return true;

        var questFormat = __args.FirstOrDefault(a => a is string) as string;
        if (string.IsNullOrWhiteSpace(questFormat))
            return true;

        var questName = QuestManager.GetQuestName(questFormat);
        if (string.IsNullOrWhiteSpace(questName))
            return true;

        // Account-wide quest flag: any character on the account has completed this quest
        if (player.Account?.AccountId is uint accountId
            && AccountQuestFlags.HasFlag(accountId, questName))
        {
            __result = true;
            return false;
        }

        // Legacy permanent-flag quests (local-only, no account sync)
        if (PatchClass.Settings?.PermanentFlagQuests is { Count: > 0 } permanent
            && permanent.Contains(questName))
        {
            var quest = __instance.GetQuest(questName);
            if (quest is not null && quest.NumTimesCompleted > 0)
            {
                __result = true;
                return false;
            }
        }

        return true;
    }
}
