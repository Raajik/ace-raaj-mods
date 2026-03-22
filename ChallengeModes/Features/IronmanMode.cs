namespace ChallengeModes.Features;

[CommandCategory(nameof(IronmanMode))]
[HarmonyPatchCategory(nameof(IronmanMode))]
public static class IronmanMode
{
    static Dictionary<string, Position>? _cachedLocations;

    [CommandHandler("iron", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0)]
    public static void HandleIronman(Session session, params string[] parameters)
    {
        var player = session.Player;

        if (player is null)
            return;

        if (player.GetProperty(FakeBool.Ironman) == true)
        {
            player.SendMessage($"You are already an Ironman.");
            return;
        }

        var settings = PatchClass.Settings;
        if (settings == null)
            return;

        player.SetProperty(FakeInt.HardcoreLives, settings.HardcoreStartingLives);
        player.SetProperty(FakeFloat.TimestampLastPlayerDeath, Time.GetUnixTime());
        player.SetProperty(FakeBool.Ironman, true);
        player.SetProperty(FakeBool.Hardcore, true);
        player.RadarColor = RadarColor.Sentinel;
        player.SendMessage($"You're now participating in Ironman. Stay safe!" +
            $"\nLives cap (starting pool): {settings.HardcoreStartingLives}; at least {settings.HardcoreSecondsBetweenDeathAllowed}s between deaths for life loss.");
    }

    [CommandHandler("ironmen", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0)]
    public static void HandleIronmen(Session session, params string[] parameters)
    {
        var p = session.Player;
        if (p is null)
            return;

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
            p.SendMessage("No points of interest are loaded; cannot list distances for ironmen.");
            return;
        }

        var query = PlayerManager.GetAllOnline().Where(x => x.GetProperty(FakeBool.Ironman) == true);
        var sb = new StringBuilder($"\nIronmen ({query.Count()}):");
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

        p.SendMessage(sb.ToString());
    }

    [CommandHandler("uniron", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 0)]
    public static void HandleUnIronman(Session session, params string[] parameters)
    {
        var player = session.Player;

        if (player is null)
            return;

        player.SetProperty(FakeBool.Ironman, false);
        player.SetProperty(FakeBool.Hardcore, false);
        player.RadarColor = RadarColor.Default;
        player.SendMessage("You're no longer participating in Ironman");
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.TryCreateForGive), new Type[] { typeof(WorldObject), typeof(WorldObject) })]
    public static void PreTryCreateForGive(WorldObject giver, WorldObject itemBeingGiven, ref Player __instance, ref bool __result)
    {
        if (__instance is null || itemBeingGiven is null)
            return;

        if (__instance.GetProperty(FakeBool.Ironman) == true)
            itemBeingGiven.SetProperty(FakeBool.Ironman, true);

        __instance.SendMessage($"{itemBeingGiven.Name} now Ironman");
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.FinalizeBuyTransaction), new Type[] { typeof(Vendor), typeof(List<WorldObject>), typeof(List<WorldObject>), typeof(uint) })]
    public static void PreFinalizeBuyTransaction(Vendor vendor, List<WorldObject> genericItems, List<WorldObject> uniqueItems, uint cost, ref Player __instance)
    {
        if (__instance is null || __instance.GetProperty(FakeBool.Ironman) != true)
            return;

        foreach (var item in genericItems)
        {
            item.SetProperty(FakeBool.Ironman, true);
            __instance.SendMessage($"{item.Name} now Ironman");
        }

        foreach (var item in uniqueItems)
        {
            item.SetProperty(FakeBool.Ironman, true);
            __instance.SendMessage($"{item.Name} now Ironman");
        }
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.TryCreateInInventoryWithNetworking), new Type[] { typeof(WorldObject), typeof(Container) }, new ArgumentType[] { ArgumentType.Normal, ArgumentType.Out })]
    public static bool PreTryCreateInInventoryWithNetworking(WorldObject item, Container container, ref Player __instance, ref bool __result)
    {
        if (__instance is null || __instance.GetProperty(FakeBool.Ironman) != true)
            return true;

        if (item.GetProperty(FakeBool.Ironman) != true)
        {
            __result = false;
            __instance.SendMessage($"{item.Name} cannot be picked up: Ironman characters may only pick up Ironman-tagged items.");
            return false;
        }

        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.CreateEnchantment), new Type[] { typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(Spell), typeof(bool), typeof(bool), typeof(bool) })]
    public static bool PreCreateEnchantment(WorldObject target, WorldObject caster, WorldObject weapon, Spell spell, bool equip, bool fromProc, bool isWeaponSpell, ref WorldObject __instance)
    {
        if (caster is null)
            return true;

        if (target is Player player && player.GetProperty(FakeBool.Ironman) == true && caster.GetProperty(FakeBool.Ironman) != true)
        {
            player.SendMessage($"{caster.Name} failed to cast {spell.Name ?? ""} on you.  They are too fleshy for your thaums.");

            if (caster is Player p)
                p.SendMessage($"Failed to cast {spell.Name ?? ""} on {player.Name}, they lack culture and refinement.");

            return false;
        }

        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.IsPledgable), new Type[] { typeof(Player) })]
    public static bool PreIsPledgable(Player target, ref Player __instance, ref bool __result)
    {
        if (__instance is null || target is null)
            return true;

        if (target.GetProperty(FakeBool.Ironman) == true && __instance.GetProperty(FakeBool.Ironman) != true)
        {
            __instance.SendMessage($"You can't swear to {target.Name}, you may as well be different species.");
            __instance.Session?.Network.EnqueueSend(new GameEventWeenieError(__instance.Session, WeenieError.OlthoiCannotJoinAllegiance));
            __result = false;
            return false;
        }

        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.FellowshipRecruit), new Type[] { typeof(Player) })]
    public static bool PreFellowshipRecruit(Player newPlayer, ref Player __instance)
    {
        if (__instance is null || newPlayer is null)
            return true;

        if (newPlayer.GetProperty(FakeBool.Ironman) == true && __instance.GetProperty(FakeBool.Ironman) != true)
        {
            __instance.SendMessage($"You can't recruit {newPlayer.Name}, you may as well be different species.");
            __instance.Session?.Network.EnqueueSend(new GameEventWeenieError(__instance.Session, WeenieError.FellowshipIllegalLevel));
            return false;
        }

        return true;
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
