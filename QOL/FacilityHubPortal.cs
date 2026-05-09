using System.Reflection;
using ACE.Entity;
using ACE.Server.Command;

#if REALM
using ACE.Entity.Enum.RealmProperties;
using ACE.Server.Realms;
#endif

namespace QOL;

// Facility Hub Portal Gem (WCID 49563): count successful portal summons for AchievementUnlocked "FacilityFrequenter"
// and expose /fac recall once unlocked. Reflection bridge avoids a project reference to AchievementUnlocked.
internal static class FacilityHubPortal
{
    public const uint FacilityPortalGemWcid = 49563;
    public const string FacilityFrequenterAchievementId = "FacilityFrequenter";

    [ThreadStatic]
    static Player? _facilityGemUser;

    static Action<Player, string, int>? _incrementProgress;
    static Func<Player, string, bool>? _hasAchievement;

    internal static void ApplyHarmony(Harmony harmony)
    {
        try
        {
            MethodInfo? useGem = AccessTools.Method(typeof(Gem), nameof(Gem.UseGem), new[] { typeof(Player) });
            MethodInfo? preUseGem = AccessTools.Method(typeof(FacilityHubPortal), nameof(PreGemUseGem));
            MethodInfo? postUseGem = AccessTools.Method(typeof(FacilityHubPortal), nameof(PostGemUseGem));
            if (useGem != null && preUseGem != null && postUseGem != null)
            {
                harmony.Patch(useGem, prefix: new HarmonyMethod(preUseGem), postfix: new HarmonyMethod(postUseGem));
                ModManager.Log("[QOL] Facility hub: Gem.UseGem prefix/postfix applied (49563 achievement hook).", ModManager.LogLevel.Info);
            }
            else
                ModManager.Log("[QOL] Facility hub: Gem.UseGem not found; achievement hook skipped.", ModManager.LogLevel.Warn);

#if REALM
            MethodInfo? summon = AccessTools.Method(typeof(WorldObject), "SummonPortal",
                new[] { typeof(uint), typeof(InstancedPosition), typeof(double), typeof(WorldObject), typeof(Player) });
            MethodInfo? postSummon = AccessTools.Method(typeof(FacilityHubPortal), nameof(PostSummonPortalFacilityGemRealm));
#else
            MethodInfo? summon = AccessTools.Method(typeof(WorldObject), "SummonPortal",
                new[] { typeof(uint), typeof(Position), typeof(double), typeof(WorldObject), typeof(Player) });
            MethodInfo? postSummon = AccessTools.Method(typeof(FacilityHubPortal), nameof(PostSummonPortalFacilityGemVanilla));
#endif
            if (summon != null && postSummon != null)
            {
                harmony.Patch(summon, postfix: new HarmonyMethod(postSummon));
                ModManager.Log("[QOL] Facility hub: WorldObject.SummonPortal postfix applied.", ModManager.LogLevel.Info);
            }
            else
                ModManager.Log("[QOL] Facility hub: WorldObject.SummonPortal not found; achievement hook incomplete.", ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL] Facility hub Harmony patches failed: {ex.Message}", ModManager.LogLevel.Error);
        }
    }

    public static void PreGemUseGem(Gem __instance, Player player)
    {
        if (__instance?.WeenieClassId == FacilityPortalGemWcid && player != null)
            _facilityGemUser = player;
    }

    public static void PostGemUseGem(Gem __instance, Player player)
    {
        _facilityGemUser = null;
    }

#if REALM
    public static void PostSummonPortalFacilityGemRealm(bool __result, uint portalId, InstancedPosition location, double portalLifetime, WorldObject source, Player summoner)
    {
        PostSummonPortalFacilityGemCore(__result, source, summoner);
    }
#else
    public static void PostSummonPortalFacilityGemVanilla(bool __result, uint portalId, Position location, double portalLifetime, WorldObject source, Player summoner)
    {
        PostSummonPortalFacilityGemCore(__result, source, summoner);
    }
#endif

    static void PostSummonPortalFacilityGemCore(bool __result, WorldObject source, Player summoner)
    {
        if (!__result || summoner == null)
            return;

        if (!ReferenceEquals(_facilityGemUser, summoner))
            return;

        if (source is not Player)
            return;

        EnsureAchievementBridge();
        _incrementProgress?.Invoke(summoner, FacilityFrequenterAchievementId, 1);
    }

    static void EnsureAchievementBridge()
    {
        if (_incrementProgress != null && _hasAchievement != null)
            return;

        Assembly? asm = AppDomain.CurrentDomain.GetAssemblies().FirstOrDefault(a => string.Equals(a.GetName().Name, "AchievementUnlocked", StringComparison.OrdinalIgnoreCase));
        if (asm is null)
            return;

        Type? type = asm.GetType("AchievementUnlocked.AchievementManager");
        if (type is null)
            return;

        MethodInfo? inc = type.GetMethod("IncrementProgress", new[] { typeof(Player), typeof(string), typeof(int) });
        MethodInfo? has = type.GetMethod("HasAchievement", new[] { typeof(Player), typeof(string) });

        if (inc is not null)
            _incrementProgress = (Action<Player, string, int>)Delegate.CreateDelegate(typeof(Action<Player, string, int>), inc);
        if (has is not null)
            _hasAchievement = (Func<Player, string, bool>)Delegate.CreateDelegate(typeof(Func<Player, string, bool>), has);
    }

