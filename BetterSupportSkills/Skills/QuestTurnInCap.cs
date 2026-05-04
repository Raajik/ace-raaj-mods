using System.Collections.Concurrent;
using AceRaajMods.Shared;
using ACE.Entity.Enum;
using ACE.Entity.Models;
using ACE.Server.WorldObjects;
using ACE.Server.WorldObjects.Managers;

namespace BetterSupportSkills.Skills;

// Caps quest turn-in XP for high-value quest items dropped by TrophyDrops.
// Bulk turn-in for Bloodletter drudge charms (24835 base + tier WCIDs):
//   - Suppresses vanilla NPC reward (necklacedrudgebloodlettercharm 25539 give + thank-you Tell) by short-circuiting EmoteManager.ExecuteEmoteSet on EmoteCategory.Give.
//   - Drains remaining stacks, grants tier XP bracket fraction, credits per-tier bank trade-note value via LeyLineLedger.
[HarmonyPatchCategory(nameof(Features.TrophyDropsSkill))]
internal static class QuestTurnInCap
{
    static readonly ConcurrentDictionary<uint, PendingTurnIn> _pending = new();
    static readonly ConcurrentDictionary<uint, BulkTurnInState> _bulkPending = new();

    record PendingTurnIn(uint Wcid, DateTime Timestamp);
    record BulkTurnInState(uint Wcid, int TotalCount, DateTime Timestamp);

    static readonly HashSet<uint> BulkQuestWcids = [24835u, 850271u, 850272u, 850273u];

    static bool IsBulkCharm(uint wcid) => BulkQuestWcids.Contains(wcid);

    static float CharmXpFraction(uint wcid, DrudgeCharmTrophySettings charm)
    {
        if (wcid == charm.WcidRegular) return charm.XpFractionRegular;
        if (wcid == charm.WcidRare1) return charm.XpFractionRare1;
        if (wcid == charm.WcidRare2) return charm.XpFractionRare2;
        if (wcid == charm.WcidRare3) return charm.XpFractionRare3;
        return 1f;
    }

    static long CharmBankAmountPerCharm(uint wcid, DrudgeCharmTrophySettings charm)
    {
        // Pre-tier Settings.json: new keys missing -> 0; old BankPyrealsPerCharm still applies flat rate for every tier.
        if (charm.BankTradeNoteValuePerCharmRegular == 0
            && charm.BankTradeNoteValuePerCharmRare1 == 0
            && charm.BankTradeNoteValuePerCharmRare2 == 0
            && charm.BankTradeNoteValuePerCharmRare3 == 0
            && charm.BankPyrealsPerCharm > 0)
            return charm.BankPyrealsPerCharm;

        if (wcid == charm.WcidRegular) return charm.BankTradeNoteValuePerCharmRegular;
        if (wcid == charm.WcidRare1) return charm.BankTradeNoteValuePerCharmRare1;
        if (wcid == charm.WcidRare2) return charm.BankTradeNoteValuePerCharmRare2;
        if (wcid == charm.WcidRare3) return charm.BankTradeNoteValuePerCharmRare3;
        return 0;
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

    // Owns the entire give-charm-to-NPC reward path. Vanilla GiveObjectToNPC has already removed 1 charm from the
    // player's stack and broadcast the "You give NPC X" message; we drain remaining stacks here, grant our XP/bank,
    // and skip the vanilla NPC emote so the Bloodletter Charm Necklace (25539) is never created.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(EmoteManager), nameof(EmoteManager.ExecuteEmoteSet), new Type[] {
        typeof(PropertiesEmote), typeof(WorldObject), typeof(bool) })]
    public static bool PreExecuteEmoteSet(PropertiesEmote emoteSet, WorldObject targetObject, ref bool __result)
    {
        if (emoteSet == null || emoteSet.Category != EmoteCategory.Give) return true;
        if (targetObject is not Player p) return true;

        if (!_bulkPending.TryGetValue(p.Guid.Full, out var bulk)) return true;
        if (DateTime.UtcNow - bulk.Timestamp > TimeSpan.FromSeconds(10))
        {
            _bulkPending.TryRemove(p.Guid.Full, out _);
            return true;
        }
        if (emoteSet.WeenieClassId != bulk.Wcid) return true;

        var charm = PatchClass.Settings?.DrudgeCharmTrophies;
        int totalTurnedIn = Math.Max(1, bulk.TotalCount);

        foreach (var stack in p.GetInventoryItemsOfWCID(bulk.Wcid).ToList())
            p.TryRemoveFromInventoryWithNetworking(stack.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);

        long xpAmount = 0;
        long bankDelta = 0;

        if (charm?.Enabled == true)
        {
            int level = p.Level ?? 1;
            ulong bracket = p.GetXPBetweenLevels(level, level + 1);
            float frac = CharmXpFraction(bulk.Wcid, charm);
            double scaled = Math.Floor(bracket * (double)frac * totalTurnedIn);
            xpAmount = scaled > long.MaxValue ? long.MaxValue : (long)scaled;

            long perCharm = CharmBankAmountPerCharm(bulk.Wcid, charm);
            bankDelta = perCharm * totalTurnedIn;
            if (bankDelta > 0)
                LeyLineLedgerBankInterop.IncBanked(p, charm.BankCashProperty, bankDelta);
        }

        _bulkPending.TryRemove(p.Guid.Full, out _);

        if (xpAmount > 0)
            p.GrantXP(xpAmount, XpType.Quest, ShareType.None);

        p.SendMessage(
            $"You turn in {totalTurnedIn:N0} {GetItemName(bulk.Wcid)} for {xpAmount:N0} experience and {bankDelta:N0} pyreals of bank credit.",
            ChatMessageType.System);

        __result = true;
        return false;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreGrantXP(ref long amount, XpType xpType, Player __instance)
    {
        if (amount <= 0 || xpType != XpType.Quest || __instance == null) return;
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
            24835 => "Bloodletter Drudge Charms",
            850271 => "Bloodletter Drudge Charms (Quality)",
            850272 => "Bloodletter Drudge Charms (Pristine)",
            850273 => "Bloodletter Drudge Charms (Perfect)",
            _ => "quest items"
        };
    }
}
