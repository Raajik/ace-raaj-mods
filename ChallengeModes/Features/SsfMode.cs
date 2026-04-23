using ACE.Database.Models.World;
using AceRaajMods.Shared;
using static ACE.Server.WorldObjects.Player;

namespace ChallengeModes.Features;
[HarmonyPatchCategory(nameof(SsfMode))]
public static class SsfMode
{
    static Dictionary<string, Position>? _cachedLocations;

    internal static void ClearPoiCache()
    {
        _cachedLocations = null;
    }

    public static void ListOnlineSsfPlayers(Player viewer)
    {
        if (_cachedLocations is null)
        {
            DatabaseManager.World.CacheAllPointsOfInterest();
            _cachedLocations = new Dictionary<string, Position>();
            foreach (var kv in DatabaseManager.World.GetPointsOfInterestCache())
            {
                var weenie = DatabaseManager.World.GetCachedWeenie(kv.Value.WeenieClassId);
                if (weenie is null)
                    continue;

                var pos = new Position(weenie.GetPosition(PositionType.Destination));
                WorldObject.AdjustDungeon(pos);
                _cachedLocations[kv.Key] = pos;
            }
        }

        if (_cachedLocations.Count == 0)
        {
            viewer.SendMessage("No points of interest are loaded; cannot list distances for SSF players.");
            return;
        }

        var query = PlayerManager.GetAllOnline().Where(x => x.GetProperty(FakeBool.Ironman) == true);
        var sb = new StringBuilder($"\nSSF players ({query.Count()}):");
        foreach (var player in query.OrderByDescending(x => x.Level))
        {
            var playerPos = player.GetPosition(PositionType.Location);
            var nearest = _cachedLocations.OrderBy(x => x.Value.SquaredDistanceTo(playerPos)).FirstOrDefault();
            if (nearest.Key is null)
                sb.Append($"\n{player.Name} ({player.Level})\n  (no nearest POI)");
            else
            {
                var dist = nearest.Value.Distance2D(playerPos);
                sb.Append($"\n{player.Name} ({player.Level})\n{dist,10:0.00} from {nearest.Key}");
            }
        }

        viewer.SendMessage(sb.ToString());
    }

