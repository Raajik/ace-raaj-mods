using System.Collections.Concurrent;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

/// <summary>
/// Caps quest turn-in XP for high-value quest items dropped by TrophyDrops.
/// Also handles bulk turn-ins for configured stackable quest items (e.g. drudge charms).
/// </summary>
[HarmonyPatchCategory(nameof(Features.TrophyDropsSkill))]
internal static class QuestTurnInCap
{
    static readonly ConcurrentDictionary<uint, PendingTurnIn> _pending = new();
    // Separate tracker for bulk quest items (drudge charms, etc.)
    static readonly ConcurrentDictionary<uint, BulkTurnInState> _bulkPending = new();

    record PendingTurnIn(uint Wcid, DateTime Timestamp);
    record BulkTurnInState(uint Wcid, int StackSize, DateTime Timestamp);

    // WCIDs that support bulk turn-in (entire stack consumed, XP multiplied)
    static readonly HashSet<uint> BulkQuestWcids = new() { 3669 }; // Drudge Charm

    /// <summary>
    /// Capture quest item WCID when a player gives an item to an NPC.
    /// Also tracks bulk quest item turn-ins.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "GiveObjectToNPC", new Type[] {
        typeof(WorldObject), typeof(WorldObject), typeof(Container), typeof(Container), typeof(bool), typeof(int) })]
    public static void PreGiveObjectToNPC(WorldObject item, Player __instance)
    {
        if (item == null || __instance == null) return;

        // -- Bulk quest turn-in tracking (drudge charms, etc.) --
        if (BulkQuestWcids.Contains(item.WeenieClassId))
        {
            int stackSize = item.StackSize ?? 1;
            if (stackSize > 1)
            {
                _bulkPending[__instance.Guid.Full] = new BulkTurnInState(item.WeenieClassId, stackSize, DateTime.UtcNow);
            }
        }

        // -- Trophy drop cap tracking --
        var settings = PatchClass.Settings?.QuestTrophyDrops;
        if (settings?.Enabled != true) return;
        if (settings.QuestItemWcids == null || settings.QuestItemWcids.Count == 0) return;
        if (!settings.QuestItemWcids.Contains(item.WeenieClassId)) return;

        _pending[__instance.Guid.Full] = new PendingTurnIn(item.WeenieClassId, DateTime.UtcNow);
    }

    /// <summary>
    /// Suppress XP if the player has hit their daily cap for this quest item.
    /// Also multiplies XP and consumes remaining stack for bulk quest turn-ins.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreGrantXP(ref long amount, XpType xpType, Player __instance)
    {
        if (amount <= 0 || xpType != XpType.Quest || __instance == null) return;

        // -- Bulk quest turn-in multiplier --
        if (_bulkPending.TryGetValue(__instance.Guid.Full, out var bulk))
        {
            // Expire stale entries after 10 seconds
            if (DateTime.UtcNow - bulk.Timestamp > TimeSpan.FromSeconds(10))
            {
                _bulkPending.TryRemove(__instance.Guid.Full, out _);
            }
            else
            {
                // Count remaining quest items in inventory
                int remaining = __instance.GetInventoryItemsOfWCID(bulk.Wcid)
                    .Sum(i => i.StackSize ?? 1);

                if (remaining > 0)
                {
                    // Remove all remaining stacks from inventory
                    foreach (var stack in __instance.GetInventoryItemsOfWCID(bulk.Wcid).ToList())
                    {
                        __instance.TryRemoveFromInventoryWithNetworking(stack.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);
                    }

                    int totalTurnedIn = 1 + remaining; // 1 already given + remaining removed
                    amount *= totalTurnedIn;
                    __instance.SendMessage($"You turn in {totalTurnedIn:N0} {GetItemName(bulk.Wcid)} for {amount:N0} experience!", ChatMessageType.System);
                }

                _bulkPending.TryRemove(__instance.Guid.Full, out _);
                // Fall through to trophy cap check below with the multiplied amount
            }
        }

        // -- Trophy drop daily cap --
        if (!_pending.TryGetValue(__instance.Guid.Full, out var pending)) return;

        // Expire stale entries after 10 seconds
        if (DateTime.UtcNow - pending.Timestamp > TimeSpan.FromSeconds(10))
        {
            _pending.TryRemove(__instance.Guid.Full, out _);
            return;
        }

        var settings = PatchClass.Settings?.QuestTrophyDrops;
        if (settings?.Enabled != true) return;

        var result = QuestTurnInTracker.RecordTurnIn(__instance.Guid.Full, pending.Wcid, settings);
        _pending.TryRemove(__instance.Guid.Full, out _);

        if (result.WasCapped)
        {
            amount = 0;
            __instance.SendMessage(settings.XpSuppressedMessage);
        }
    }

    static string GetItemName(uint wcid)
    {
        return wcid switch
        {
            3669 => "drudge charms",
            _ => "quest items"
        };
    }
}
