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
    /// Behdo Yii reward item turn-in (jewelry, healing kits, dispel gems) and Brighteyes the Tailor
    /// portal gem turn-in (Aphus Lassel, Frozen Valley).
    /// Behdo has no Give emotes for these items, so the vanilla GiveObjectToNPC would consume
    /// the item without any emote chain firing. This prefix intercepts before consumption,
    /// grants tier-scaled XP (1-at-a-time, no bulk drain), and skips the original method.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "GiveObjectToNPC", new Type[] {
        typeof(WorldObject), typeof(WorldObject), typeof(Container), typeof(Container), typeof(bool), typeof(int) })]
    public static bool PreGiveObjectToNPC_TurnInReward(WorldObject item, WorldObject target, Player __instance)
    {
        if (item == null || __instance == null || target == null) return true;
        if (Cfg?.EnableTrophyLines != true) return true;
        if (!TrophyLineRegistry.IsReady) return true;
        if (!TrophyLineRegistry.TryGetTier(item.WeenieClassId, out var line, out var tier)) return true;

        uint npcWcid = target.WeenieClassId;

        // If this NPC is excluded from this line, let the vanilla emote chain run
        if (line.ExcludedNpcWcids.Contains(npcWcid)) return true;

        // Only process this for NPCs that have TrophyLines-relevant turn-in items.
        // Behdo Yii (10842) reward items, Brighteyes (22642) portal gems,
        // Collector Vaetha (810003) all custom trophy turn-ins.
        if (npcWcid != 10842 && npcWcid != 22642 && npcWcid != 810003) return true;

        // Bank credit (Vaetha uses bank, others might not)
        int consumed = item.StackSize ?? 1;
        long bankDelta = 0;

        // Vaetha: bulk drain ALL stacks of this WCID (prefix fires before GiveObjectToNPC consumes anything)
        if (npcWcid == 810003)
        {
            // Count and drain all stacks in inventory (including the one being given)
            int totalCount = consumed;
            __instance.TryRemoveFromInventoryWithNetworking(item.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);
            foreach (var stack in __instance.GetInventoryItemsOfWCID(item.WeenieClassId).ToList())
            {
                totalCount += stack.StackSize ?? 1;
                __instance.TryRemoveFromInventoryWithNetworking(stack.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);
            }
            consumed = totalCount;

            bankDelta = tier.BankCredit * consumed;
            if (bankDelta > 0)
                LeyLineLedgerBankInterop.IncBanked(__instance, line.BankCashProperty, bankDelta);
        }

        // Behdo / Brighteyes: consume just the single item being given
        if (npcWcid == 10842 || npcWcid == 22642)
            __instance.TryRemoveFromInventoryWithNetworking(item.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);

        long xpAmount = 0;
        try
        {
            int level = __instance.Level ?? 1;
            ulong bracket = __instance.GetXPBetweenLevels(level, level + 1);
            double scaledXp = Math.Floor(bracket * (double)tier.XpFraction * consumed);
            xpAmount = scaledXp > long.MaxValue ? long.MaxValue : (long)scaledXp;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Windblown.TrophyLines] Turn-in reward calc failed for {__instance.Name} ({item.WeenieClassId}): {ex.Message}", ModManager.LogLevel.Error);
        }

        if (xpAmount > 0)
            __instance.GrantXP(xpAmount, XpType.Quest, ShareType.None);

        // Random flavor text per tier (Vaetha only)
        string flavor = "";
        if (npcWcid == 810003 && !string.IsNullOrWhiteSpace(tier.TierName))
        {
            flavor = GetVaethaFlavor(tier.TierName);
        }

        var displayName = BuildDisplayName(line, tier, consumed);
        string bankMsg = bankDelta > 0 ? $" and {bankDelta:N0} pyreals" : "";
        __instance.SendMessage(
            $"You turn in {consumed:N0} {displayName} for {xpAmount:N0} experience{bankMsg}.",
            ChatMessageType.System);

        // Flavor text on a separate line (Vaetha only)
        if (npcWcid == 810003 && !string.IsNullOrWhiteSpace(flavor))
        {
            __instance.SendMessage(
                $"Collector Vaetha tells you, \"{flavor.Trim('"')}\"",
                ChatMessageType.System);
        }

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

    [ThreadStatic] static Random? _flavorRng;

    static string GetVaethaFlavor(string tierName)
    {
        _flavorRng ??= new Random();

        // T1 / Regular — simple acknowledgment
        // T2 / Quality — mild praise
        // T3 / Pristine — noticeable enthusiasm
        // T4 / Perfect — ecstatic

        var tier = tierName.ToLowerInvariant() switch
        {
            "regular" or "t1" or "harvester" or "gardener" or "worker" or "soldier" or
            "legionary" or "female" or "male" or "crimsonback" or "goldenback" or "slave" or
            "guard" or "silver" or "armored" or "snowtuskerleader" or
            "engorged" or "voracious" or "abhorrent" or "ravenouse" or "upperinsatiable" or "insatiable"
                => 0,
            "quality" or "t2" => 1,
            "pristine" or "t3" => 2,
            "perfect" or "t4" => 3,
            _ => 0
        };

        return tier switch
        {
            0 => _t1Flavor[_flavorRng.Next(_t1Flavor.Length)],
            1 => _t2Flavor[_flavorRng.Next(_t2Flavor.Length)],
            2 => _t3Flavor[_flavorRng.Next(_t3Flavor.Length)],
            3 => _t4Flavor[_flavorRng.Next(_t4Flavor.Length)],
            _ => ""
        };
    }

    static readonly string[] _t1Flavor = new[]
    {
        "\"A fine addition to my collection.\"",
        "\"I can always use more of these.\"",
        "\"Thank you, this will do nicely.\"",
        "\"Every piece helps the cause.\"",
        "\"I'll find a place for this.\"",
        "\"Ah, the usual. Much appreciated.\"",
        "\"Not the finest I've seen, but it'll do.\"",
        "\"Keep them coming, I say!\"",
        "\"Another crate for the back room.\"",
        "\"Simple, but effective.\"",
        "\"I never tire of these.\"",
        "\"A humble offering, gratefully received.\"",
        "\"One more for the tally.\"",
        "\"Every little bit counts.\"",
        "\"Good eye spotting this one.\"",
        "\"I'll take good care of it.\"",
        "\"You're doing Dereth a service.\"",
        "\"Needs a bit of polish, but fine.\"",
        "\"Just what I expected. Thank you.\"",
        "\"Another satisfied transaction!\""
    };

    static readonly string[] _t2Flavor = new[]
    {
        "\"Oh, this is quite good!\"",
        "\"Quality item! You found this yourself?\"",
        "\"Now THIS is what I'm talking about.\"",
        "\"A cut above the usual haul.\"",
        "\"Well preserved. Well done!\"",
        "\"Excellent craftsmanship on this one.\"",
        "\"I shall treasure this piece.\"",
        "\"You have a keen eye for quality.\"",
        "\"This will fetch a fine price.\"",
        "\"Remarkable condition!\"",
        "\"I'd recognize quality anywhere.\"",
        "\"A worthy addition indeed.\"",
        "\"This stands out from the rest.\"",
        "\"You've outdone yourself this time.\"",
        "\"Delightful! Simply delightful!\"",
        "\"I can already tell this is special.\"",
        "\"Not bad, not bad at all!\"",
        "\"You clearly know what you're doing.\"",
        "\"Top shelf material!\"" 
    };

    static readonly string[] _t3Flavor = new[]
    {
        "\"By the Light! This is magnificent!\"",
        "\"I've not seen one this fine in years!\"",
        "\"Pristine! Absolutely pristine!\"",
        "\"You found this WHERE? Incredible!\"",
        "\"This belongs in a museum!\"",
        "\"Exceptionally rare piece. Well done!\"",
        "\"I am genuinely impressed.\"",
        "\"Now THAT is a trophy worth having.\"",
        "\"The detail on this is stunning.\"",
        "\"A rare gem, literally and figuratively.\"",
        "\"This will be the centerpiece of my collection.\"",
        "\"You have earned my deepest respect.\"",
        "\"Extraordinary! I'm at a loss for words.\"",
        "\"I must have this! Name your price!\"",
        "\"Flawless. Simply flawless.\"",
        "\"I'll be telling stories about this one.\"",
        "\"A true adventurer's prize!\"",
        "\"This is why I do what I do.\"",
        "\"The sheen! The quality! Impeccable!\"",
        "\"You've made my entire month.\""
    };

    static readonly string[] _t4Flavor = new[]
    {
        "\"IMPERFECT? NO—THIS IS BEYOND PERFECT!\"",
        "\"I... I need to sit down. This is unreal.\"",
        "\"Legends will be written about this piece!\"",
        "\"HOW did you acquire this?!\"",
        "\"This belongs in the Royal Vault!\"",
        "\"I would trade my entire collection for this!\"",
        "\"A once-in-a-lifetime find!\"",
        "\"This is the apex of trophies. Unbelievable.\"",
        "\"The gods themselves would weep at this sight.\"",
        "\"I am not worthy to even hold this!\"",
        "\"This changes everything!\"",
        "\"Perfection incarnate! There is no higher!\"",
        "\"You have done the impossible!\"",
        "\"My grandchildren will hear of this day.\"",
        "\"I shall build a shrine for this piece.\"",
        "\"This is the finest I have ever seen.\"",
        "\"Beyond my wildest expectations!\"",
        "\"You are a legend among adventurers!\"",
        "\"I'm trembling. This is too much!\"",
        "\"Elation! Pure elation! Thank you!\""
    };
}
