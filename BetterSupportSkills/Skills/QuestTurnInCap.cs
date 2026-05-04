using System.Collections.Concurrent;
using AceRaajMods.Shared;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

// Caps quest turn-in XP for high-value quest items dropped by TrophyDrops.
// Bulk turn-ins for stackable quest charms (3669 + tier WCIDs): tier XP bracket + banked trade notes (LLL BankCashProperty).
[HarmonyPatchCategory(nameof(Features.TrophyDropsSkill))]
internal static class QuestTurnInCap
{
    static readonly ConcurrentDictionary<uint, PendingTurnIn> _pending = new();
    static readonly ConcurrentDictionary<uint, BulkTurnInState> _bulkPending = new();

    record PendingTurnIn(uint Wcid, DateTime Timestamp);
    record BulkTurnInState(uint Wcid, int TotalCount, DateTime Timestamp);

    static readonly HashSet<uint> BulkQuestWcids = [3669u, 850271u, 850272u, 850273u];

    static bool IsBulkCharm(uint wcid) => BulkQuestWcids.Contains(wcid);

    static float CharmXpFraction(uint wcid, DrudgeCharmTrophySettings charm)
    {
        if (wcid == charm.WcidRegular) return charm.XpFractionRegular;
        if (wcid == charm.WcidRare1) return charm.XpFractionRare1;
        if (wcid == charm.WcidRare2) return charm.XpFractionRare2;
        if (wcid == charm.WcidRare3) return charm.XpFractionRare3;
        return 1f;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "GiveObjectToNPC", new Type[] {
        typeof(WorldObject), typeof(WorldObject), typeof(Container), typeof(Container), typeof(bool), typeof(int) })]
    public static void PreGiveObjectToNPC(WorldObject item, Player __instance)
    {
        if (item == null || __instance == null) return;

        if (IsBulkCharm(item.WeenieClassId))
        {
            int given = item.StackSize ?? 1;
            int others = 0;
            foreach (var inv in __instance.GetInventoryItemsOfWCID(item.WeenieClassId))
            {
                if (inv.Guid != item.Guid)
                    others += inv.StackSize ?? 1;
            }

            int total = given + others;
            _bulkPending[__instance.Guid.Full] = new BulkTurnInState(item.WeenieClassId, total, DateTime.UtcNow);
        }

        var settings = PatchClass.Settings?.QuestTrophyDrops;
        if (settings?.Enabled != true) return;
        if (settings.QuestItemWcids == null || settings.QuestItemWcids.Count == 0) return;
        if (!settings.QuestItemWcids.Contains(item.WeenieClassId)) return;
        if (IsBulkCharm(item.WeenieClassId))
            return;

        _pending[__instance.Guid.Full] = new PendingTurnIn(item.WeenieClassId, DateTime.UtcNow);
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreGrantXP(ref long amount, XpType xpType, Player __instance)
    {
        if (amount <= 0 || xpType != XpType.Quest || __instance == null) return;

        if (_bulkPending.TryGetValue(__instance.Guid.Full, out var bulk))
        {
            if (DateTime.UtcNow - bulk.Timestamp > TimeSpan.FromSeconds(10))
            {
                _bulkPending.TryRemove(__instance.Guid.Full, out _);
            }
            else if (IsBulkCharm(bulk.Wcid))
            {
                var charm = PatchClass.Settings?.DrudgeCharmTrophies;

                foreach (var stack in __instance.GetInventoryItemsOfWCID(bulk.Wcid).ToList())
                {
                    __instance.TryRemoveFromInventoryWithNetworking(stack.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);
                }

                int totalTurnedIn = Math.Max(1, bulk.TotalCount);

                if (charm?.Enabled == true)
                {
                    int level = __instance.Level ?? 1;
                    ulong bracket = __instance.GetXPBetweenLevels(level, level + 1);
                    float frac = CharmXpFraction(bulk.Wcid, charm);
                    double scaled = Math.Floor(bracket * (double)frac * totalTurnedIn);
                    if (scaled > long.MaxValue)
                        amount = long.MaxValue;
                    else
                        amount = (long)scaled;

                    long bankDelta = (long)charm.BankPyrealsPerCharm * totalTurnedIn;
                    if (bankDelta > 0)
                        LeyLineLedgerBankInterop.IncBanked(__instance, charm.BankCashProperty, bankDelta);

                    __instance.SendMessage(
                        $"You turn in {totalTurnedIn:N0} {GetItemName(bulk.Wcid)} for {amount:N0} experience! ({bankDelta:N0} trade notes banked.)",
                        ChatMessageType.System);
                }
                else
                {
                    amount *= totalTurnedIn;
                    __instance.SendMessage($"You turn in {totalTurnedIn:N0} {GetItemName(bulk.Wcid)} for {amount:N0} experience!", ChatMessageType.System);
                }

                _bulkPending.TryRemove(__instance.Guid.Full, out _);
            }
        }

        if (!_pending.TryGetValue(__instance.Guid.Full, out var pending)) return;

        if (DateTime.UtcNow - pending.Timestamp > TimeSpan.FromSeconds(10))
        {
            _pending.TryRemove(__instance.Guid.Full, out _);
            return;
        }

        var trophySettings = PatchClass.Settings?.QuestTrophyDrops;
        if (trophySettings?.Enabled != true) return;

        var result = QuestTurnInTracker.RecordTurnIn(__instance.Guid.Full, pending.Wcid, trophySettings);
        _pending.TryRemove(__instance.Guid.Full, out _);

        if (result.WasCapped)
        {
            amount = 0;
            __instance.SendMessage(trophySettings.XpSuppressedMessage);
        }
    }

    static string GetItemName(uint wcid)
    {
        return wcid switch
        {
            3669 => "drudge charms",
            850271 => "Drudge Charm (Quality) stacks",
            850272 => "Drudge Charm (Pristine) stacks",
            850273 => "Drudge Charm (Perfect) stacks",
            _ => "quest items"
        };
    }
}
