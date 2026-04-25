using WeenieClassName = ACE.Server.Factories.Enum.WeenieClassName;

namespace QOL;

// Bundle turn-in: if a player gives ≥BundleSize of a stackable WCID to an NPC,
// consumes BundleSize items and multiplies all emote rewards (XP, items, currency).
// Currency rewards are intercepted before they reach inventory and deposited to the bank.
[HarmonyPatchCategory(nameof(Features.BundleGive))]
internal static class BundleGive
{
    sealed class BundleContext
    {
        public int BundleSize;
        public uint ItemGuid;
        public long XpAccumulated;
        public long PyrealsAccumulated;
        public readonly List<(uint Wcid, int Amount)> ItemsGranted = new();
    }

    [ThreadStatic] static BundleContext? _ctx;

    static BundleGiveSettings Cfg => PatchClass.Settings!.BundleGive;
    static int BankProp => PatchClass.Settings!.TownNetworkToll.BankCashProperty;

    static readonly HashSet<uint> TradeNoteWcids = new()
    {
        (uint)WeenieClassName.tradenote100,
        (uint)WeenieClassName.tradenote500,
        (uint)WeenieClassName.tradenote1000,
        (uint)WeenieClassName.tradenote5000,
        (uint)WeenieClassName.tradenote10000,
        (uint)WeenieClassName.tradenote50000,
        (uint)WeenieClassName.tradenote100000,
        (uint)WeenieClassName.tradenote15000,
        (uint)WeenieClassName.tradenote20000,
        (uint)WeenieClassName.tradenote25000,
    };

    static bool IsCurrencyWcid(uint wcid) =>
        wcid == 273 || TradeNoteWcids.Contains(wcid);

    // 1. Detect bundle-eligible give, set context, clamp amount to 1.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionGiveObjectRequest),
        new Type[] { typeof(uint), typeof(uint), typeof(int) })]
    public static void PreHandleActionGiveObjectRequest(
        Player __instance, uint targetGuid, uint itemGuid, ref int amount)
    {
        _ctx = null;

        var bundleSize = Cfg.BundleSize;
        if (amount < bundleSize) return;

        var target = __instance.FindObject(targetGuid, Player.SearchLocations.Landblock,
            out _, out _, out _);
        if (target is Player) return;

        var item = __instance.FindObject(itemGuid,
            Player.SearchLocations.MyInventory | Player.SearchLocations.MyEquippedItems,
            out _, out _, out _);
        if (item == null) return;
        if (!Stackable.IsStackableWcid(item.WeenieClassId)) return;
        if ((item.StackSize ?? 0) < bundleSize) return;

        _ctx = new BundleContext { BundleSize = bundleSize, ItemGuid = itemGuid };
        amount = 1;
    }

    // 2. Intercept currency grants from emote — accumulate value, skip item creation.
    //    For non-currency items, track WCID+amount and let the original run.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GiveFromEmote),
        new Type[] { typeof(WorldObject), typeof(uint), typeof(int), typeof(int), typeof(float) })]
    public static bool PreGiveFromEmote(uint weenieClassId, int amount)
    {
        if (_ctx == null) return true;

        if (IsCurrencyWcid(weenieClassId))
        {
            var unitValue = DatabaseManager.World.GetCachedWeenie(weenieClassId)
                ?.GetProperty(PropertyInt.Value) ?? 0;
            _ctx.PyrealsAccumulated += (long)unitValue * amount;
            return false;
        }

        _ctx.ItemsGranted.Add((weenieClassId, amount));
        return true;
    }

    // 3. Track XP granted during the emote window.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP),
        new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PostGrantXP(long amount)
    {
        if (_ctx == null || amount <= 0) return;
        _ctx.XpAccumulated += amount;
    }

    // 4. Consume remaining stack, multiply and grant all tracked rewards, send summary.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionGiveObjectRequest),
        new Type[] { typeof(uint), typeof(uint), typeof(int) })]
    public static void PostHandleActionGiveObjectRequest(Player __instance)
    {
        var ctx = _ctx;
        _ctx = null; // clear before any inventory ops to avoid re-entrancy
        if (ctx == null) return;

        var item = __instance.FindObject(ctx.ItemGuid,
            Player.SearchLocations.MyInventory | Player.SearchLocations.MyEquippedItems,
            out _, out _, out _);

        int toConsume = Math.Min(ctx.BundleSize - 1, item?.StackSize ?? 0);
        if (toConsume > 0 && item != null)
            __instance.TryConsumeFromInventoryWithNetworking(item, toConsume);

        int multiplier = toConsume; // how many extra gives we're crediting

        // Grant multiplied XP directly (tracked amount already has all modifiers applied).
        if (ctx.XpAccumulated > 0 && multiplier > 0)
            __instance.GrantXP(ctx.XpAccumulated * multiplier, XpType.Quest, ShareType.All);

        // Grant multiplied items.
        foreach (var (wcid, amt) in ctx.ItemsGranted)
        {
            var remaining = amt * multiplier;
            while (remaining > 0)
            {
                var wo = WorldObjectFactory.CreateNewWorldObject(wcid);
                if (wo == null) break;
                int maxStack = wo.MaxStackSize ?? 1;
                int take = maxStack > 1 ? Math.Min(remaining, maxStack) : 1;
                if (maxStack > 1) wo.SetStackSize(take);
                __instance.TryCreateInInventoryWithNetworking(wo);
                remaining -= take;
            }
        }

        // Deposit total currency to bank: intercepted 1× + N-1× more.
        long totalPyreals = ctx.PyrealsAccumulated > 0
            ? ctx.PyrealsAccumulated * (multiplier + 1)
            : 0;
        if (totalPyreals > 0)
        {
            var prop = (PropertyInt64)BankProp;
            __instance.SetProperty(prop, (__instance.GetProperty(prop) ?? 0L) + totalPyreals);
        }

        // Combined summary message.
        var sb = new StringBuilder($"[Bundle ×{multiplier + 1}]");
        bool any = false;

        if (ctx.XpAccumulated > 0 && multiplier > 0)
        {
            sb.Append($" +{ctx.XpAccumulated * multiplier:N0} XP");
            any = true;
        }

        foreach (var (wcid, amt) in ctx.ItemsGranted)
        {
            var name = DatabaseManager.World.GetCachedWeenie(wcid)?.GetName() ?? wcid.ToString();
            sb.Append($" | {amt * multiplier}× {name}");
            any = true;
        }

        if (totalPyreals > 0)
        {
            sb.Append($" | {totalPyreals:N0} pyreals → bank");
            any = true;
        }

        if (any)
            __instance.SendMessage(sb.ToString(), ChatMessageType.System);
    }
}

public class BundleGiveSettings
{
    [JsonPropertyName("// BundleSize")]
    public string BundleSizeDoc { get; init; } = "Number of items consumed per bundle turn-in. Player must give at least this many of a stackable WCID to an NPC to trigger bundle behavior.";
    public int BundleSize { get; set; } = 10;
}