    public static bool HasFacilityFrequenter(Player player)
    {
        if (player == null)
            return false;
        EnsureAchievementBridge();
        return _hasAchievement?.Invoke(player, FacilityFrequenterAchievementId) == true;
    }

    // Set from PatchClass Start / OnWorldOpen so /fac and fallback read current Settings.json without a SettingsContainer instance here.
    internal static Settings? CachedSettings;

    static Settings GetQolSettings()
    {
        return CachedSettings ?? new Settings();
    }

#if REALM
    public static bool TryGetFacilityHubTeleportDestination(Player player, out InstancedPosition destination)
    {
        destination = default!;
        if (player == null)
            return false;

        var gemWeenie = DatabaseManager.World.GetCachedWeenie(FacilityPortalGemWcid);
        if (gemWeenie is null)
            return false;

        WorldObject? gemWo = null;
        WorldObject? portalWo = null;
        try
        {
            gemWo = WorldObjectFactory.CreateNewWorldObject(gemWeenie);
            if (gemWo is not Gem)
                return false;

            uint link = gemWo.GetProperty(PropertyDataId.LinkedPortalOne) ?? 0;
            if (link == 0)
                return false;

            var portalWeenie = DatabaseManager.World.GetCachedWeenie(link);
            if (portalWeenie is null)
                return false;

            portalWo = WorldObjectFactory.CreateNewWorldObject(portalWeenie);
            if (portalWo is not Portal portal || portal.Destination is null)
                return false;

            PlayerInstanceSelectMode instMode = player.RealmRuleset?.PortalInstanceSelectMode ?? PlayerInstanceSelectMode.Same;
            destination = portal.Destination.AsInstancedPosition(player, instMode);
            return true;
        }
        finally
        {
            gemWo?.Destroy();
            portalWo?.Destroy();
        }
    }
#else
    public static bool TryGetFacilityHubTeleportDestination(Player player, out Position destination)
    {
        destination = default!;
        if (player == null)
            return false;

        // When explicit fallback coordinates are configured (FallbackCell != 0), prefer them
        // over portal weenie resolution — the portal's Destination in the DB may be stale or
        // point to the wrong cell even when the gem/portal weenie itself exists.
        if (GetQolSettings().FacilityHub.FallbackCell != 0)
            return TryGetFacilityHubFallback(out destination);

        var gemWeenie = DatabaseManager.World.GetCachedWeenie(FacilityPortalGemWcid);
        if (gemWeenie is null)
            return false;

        WorldObject? gemWo = null;
        WorldObject? portalWo = null;
        try
        {
            gemWo = WorldObjectFactory.CreateNewWorldObject(gemWeenie);
            if (gemWo is not Gem)
                return false;

            uint link = gemWo.GetProperty(PropertyDataId.LinkedPortalOne) ?? 0;
            if (link == 0)
                return false;

            var portalWeenie = DatabaseManager.World.GetCachedWeenie(link);
            if (portalWeenie is null)
                return false;

            portalWo = WorldObjectFactory.CreateNewWorldObject(portalWeenie);
            if (portalWo is not Portal portal)
                return false;

            var destProp = typeof(Portal).GetProperty("Destination", BindingFlags.Public | BindingFlags.Instance);
            object? rawDest = destProp?.GetValue(portal);
            if (rawDest is Position p)
            {
                destination = new Position(p);
                return true;
            }

            return false;
        }
        finally
        {
            gemWo?.Destroy();
            portalWo?.Destroy();
        }
    }

    static bool TryGetFacilityHubFallback(out Position destination)
    {
        FacilityHubSettings fb = GetQolSettings().FacilityHub;
        destination = new Position(fb.FallbackCell, fb.FallbackOriginX, fb.FallbackOriginY, fb.FallbackOriginZ,
            fb.FallbackRotationW, fb.FallbackRotationX, fb.FallbackRotationY, fb.FallbackRotationZ);
        return fb.FallbackCell != 0;
    }
#endif
}

[CommandCategory(nameof(Features.FacilityHub))]
internal static class FacilityHubCommands
{
    [CommandHandler("fac", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0,
        "Teleport to the Facility Hub if you have unlocked the Facility Frequenter achievement (10 successful Facility Hub Portal Gem uses).")]
    public static void HandleFac(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (player.IsBusy || player.Teleporting || player.suicideInProgress)
        {
            player.SendTransientError("You are too busy to recall right now.");
            return;
        }

        if (!FacilityHubPortal.HasFacilityFrequenter(player))
        {
            player.SendMessage("You are not yet attuned to the Facility Hub. Use the Facility Hub Portal Gem successfully more times. (Unlocks the Facility Frequenter achievement at 10 uses.)");
            return;
        }

#if REALM
        if (!FacilityHubPortal.TryGetFacilityHubTeleportDestination(player, out InstancedPosition dest))
        {
            player.SendMessage("The Facility Hub destination could not be resolved from portal data. Ask an admin to verify weenie 49563 and its linked portal in the world database.");
            return;
        }

        player.Teleport(dest);
#else
        if (!FacilityHubPortal.TryGetFacilityHubTeleportDestination(player, out Position dest))
        {
            player.SendMessage("The Facility Hub destination could not be resolved. Configure QOL Settings FacilityHub fallback (FallbackCell) or verify weenie 49563 and its linked portal in the world database.");
            return;
        }

        player.Teleport(dest);
#endif
        player.SendMessage("You recall to the Facility Hub.");
    }
}
