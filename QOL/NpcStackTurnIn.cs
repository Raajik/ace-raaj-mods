using System.Collections;
using System.Reflection;
using ACE.Entity.Enum.Properties;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace QOL;

/// <summary>
/// Full-stack NPC turn-ins with proportional reward scaling, LeyLineLedger auto-bank,
/// and main-pack space checks for equipment rewards.
/// </summary>
[HarmonyPatchCategory(nameof(Features.NpcStackTurnIn))]
internal static class NpcStackTurnIn
{
    [ThreadStatic] static uint? _turnInWcid;
    [ThreadStatic] static int _turnInCount;
    [ThreadStatic] static uint _turnInNpcWcid;
    [ThreadStatic] static DateTime _turnInTimestamp;
    [ThreadStatic] static bool _cleanupDone;
    [ThreadStatic] static int _totalConsumed;

    static NpcStackTurnInSettings Cfg => PatchClass.Settings?.NpcStackTurnIn ?? new();

    // ------------------------------------------------------------------
    // STEP 1 — Capture intent in HandleActionGiveObjectRequest
    // ------------------------------------------------------------------
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionGiveObjectRequest),
        new Type[] { typeof(uint), typeof(uint), typeof(int) })]
    public static void PreHandleActionGiveObjectRequest(Player __instance, uint targetGuid, uint itemGuid, int amount)
    {
        if (amount <= 1) return; // nothing to bulk-scale when giving singles

        var cfg = Cfg;
        if (cfg?.Enabled != true || cfg.StackableQuestWcids == null || cfg.StackableQuestWcids.Count == 0)
            return;

        // Only track items that are explicitly configured for bulk turn-in
        var item = __instance.FindObject(itemGuid,
            Player.SearchLocations.MyInventory | Player.SearchLocations.MyEquippedItems,
            out _, out _, out _);
        if (item == null || !cfg.StackableQuestWcids.Contains(item.WeenieClassId))
            return;

        // Target must be a non-player NPC/Container
        var target = __instance.FindObject(targetGuid, Player.SearchLocations.Landblock, out _, out _, out _);
        if (target == null || target is Player) return;

        _turnInWcid = item.WeenieClassId;
        _turnInCount = item.StackSize ?? 1;
        _turnInNpcWcid = target.WeenieClassId;
        _turnInTimestamp = DateTime.UtcNow;
        _cleanupDone = false;
        _totalConsumed = 0;

        // Keep amount = 1 in the call so ACE moves exactly 1 to the NPC.
        // The remaining N-1 stay in the player's pack; we scoop them up
        // during the first GiveFromEmote intercept and scale the reward.
    }

    // ------------------------------------------------------------------
    // STEP 2 — Intercept GiveFromEmote: scale, auto-bank, space-check
    // ------------------------------------------------------------------
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GiveFromEmote))]
    public static bool PreGiveFromEmote(Player __instance, WorldObject emoter, uint weenieClassId, int amount)
    {
        if (_turnInWcid == null || _turnInCount <= 1) return true;
        if (emoter?.WeenieClassId != _turnInNpcWcid) return true;

        var cfg = Cfg;
        if (cfg?.Enabled != true) { ResetTracker(); return true; }

        // 10-second safety window per interaction
        if (DateTime.UtcNow - _turnInTimestamp > TimeSpan.FromSeconds(10))
        { ResetTracker(); return true; }

        // ---- First GiveFromEmote for this tracker: consume remaining stack ----
        if (!_cleanupDone)
        {
            _cleanupDone = true;
            int remainingInPack = SumPlayerInventoryOfWcid(__instance, _turnInWcid.Value);
            int removedNow = ConsumeRemainingStack(__instance, _turnInWcid.Value);

            // ACE already took 1 item via HandleActionGiveObjectRequest.
            // If an NPC also has TakeItems, it took another 1 already.
            // We remove whatever is left in the player's pack.
            _totalConsumed = _turnInCount;       // intended total
            int missing  = _totalConsumed - 1 - removedNow;
            if (missing > 0 && remainingInPack >= missing)
            {
                // Edge: items vanished between give-start and now (e.g. another TakeItems).
                // We already consumed 'removedNow'; nothing else to do.
            }

            __instance.SendMessage(
                $"You turn in {_totalConsumed:N0}x {GetItemName(_turnInWcid.Value)}.",
                ChatMessageType.System);
        }

        int scaledAmount = amount * _totalConsumed;

        // ---- Auto-bank via LeyLineLedger if this reward WCID is bankable ----
        if (cfg.AutoBankLllRewards && LeyLineLedgerBankInterop.IsBankableWcid(weenieClassId, out int bankProp))
        {
            long cur = LeyLineLedgerBankInterop.GetBanked(__instance, bankProp);
            LeyLineLedgerBankInterop.IncBanked(__instance, bankProp, scaledAmount);
            __instance.SendMessage(
                $"Banked {scaledAmount:N0}x {GetItemName(weenieClassId)} via LeyLineLedger.",
                ChatMessageType.Broadcast);
            ResetTracker();
            return false; // skip original GiveFromEmote — handled
        }

        // ---- Equipment space check ----
        if (cfg.CheckPackSpaceForEquipment && IsEquipmentWcid(weenieClassId))
        {
            int slotsNeeded = CalculateSlotsNeeded(weenieClassId, scaledAmount);
            int freeSlots = GetMainPackFreeSlots(__instance);
            if (freeSlots < slotsNeeded)
            {
                __instance.SendMessage(
                    $"Not enough main-pack space for {scaledAmount:N0} equipment rewards. " +
                    $"Giving single reward only — free up {slotsNeeded - freeSlots} slots and try again with the full stack.",
                    ChatMessageType.Broadcast);
                // Graceful fallback: do NOT consume remaining stack, just give the single
                // unscaled reward and let the player keep the rest.
                _cleanupDone = true; // suppress bulk consumption
                ResetTracker();
                return true; // let original GiveFromEmote run (amount = 1, unscaled)
            }
        }

        // ---- Direct scaled reward (non-banked, non-blocked) ----
        GiveRewardDirect(__instance, weenieClassId, scaledAmount);
        ResetTracker();
        return false; // skip original; we created the items ourselves
    }

    // ------------------------------------------------------------------
    // Helpers
    // ------------------------------------------------------------------

    static void GiveRewardDirect(Player player, uint wcid, int amount)
    {
        if (amount <= 0) return;

        // Create the weenie
        var item = WorldObjectFactory.CreateNewWorldObject(wcid);
        if (item == null)
        {
            ModManager.Log($"[QOL] NpcStackTurnIn: Failed to create reward WCID {wcid}", ModManager.LogLevel.Warn);
            return;
        }

        // If the item is naturally stackable, create one stack
        if (item.MaxStackSize > 1)
        {
            item.SetStackSize(Math.Min(amount, (int)(item.MaxStackSize ?? 100)));
        }

        if (!player.TryCreateInInventoryWithNetworking(item))
        {
            // Fallback: drop on ground if inventory full
            item.Location = player.Location;
            LandblockManager.AddObject(item);
            player.SendMessage(
                $"Your pack is full — {item.NameWithMaterial} was placed at your feet.",
                ChatMessageType.System);
        }

        // If there are more to give, recurse for the remainder
        amount -= item.StackSize ?? 1;
        if (amount > 0)
            GiveRewardDirect(player, wcid, amount);
    }

    static int SumPlayerInventoryOfWcid(Player player, uint wcid)
    {
        var items = player.GetInventoryItemsOfWCID(wcid);
        items.AddRange(player.GetEquippedObjectsOfWCID(wcid));
        return items.Sum(i => i.StackSize ?? 1);
    }

    static int ConsumeRemainingStack(Player player, uint wcid)
    {
        int removed = 0;
        var items = player.GetInventoryItemsOfWCID(wcid).ToList();
        foreach (var item in items)
        {
            int stack = item.StackSize ?? 1;
            player.TryRemoveFromInventoryWithNetworking(
                item.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);
            removed += stack;
        }
        // Also check equipped (unlikely for quest items, but safe)
        var equipped = player.GetEquippedObjectsOfWCID(wcid).ToList();
        foreach (var item in equipped)
        {
            int stack = item.StackSize ?? 1;
            player.TryRemoveFromInventoryWithNetworking(
                item.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);
            removed += stack;
        }
        return removed;
    }

    static bool IsEquipmentWcid(uint wcid)
    {
        // Fast check via weenie cache if available, else assume false
        var weenie = DatabaseManager.World.GetCachedWeenie(wcid);
        if (weenie == null) return false;

        var itemType = (ItemType)(weenie.GetProperty(PropertyInt.ItemType) ?? 0);
        return (itemType & (ItemType.MeleeWeapon | ItemType.MissileWeapon | ItemType.Caster |
                            ItemType.Armor | ItemType.Clothing | ItemType.Jewelry)) != 0;
    }

    static int CalculateSlotsNeeded(uint wcid, int amount)
    {
        // If the item stacks, estimate fewer slots
        var weenie = DatabaseManager.World.GetCachedWeenie(wcid);
        int maxStack = weenie?.GetProperty(PropertyInt.MaxStackSize) ?? 1;
        if (maxStack <= 1) return amount; // each needs its own slot
        return (int)Math.Ceiling(amount / (double)maxStack);
    }

    static int GetMainPackFreeSlots(Player player)
    {
        // Main pack = items whose direct ContainerId is the player's Guid
        int mainPackItems = 0;
        foreach (var item in player.Inventory.Values)
        {
            if (item.ContainerId == player.Guid.Full)
                mainPackItems++;
        }
        // Default main pack capacity in AC: 102 items
        return Math.Max(0, 102 - mainPackItems);
    }

    static string GetItemName(uint wcid)
    {
        var weenie = DatabaseManager.World.GetCachedWeenie(wcid);
        return weenie?.GetProperty(PropertyString.Name) ?? $"item ({wcid})";
    }

    static void ResetTracker()
    {
        _turnInWcid = null;
        _turnInCount = 0;
        _turnInNpcWcid = 0;
        _cleanupDone = false;
        _totalConsumed = 0;
    }
}

public class NpcStackTurnInSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, NPC quest turn-ins respect stack size: rewards (XP, items, currencies) scale by the full stack given. Bankable rewards auto-deposit via LeyLineLedger. Equipment rewards pre-check main-pack free slots.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// StackableQuestWcids")]
    public string StackableQuestWcidsDoc { get; init; } = "WCIDs that should use bulk turn-in logic. When a player gives a stack of one of these to an NPC, the entire stack is consumed and rewards are scaled by stack size. Populate from QOL/StackableWcids.json groups.";
    public List<uint> StackableQuestWcids { get; set; } = new();

    [JsonPropertyName("// AutoBankLllRewards")]
    public string AutoBankLllRewardsDoc { get; init; } = "When true, rewards whose WCID exists in LeyLineLedger Settings.Items are deposited directly to the corresponding bank PropertyInt64 instead of going to player inventory.";
    public bool AutoBankLllRewards { get; set; } = true;

    [JsonPropertyName("// CheckPackSpaceForEquipment")]
    public string CheckPackSpaceForEquipmentDoc { get; init; } = "When true, turning in a stack whose rewards include equipment is blocked if the player's main pack has insufficient free slots to receive all rewards at once.";
    public bool CheckPackSpaceForEquipment { get; set; } = true;
}
