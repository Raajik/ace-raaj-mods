using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity.Actions;
using ACE.Server.Network.GameMessages.Messages;

namespace EmpyreanAlteration.Features;

/// <summary>
/// Replaces the vanilla Player.GrantItemXP level-up trigger for awakened items.
/// When our point-based system calls AddItemXP, this postfix detects level changes
/// and applies growth effects + player messages.
/// </summary>
[HarmonyPatchCategory(QuestItemGrowthHarmony.Category)]
[HarmonyPatch(typeof(WorldObject), nameof(WorldObject.AddItemXP), typeof(long))]
internal static class ItemLevelingGrowthTrigger
{
    [ThreadStatic]
    static int _preLevel;

    [HarmonyPrefix]
    public static void PreAddItemXP(WorldObject __instance)
    {
        _preLevel = __instance?.ItemLevel ?? 0;
    }

    [HarmonyPostfix]
    public static void PostAddItemXP(WorldObject __instance)
    {
        if (__instance == null)
            return;

        var s = PatchClass.Settings;
        if (s == null || !s.Enabled)
            return;

        if (__instance.GetProperty(LivingEquipmentProperties.IsAwakened) != true)
            return;

        int prevLevel = _preLevel;
        int newLevel = __instance.ItemLevel ?? 0;
        if (newLevel <= prevLevel)
            return;

        // Find the owning player
        Player? owner = null;
        if (__instance.Wielder is Player p)
            owner = p;
        else if (__instance.Container is Player cp)
            owner = cp;

        if (owner == null)
            return;

        // Send the vanilla-style level-up message
        var msg = $"Your {__instance.Name} has increased in power to level {newLevel}!";
        owner.Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.Broadcast));
        owner.EnqueueBroadcast(new GameMessageScript(owner.Guid, PlayScript.AetheriaLevelUp));

        // Apply catch-up growth for all skipped levels
        QuestItemGrowthCatchUp.ApplyCatchUpGrowth(
            __instance, prevLevel, newLevel,
            questGrowth: false, // awakened items are loot-growth path
            owner, s);

        if (s.Verbose)
            ModManager.Log($"[EmpyreanAlteration] Awakened item leveled up: {__instance.Name} {prevLevel} -> {newLevel}", ModManager.LogLevel.Info);
    }
}
