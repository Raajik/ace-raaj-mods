using AceRaajMods.Shared;
using Windblown.TrophyLines;

namespace Windblown;

/// <summary>
/// Bulk turn-in for any tier WCID registered in <see cref="TrophyLineRegistry"/>.
///
/// Flow (mirrors the BSS QuestTurnInCap bulk path that was extracted in Phase 2):
/// 1. <c>PreGiveObjectToNPC_Trophy</c> sees player give a tier-WCID item; counts player's total stack of that WCID
///    in inventory and stashes a <see cref="BulkTurnInState"/> keyed by player guid.
/// 2. Vanilla <c>GiveObjectToNPC</c> consumes one item, broadcasts the give message, looks up the NPC's
///    <c>EmoteCategory.Give</c> chain (the emote-mirror layer in <c>Weenies/EmoteMirrorPatches.cs</c> ensures
///    higher-tier WCIDs route through the source's emote chain on every NPC that already accepts the source),
///    then calls <c>EmoteManager.ExecuteEmoteSet</c> which the JIT inlines into a direct <c>Enqueue</c> call.
/// 3. <c>PreEnqueue_Trophy</c> (Harmony prefix on <c>EmoteManager.Enqueue</c>; we patch Enqueue rather than
///    ExecuteEmoteSet because the latter is a trivial wrapper that gets JIT-inlined and bypasses Harmony at
///    its inlined call sites) intercepts the matching emote, drains the player's remaining stacks of that
///    WCID, grants tier-scaled quest XP + bank credit (via <see cref="LeyLineLedgerBankInterop"/>), sends a
///    single consolidated chat message, restores the EmoteManager Nested/IsBusy bookkeeping that
///    ExecuteEmoteSet touched before calling us, and short-circuits the vanilla emote chain so the NPC
///    never spawns the legacy reward (e.g. Bloodletter Charm Necklace 25539).
/// </summary>
public partial class PatchClass
{
    record BulkTurnInState(uint Wcid, int TotalCount, DateTime Timestamp);
    static readonly ConcurrentDictionary<uint, BulkTurnInState> _bulkPending = new();

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "GiveObjectToNPC", new Type[] {
        typeof(WorldObject), typeof(WorldObject), typeof(Container), typeof(Container), typeof(bool), typeof(int) })]
    public static void PreGiveObjectToNPC_Trophy(WorldObject item, Player __instance)
    {
        if (item == null || __instance == null) return;
        if (Cfg?.EnableTrophyLines != true) return;
        if (!TrophyLineRegistry.IsReady) return;
        if (!TrophyLineRegistry.TryGetTier(item.WeenieClassId, out var line, out _)) return;
        if (!line.EnableBulkTurnIn) return;

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

    /// <summary>
    /// Behdo Yii reward item turn-in (jewelry, healing kits, dispel gems).
    /// Behdo has no Give emotes for these items, so the vanilla GiveObjectToNPC would consume
    /// the item without any emote chain firing. This prefix intercepts before consumption,
    /// drains ALL stacks of that WCID, calculates XP from XpFraction, and skips the original method.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "GiveObjectToNPC", new Type[] {
        typeof(WorldObject), typeof(WorldObject), typeof(Container), typeof(Container), typeof(bool), typeof(int) })]
    public static bool PreGiveObjectToNPC_BehdoReward(WorldObject item, WorldObject target, Player __instance)
    {
        if (item == null || __instance == null || target == null) return true;
        if (target.WeenieClassId != 10842) return true; // Only Behdo Yii
        if (Cfg?.EnableTrophyLines != true) return true;
        if (!TrophyLineRegistry.IsReady) return true;
        if (!TrophyLineRegistry.TryGetTier(item.WeenieClassId, out var line, out var tier)) return true;

        // If Behdo is excluded from this line (e.g. pincer line), let the vanilla emote chain run
        if (line.ExcludedNpcWcids.Contains(10842)) return true;

        // Count ALL stacks of this WCID in inventory
        int totalCount = 0;
        foreach (var inv in __instance.GetInventoryItemsOfWCID(item.WeenieClassId))
            totalCount += inv.StackSize ?? 1;

        if (totalCount <= 0) return true;

        // Drain all stacks (GiveObjectToNPC hasn't consumed anything yet since this is prefix)
        foreach (var stack in __instance.GetInventoryItemsOfWCID(item.WeenieClassId).ToList())
            __instance.TryRemoveFromInventoryWithNetworking(stack.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);

        long xpAmount = 0;
        try
        {
            int level = __instance.Level ?? 1;
            ulong bracket = __instance.GetXPBetweenLevels(level, level + 1);
            double scaledXp = Math.Floor(bracket * (double)tier.XpFraction * totalCount);
            xpAmount = scaledXp > long.MaxValue ? long.MaxValue : (long)scaledXp;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Windblown.TrophyLines] Behdo reward calc failed for {__instance.Name} ({item.WeenieClassId}): {ex.Message}", ModManager.LogLevel.Error);
        }

        if (xpAmount > 0)
            __instance.GrantXP(xpAmount, XpType.Quest, ShareType.None);

        var displayName = BuildDisplayName(line, tier, totalCount);
        __instance.SendMessage(
            $"You turn in {totalCount:N0} {displayName} for {xpAmount:N0} experience.",
            ChatMessageType.System);

        return false; // Skip vanilla GiveObjectToNPC entirely
    }

    // EmoteManager.ExecuteEmoteSet(PropertiesEmote, WorldObject, bool=false) is a trivial wrapper that
    // the JIT inlines, so a Harmony prefix on it never fires when called directly from
    // Player_Inventory.GiveObjectToNPC. Patch Enqueue (the non-trivial work) instead — and only
    // intercept the FIRST action (emoteIdx == 0) of a Give chain so we replace the whole reward sequence.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(EmoteManager), nameof(EmoteManager.Enqueue))]
    public static bool PreEnqueue_Trophy(EmoteManager __instance, PropertiesEmote emoteSet, WorldObject targetObject, int emoteIdx, float delay)
    {
        if (emoteSet == null) return true;
        if (emoteSet.Category != EmoteCategory.Give) return true;
        if (emoteIdx != 0) return true;
        if (targetObject is not Player p) return true;
        if (Cfg?.EnableTrophyLines != true) return true;
        if (!TrophyLineRegistry.IsReady) return true;

        if (!_bulkPending.TryGetValue(p.Guid.Full, out var bulk)) return true;
        if (DateTime.UtcNow - bulk.Timestamp > TimeSpan.FromSeconds(10))
        {
            _bulkPending.TryRemove(p.Guid.Full, out _);
            return true;
        }
        if (emoteSet.WeenieClassId != bulk.Wcid) return true;

        // Resolve the NPC that owns this EmoteManager
        var npc = __instance.WorldObject;
        uint npcWcid = npc?.WeenieClassId ?? 0;

        if (!TrophyLineRegistry.TryGetTier(bulk.Wcid, out var line, out var tier))
        {
            _bulkPending.TryRemove(p.Guid.Full, out _);
            return true;
        }

        // If this NPC is excluded (e.g. mask maker), let the vanilla emote chain run
        if (npcWcid > 0 && line.ExcludedNpcWcids.Contains(npcWcid))
        {
            _bulkPending.TryRemove(p.Guid.Full, out _);
            return true;
        }

        int totalTurnedIn = Math.Max(1, bulk.TotalCount);

        // Drain remaining stacks (vanilla GiveObjectToNPC already consumed the first one before this prefix runs)
        foreach (var stack in p.GetInventoryItemsOfWCID(bulk.Wcid).ToList())
            p.TryRemoveFromInventoryWithNetworking(stack.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);

        long xpAmount = 0;
        long bankDelta = 0;

        try
        {
            int level = p.Level ?? 1;
            ulong bracket = p.GetXPBetweenLevels(level, level + 1);
            double scaledXp = Math.Floor(bracket * (double)tier.XpFraction * totalTurnedIn);
            xpAmount = scaledXp > long.MaxValue ? long.MaxValue : (long)scaledXp;

            bankDelta = tier.BankCredit * totalTurnedIn;
            if (bankDelta > 0)
                LeyLineLedgerBankInterop.IncBanked(p, line.BankCashProperty, bankDelta);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Windblown.TrophyLines] Turn-in reward calc failed for {p.Name} ({bulk.Wcid}): {ex.Message}", ModManager.LogLevel.Error);
        }

        _bulkPending.TryRemove(p.Guid.Full, out _);

        if (xpAmount > 0)
            p.GrantXP(xpAmount, XpType.Quest, ShareType.None);

        var displayName = BuildDisplayName(line, tier, totalTurnedIn);
        p.SendMessage(
            $"You turn in {totalTurnedIn:N0} {displayName} for {xpAmount:N0} experience and {bankDelta:N0} pyreals of bank credit.",
            ChatMessageType.System);

        if (Cfg!.LogTrophyLinesVerbose)
            ModManager.Log($"[Windblown.TrophyLines] {p.Name} turned in {totalTurnedIn} x {displayName} (wcid {bulk.Wcid}) -> {xpAmount} XP, {bankDelta} bank.", ModManager.LogLevel.Info);

        // Restore EmoteManager bookkeeping that ExecuteEmoteSet incremented before calling us.
        // Vanilla DoEnqueue does Nested-- + IsBusy=false at end-of-chain; mirror it here.
        try
        {
            var trav = Traverse.Create(__instance);
            int nested = (trav.Field<int>("Nested").Value) - 1;
            trav.Field<int>("Nested").Value = nested;
            if (nested <= 0)
                trav.Property<bool>("IsBusy").Value = false;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Windblown.TrophyLines] Enqueue state cleanup failed: {ex.Message}", ModManager.LogLevel.Warn);
        }

        return false;
    }

    static string BuildDisplayName(TrophyLineConfig line, TrophyTier tier, int count)
    {
        // Plural form: "Rat Tails (Quality)" not "Rat Tail (Quality)s"
        var baseName = !string.IsNullOrWhiteSpace(line.TurnInDisplayName)
            ? line.TurnInDisplayName
            : line.Name;

        var pluralized = count == 1 ? baseName : Pluralize(baseName);
        var tierLabel = tier.TierName;

        // If the tier name is "Regular", omit it from chat to keep messages clean.
        if (string.IsNullOrWhiteSpace(tierLabel) || tierLabel.Equals("Regular", StringComparison.OrdinalIgnoreCase))
            return pluralized;

        return $"{pluralized} ({tierLabel})";
    }

    static string Pluralize(string singular)
    {
        if (string.IsNullOrEmpty(singular)) return singular;
        // English-trophy-name pluralization heuristic. Specific cases for the lines we currently ship.
        if (singular.EndsWith("y", StringComparison.OrdinalIgnoreCase))
            return singular[..^1] + "ies";
        if (singular.EndsWith("s", StringComparison.OrdinalIgnoreCase)
            || singular.EndsWith("x", StringComparison.OrdinalIgnoreCase)
            || singular.EndsWith("ch", StringComparison.OrdinalIgnoreCase)
            || singular.EndsWith("sh", StringComparison.OrdinalIgnoreCase))
            return singular + "es";
        return singular + "s";
    }
}
