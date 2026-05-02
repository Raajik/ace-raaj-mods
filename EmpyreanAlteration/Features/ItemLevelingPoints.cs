using ACE.Entity.Enum.Properties;
using ACE.Server.WorldObjects;

namespace EmpyreanAlteration.Features;

/// <summary>
/// Awards point-based item leveling progress to all equipped awakened items
/// when the player kills creatures or completes quests.
/// Points are added via AddItemXP (patched by QuestItemGrowthHarmony to use
/// the per-item profile curve instead of raw XP).
/// </summary>
internal static class ItemLevelingPoints
{
    /// <summary>
    /// Call from a creature death patch. Awards kill points to every equipped awakened item.
    /// </summary>
    internal static void AwardKillPoints(Player player, WorldObject killedCreature)
    {
        var s = PatchClass.Settings;
        if (s == null || !s.Enabled)
            return;

        int points = s.ItemLevelingKillPoints;
        if (points <= 0)
            return;

        foreach (var item in GetEquippedAwakenedItems(player))
        {
            AwardPointsToItem(player, item, points);
        }
    }

    /// <summary>
    /// Call from a quest completion patch. Awards quest points to every equipped awakened item
    /// if the quest would grant QB via Loremaster.
    /// </summary>
    internal static void AwardQuestCompletionPoints(Player player, string questName, float qpValue)
    {
        var s = PatchClass.Settings;
        if (s == null || !s.Enabled)
            return;

        if (s.ItemLevelingQuestCompletionPoints <= 0)
            return;

        // Only award if Loremaster would grant QB for this completion
        if (!LoremasterBridge.WouldGrantQuestPoints(player, questName, qpValue))
            return;

        foreach (var item in GetEquippedAwakenedItems(player))
        {
            AwardPointsToItem(player, item, s.ItemLevelingQuestCompletionPoints);
        }
    }

    /// <summary>
    /// Directly awards points to a single item, bypassing the Loremaster check.
    /// Used for internal testing or admin commands.
    /// </summary>
    internal static void AwardPointsToItem(Player player, WorldObject item, int points)
    {
        if (player == null || item == null || points <= 0)
            return;

        if (item.GetProperty(LivingEquipmentProperties.IsAwakened) != true)
            return;

        int? maxLevel = item.ItemMaxLevel;
        int currentLevel = item.ItemLevel ?? 0;
        if (maxLevel.HasValue && currentLevel >= maxLevel.Value)
            return;

        // Use AddItemXP — our ExperienceSystem prefix will map it through the per-item curve.
        item.AddItemXP(points);

        if (PatchClass.Settings?.Verbose == true)
            ModManager.Log($"[EmpyreanAlteration] Item leveling: {item.Name} +{points} points (level {currentLevel})", ModManager.LogLevel.Info);
    }

    private static IEnumerable<WorldObject> GetEquippedAwakenedItems(Player player)
    {
        if (player == null)
            yield break;

        foreach (var item in player.EquippedObjects.Values)
        {
            if (item.GetProperty(LivingEquipmentProperties.IsAwakened) == true)
                yield return item;
        }
    }
}
