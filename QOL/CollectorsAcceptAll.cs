using System.Collections.Concurrent;
using System.Reflection;
using System.Text;
using ACE.Entity.Enum.Properties;
using ACE.Server.Managers;
using ACE.Server.Network;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;

namespace QOL;

internal static class CollectorsAcceptAll
{
    private static readonly ConcurrentDictionary<uint, bool> CollectorWcids = new();
    private static bool _initialized;

    // ThreadStatic context for a single collector turn-in.
    // Tracks QOL bonus XP and auto-banked currency from emotes.
    sealed class CollectorContext
    {
        public long QolBonusXp;
        public long PyrealsAccumulated;
    }

    [ThreadStatic] static CollectorContext? _ctx;

    static int BankProp => PatchClass.Settings!.TownNetworkToll.BankCashProperty;

    static readonly HashSet<uint> TradeNoteWcids = new()
    {
        (uint)ACE.Server.Factories.Enum.WeenieClassName.tradenote100,
        (uint)ACE.Server.Factories.Enum.WeenieClassName.tradenote500,
        (uint)ACE.Server.Factories.Enum.WeenieClassName.tradenote1000,
        (uint)ACE.Server.Factories.Enum.WeenieClassName.tradenote5000,
        (uint)ACE.Server.Factories.Enum.WeenieClassName.tradenote10000,
        (uint)ACE.Server.Factories.Enum.WeenieClassName.tradenote50000,
        (uint)ACE.Server.Factories.Enum.WeenieClassName.tradenote100000,
        (uint)ACE.Server.Factories.Enum.WeenieClassName.tradenote15000,
        (uint)ACE.Server.Factories.Enum.WeenieClassName.tradenote20000,
        (uint)ACE.Server.Factories.Enum.WeenieClassName.tradenote25000,
    };

    static bool IsCurrencyWcid(uint wcid) => wcid == 273 || TradeNoteWcids.Contains(wcid);

    // Detect if BundleGive is active so we don't double-intercept emote currency.
    static bool IsBundleGiveActive()
    {
        try
        {
            var asm = typeof(CollectorsAcceptAll).Assembly;
            var type = asm.GetType("QOL.BundleGive");
            if (type == null) return false;
            var field = type.GetField("_ctx", BindingFlags.NonPublic | BindingFlags.Static);
            return field?.GetValue(null) != null;
        }
        catch { return false; }
    }

    [HarmonyPatchCategory(nameof(Features.CollectorsAcceptAll))]
    [HarmonyPatch(typeof(Player), nameof(Player.GiveObjectToNPC))]
    public static class GiveObjectToNPC_Patch
    {
        public static bool Prefix(Player __instance, WorldObject target, WorldObject item,
            Container itemFoundInContainer, Container itemRootOwner, bool itemWasEquipped, int amount)
        {
            if (!_initialized || target == null || item == null)
                return true;

            var targetWcid = target.WeenieClassId;
            if (targetWcid == 0 || !CollectorWcids.ContainsKey(targetWcid))
                return true;

            _ctx = new CollectorContext();

            var burden = item.EncumbranceVal ?? 0;
            var isSticky = item.IsStickyAttunedOrContainsStickyAttuned;
            var isAttuned = item.IsAttunedOrContainsAttuned;
            var isFullSalvage = burden > 0 && item.Name != null && item.Name.EndsWith("Salvage (100)");

            bool hasEmote = target.HasGiveOrRefuseEmoteForItem(item, out var emote);
            var hasValidGive = hasEmote && emote != null && emote.Category == EmoteCategory.Give;

            // Grant QOL collector bonus XP immediately.
            GrantQolBonusXp(__instance, item, isAttuned);

            if (isSticky && hasValidGive)
            {
                if (!__instance.RemoveItemForGive(item, itemFoundInContainer, itemWasEquipped, itemRootOwner, amount, out var removedSticky))
                {
                    ModManager.Log($"[CollectorsAcceptAll] RemoveItemForGive failed for sticky attuned item {item.Name} to {target.Name}", ModManager.LogLevel.Warn);
                    SendCollectorSummary(__instance);
                    _ctx = null;
                    return false;
                }

                if (item == removedSticky)
                    __instance.Session.Network.EnqueueSend(new GameEventItemServerSaysContainId(__instance.Session, item, target));

                var stackSticky = (removedSticky.StackSize ?? 1) != 1 ? $"{removedSticky.StackSize:N0} " : "";
                var itemSticky = removedSticky.GetNameWithMaterial(removedSticky.StackSize ?? 1);

                __instance.Session.Network.EnqueueSend(new GameMessageSystemChat($"You give {target.Name} {stackSticky}{itemSticky}.", ChatMessageType.Broadcast));
                target.EnqueueBroadcast(new GameMessageSound(target.Guid, Sound.ReceiveItem));

                target.EmoteManager.ExecuteEmoteSet(emote, __instance);

                removedSticky.Destroy();
                SendCollectorSummary(__instance);
                _ctx = null;
                return false;
            }

            if (hasValidGive)
            {
                // Let vanilla handle the give + emote.
                // Emote currency will be intercepted by PreGiveFromEmote.
                // Summary will be sent by PostHandleActionGiveObjectRequest.
                return true;
            }

            var isEligible = isAttuned || isFullSalvage;
            if (!isEligible)
                return true;

            if (!__instance.RemoveItemForGive(item, itemFoundInContainer, itemWasEquipped, itemRootOwner, amount, out var removedAlt))
            {
                ModManager.Log($"[CollectorsAcceptAll] RemoveItemForGive failed for item {item.Name} (attuned={isAttuned}, burden={burden}) to {target.Name}.", ModManager.LogLevel.Warn);
                __instance.SendMessage($"{target.Name} cannot accept {item.Name} right now.");
                SendCollectorSummary(__instance);
                _ctx = null;
                return false;
            }

            if (item == removedAlt)
                __instance.Session.Network.EnqueueSend(new GameEventItemServerSaysContainId(__instance.Session, item, target));

            var stackAlt = (removedAlt.StackSize ?? 1) != 1 ? $"{removedAlt.StackSize:N0} " : "";
            var itemAlt = removedAlt.GetNameWithMaterial(removedAlt.StackSize ?? 1);

            __instance.Session.Network.EnqueueSend(new GameMessageSystemChat($"You give {target.Name} {stackAlt}{itemAlt}.", ChatMessageType.Broadcast));
            target.EnqueueBroadcast(new GameMessageSound(target.Guid, Sound.ReceiveItem));

            removedAlt.Destroy();
            SendCollectorSummary(__instance);
            _ctx = null;
            return false;
        }
    }