    [ThreadStatic]
    static bool _ssfRecipeShouldTagResult;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.HandleRecipe), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(double) })]
    public static void PreHandleRecipeSsfItemTag(Player player, WorldObject source, WorldObject target, Recipe recipe, double successChance)
    {
        _ssfRecipeShouldTagResult = false;
        if (player is null || player.GetProperty(FakeBool.Ironman) != true || target is null)
            return;

        bool sourceTagged = source is not null && source.GetProperty(FakeBool.Ironman) == true;
        bool targetTagged = target.GetProperty(FakeBool.Ironman) == true;
        if (sourceTagged || targetTagged)
            _ssfRecipeShouldTagResult = true;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.HandleRecipe), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(double) })]
    public static void PostHandleRecipeSsfItemTag(Player player, WorldObject source, WorldObject target, Recipe recipe, double successChance)
    {
        try
        {
            if (!_ssfRecipeShouldTagResult)
                return;
            if (player is null || player.GetProperty(FakeBool.Ironman) != true || target is null)
                return;
            target.SetProperty(FakeBool.Ironman, true);
        }
        finally
        {
            _ssfRecipeShouldTagResult = false;
        }
    }

    public static bool TryAdminClearSsf(Session adminSession, string targetNameFragment)
    {
        if (adminSession?.Player is not Player admin)
            return false;

        if (string.IsNullOrWhiteSpace(targetNameFragment))
        {
            admin.SendMessage("Usage: /cm admin ssf clear <player name fragment>");
            return true;
        }

        var fragment = targetNameFragment.Trim();
        var matches = PlayerManager.GetAllOnline()
            .Where(p => p.Name.Contains(fragment, StringComparison.OrdinalIgnoreCase))
            .ToList();

        if (matches.Count == 0)
        {
            admin.SendMessage($"No online player name contains '{fragment}'.");
            return true;
        }

        if (matches.Count > 1)
        {
            admin.SendMessage($"Ambiguous name '{fragment}'. Matches: {string.Join(", ", matches.Select(m => m.Name))}");
            return true;
        }

        var target = matches[0];
        target.SetProperty(FakeBool.Ironman, false);
        target.SetProperty(FakeBool.Hardcore, false);
        target.RadarColor = RadarColor.Default;
        target.SendMessage("An admin removed your SSF/hardcore flags.");
        admin.SendMessage($"Cleared SSF and hardcore on {target.Name}.");
        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.TryCreateForGive), new Type[] { typeof(WorldObject), typeof(WorldObject) })]
    public static bool PreTryCreateForGive(WorldObject giver, WorldObject itemBeingGiven, ref Player __instance, ref bool __result)
    {
        if (__instance is null || itemBeingGiven is null)
            return true;

        bool isReceiverSsf = __instance.GetProperty(FakeBool.Ironman) == true;
        bool isGiverSsf = giver?.GetProperty(FakeBool.Ironman) == true;

        if (isReceiverSsf)
        {
            itemBeingGiven.SetProperty(FakeBool.Ironman, true);
            __instance.SendMessage($"{itemBeingGiven.Name} is now SSF-tagged.");
        }

        bool receiverIsPlayer = __instance is Player;
        bool giverIsPlayer = giver is Player;

        if (isReceiverSsf && giverIsPlayer)
        {
            __instance.SendMessage("SSF players cannot receive items from other players.");
            __result = false;
            return false;
        }

        if (isGiverSsf && receiverIsPlayer)
        {
            __instance.SendMessage("SSF players cannot give items to other players.");
            __result = false;
            return false;
        }

        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.TryCreateInInventoryWithNetworking), new Type[] { typeof(WorldObject), typeof(Container) }, new ArgumentType[] { ArgumentType.Normal, ArgumentType.Out })]
    public static bool PreTryCreateInInventoryWithNetworking(WorldObject item, Container container, ref Player __instance, ref bool __result)
    {
        if (__instance is null || __instance.GetProperty(FakeBool.Ironman) != true)
            return true;

        if (SsfAutolootPickupContext.IsAutolootPickup)
        {
            if (item.GetProperty(FakeBool.Ironman) != true)
                item.SetProperty(FakeBool.Ironman, true);
        }

        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionOpenTradeNegotiations), new Type[] { typeof(uint), typeof(bool) })]
    public static bool PreHandleActionOpenTradeNegotiations(uint tradePartnerGuid, bool initiator, ref Player __instance)
    {
        if (__instance is null)
            return true;

        if (__instance.GetProperty(FakeBool.Ironman) == true)
        {
            __instance.SendMessage("SSF players cannot trade.");
            return false;
        }

        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionAddToTrade), new Type[] { typeof(uint), typeof(uint) })]
    public static bool PreHandleActionAddToTrade(uint itemGuid, uint tradeWindowSlotNumber, ref Player __instance)
    {
        if (__instance is null)
            return true;

        if (__instance.GetProperty(FakeBool.Ironman) == true)
        {
            __instance.SendMessage("SSF players cannot trade.");
            return false;
        }

        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionAcceptTrade))]
    public static bool PreHandleActionAcceptTrade(ref Player __instance)
    {
        if (__instance is null)
            return true;

        if (__instance.GetProperty(FakeBool.Ironman) == true)
        {
            __instance.SendMessage("SSF players cannot trade.");
            return false;
        }

        return true;
    }

    // Drop blocking disabled - was causing lockups. Need to find different approach.
    // [HarmonyPrefix]
    // [HarmonyPatch(typeof(Player), nameof(Player.HandleActionDropItem), new Type[] { typeof(uint) })]
    // public static bool PreHandleActionDropItem(uint itemGuid, ref Player __instance)
    // {
    //     if (__instance is null)
    //         return true;
    //
    //     if (__instance.GetProperty(FakeBool.Ironman) == true)
    //     {
    //         __instance.SendMessage("SSF players cannot drop items. Sell them or give to a town crier or garbage barrel.");
    //         return false;
    //     }
    //
    //     return true;
    // }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.FinalizeBuyTransaction), new Type[] { typeof(Vendor), typeof(List<WorldObject>), typeof(List<WorldObject>), typeof(uint) })]
    public static void PreFinalizeBuyTransaction(Vendor vendor, List<WorldObject> genericItems, List<WorldObject> uniqueItems, uint cost, ref Player __instance)
    {
        if (__instance is null || __instance.GetProperty(FakeBool.Ironman) != true)
            return;

        foreach (var item in genericItems)
        {
            item.SetProperty(FakeBool.Ironman, true);
            __instance.SendMessage($"{item.Name} is now SSF-tagged.");
        }

        foreach (var item in uniqueItems)
        {
            item.SetProperty(FakeBool.Ironman, true);
            __instance.SendMessage($"{item.Name} is now SSF-tagged.");
        }
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Chest), nameof(Chest.Unlock), new Type[] { typeof(uint), typeof(uint), typeof(int) }, new ArgumentType[] { ArgumentType.Normal, ArgumentType.Normal, ArgumentType.Ref })]
    public static void PostUnlock(uint unlockerGuid, uint playerLockpickSkillLvl, int difficulty, ref Chest __instance, ref UnlockResults __result)
        => HandleClaimChest(unlockerGuid, __instance, __result);

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Chest), nameof(Chest.Unlock), new Type[] { typeof(uint), typeof(Key), typeof(string) })]
    public static void PostUnlock(uint unlockerGuid, Key key, string keyCode, ref Chest __instance, ref UnlockResults __result)
        => HandleClaimChest(unlockerGuid, __instance, __result);

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Chest), nameof(Chest.Reset), new Type[] { typeof(double?) })]
    public static void PostReset(double? resetTimestamp, ref Chest __instance)
        => __instance.RemoveProperty(FakeBool.Ironman);

    public static void HandleClaimChest(uint unlockerGuid, Chest container, UnlockResults result)
    {
        if (result != UnlockResults.UnlockSuccess)
            return;

        if (PlayerManager.GetOnlinePlayer(unlockerGuid) is not Player player || player.GetProperty(FakeBool.Ironman) != true)
            return;

        ClaimContainer(container, player);
    }

    public static void ClaimContainer(Container container, Player player)
    {
        foreach (var item in container.Inventory.Values)
            item.SetProperty(FakeBool.Ironman, true);

        var sb = new StringBuilder($"\n{player.Name} is claiming {container.Name}");
        foreach (var item in container.Inventory.Values)
            sb.Append($"\n  {item.Name}");

        player.SendMessage(sb.ToString());
    }
}