    // Intercept collector emote currency and accumulate for banking.
    // Skips when BundleGive is active (BundleGive already handles its own banking).
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GiveFromEmote),
        new Type[] { typeof(WorldObject), typeof(uint), typeof(int), typeof(int), typeof(float) })]
    public static bool PreGiveFromEmote(uint weenieClassId, int amount)
    {
        if (_ctx == null) return true;
        if (IsBundleGiveActive()) return true; // let BundleGive handle it
        if (!IsCurrencyWcid(weenieClassId)) return true;

        var unitValue = DatabaseManager.World.GetCachedWeenie(weenieClassId)
            ?.GetProperty(PropertyInt.Value) ?? 0;
        _ctx.PyrealsAccumulated += (long)unitValue * amount;
        return false; // skip creating the item in inventory
    }

    // Postfix for vanilla-handled collector gives (hasValidGive = true).
    // Emote has executed; deposit accumulated currency and send summary.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionGiveObjectRequest),
        new Type[] { typeof(uint), typeof(uint), typeof(int) })]
    public static void PostHandleActionGiveObjectRequest(Player __instance)
    {
        var ctx = _ctx;
        _ctx = null;
        if (ctx == null) return;
        SendCollectorSummary(__instance);
    }

    static long GetXpToNextLevel(Player player)
    {
        var level = player.Level ?? 1;
        var xpTable = DatManager.PortalDat.XpTable;
        if (xpTable?.CharacterLevelXPList is not null)
        {
            var list = xpTable.CharacterLevelXPList;
            if (level + 1 < list.Count)
                return (long)(list[level + 1] - list[level]);
        }
        const double a = 1973.0, b = -585787.0, c = 48728021.0;
        return Math.Max(0, (long)(a * level * level + b * level + c));
    }

    static void GrantQolBonusXp(Player player, WorldObject item, bool isAttuned)
    {
        var xpToNext = GetXpToNextLevel(player);
        if (xpToNext <= 0) return;

        double fraction;
        if (isAttuned)
        {
            fraction = 0.30;
        }
        else
        {
            var burden = item.EncumbranceVal ?? 0;
            if (burden <= 0) return;
            fraction = (burden / 100.0) * 0.10;
        }

        var bonusXp = (long)(xpToNext * fraction);
        if (bonusXp <= 0) return;

        // Grant via LoremasterQuestXpInterop so it bypasses the multiplier chain.
        LoremasterQuestXpInterop.GrantLevelFractionQuestXp(player, bonusXp);
        _ctx!.QolBonusXp = bonusXp;
    }

    static void SendCollectorSummary(Player player)
    {
        var ctx = _ctx;
        if (ctx == null) return;

        var sb = new StringBuilder("[Collector]");
        bool any = false;

        if (ctx.QolBonusXp > 0)
        {
            sb.Append($" +{ctx.QolBonusXp:N0} XP bonus");
            any = true;
        }

        if (ctx.PyrealsAccumulated > 0)
        {
            var prop = (PropertyInt64)BankProp;
            player.SetProperty(prop, (player.GetProperty(prop) ?? 0L) + ctx.PyrealsAccumulated);
            sb.Append($" | {ctx.PyrealsAccumulated:N0} pyreals → bank");
            any = true;
        }

        if (any)
            player.SendMessage(sb.ToString(), ChatMessageType.System);
    }

    public static void Initialize()
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableCollectorsAcceptAll != true)
            return;

        if (settings.CollectorWcids != null)
        {
            foreach (var wcid in settings.CollectorWcids)
                CollectorWcids[wcid] = true;
        }

        _initialized = true;
        ModManager.Log($"[QOL] CollectorsAcceptAll initialized with {CollectorWcids.Count} collectors", ModManager.LogLevel.Info);
    }
}
