using ACE.Common;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;
using HarmonyLib;
using System.Reflection;

namespace LivingEquipment;

public class PatchClass : BasicPatch<Settings>
{
    public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName)
    {
        try { Settings ??= SettingsContainer.Settings; }
        catch { Settings ??= new Settings(); }
    }

    public override void Start()
    {
        base.Start();
    }

    public override async Task OnWorldOpen()
    {
        try { Settings = SettingsContainer.Settings; }
        catch { Settings ??= new Settings(); }
    }
}

// ==================== Auto-Awaken Academy Weapons on Inventory Add ====================

[HarmonyPatch]
internal static class AcademyAutoAwakenHook
{
    static MethodBase? TargetMethod()
    {
        return AccessTools.Method(typeof(Player), nameof(Player.TryCreateInInventoryWithNetworking), new[] { typeof(WorldObject) });
    }

    static bool Prepare()
    {
        return TargetMethod() != null;
    }

    [HarmonyPostfix]
    public static void Postfix(WorldObject item, bool __result, Player __instance)
    {
        if (!__result || item == null || __instance == null)
            return;

        var s = PatchClass.Settings;
        if (s?.Enabled != true)
            return;

        if (s.AutoAwakenTier1Wcids == null || s.AutoAwakenTier1Wcids.Count == 0)
            return;

        if (!s.AutoAwakenTier1Wcids.Contains(item.WeenieClassId))
            return;

        if (item.GetProperty(LivingEquipmentProperties.IsAwakened) == true)
            return;

        ItemAwakener.TryAutoAwaken(__instance, item, s);
    }
}

// ==================== Use-On-Target Hook ====================

[HarmonyPatch]
internal static class LivingEquipmentUseOnTarget
{
    static IEnumerable<MethodBase> TargetMethods()
    {
        return FindHandleActionUseOnTargetMethods();
    }

    static IEnumerable<MethodBase> FindHandleActionUseOnTargetMethods()
    {
        List<MethodBase> results = new();
        try
        {
            Type[] types = typeof(WorldObject).Assembly.GetTypes();
            foreach (Type type in types)
            {
                if (!typeof(WorldObject).IsAssignableFrom(type))
                    continue;

                MethodInfo[] methods;
                try { methods = type.GetMethods(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic); }
                catch { continue; }

                foreach (MethodInfo method in methods)
                {
                    if (method.IsAbstract || method.GetMethodBody() == null)
                        continue;
                    if (!string.Equals(method.Name, "HandleActionUseOnTarget", StringComparison.Ordinal))
                        continue;

                    ParameterInfo[] parameters = method.GetParameters();
                    if (parameters.Length < 2)
                        continue;

                    bool hasPlayer = false, hasWorldObject = false;
                    foreach (ParameterInfo p in parameters)
                    {
                        Type pt = p.ParameterType.IsByRef ? p.ParameterType.GetElementType() ?? p.ParameterType : p.ParameterType;
                        if (pt.IsAssignableFrom(typeof(Player)) || typeof(Player).IsAssignableFrom(pt)) hasPlayer = true;
                        if (typeof(WorldObject).IsAssignableFrom(pt)) hasWorldObject = true;
                    }

                    if (hasPlayer && hasWorldObject)
                        results.Add(method);
                }
            }
        }
        catch { }
        return results.Distinct();
    }

    [HarmonyPrefix]
    public static bool Prefix(WorldObject __instance, object[] __args)
    {
        Settings? s = PatchClass.Settings;
        if (s == null || !s.Enabled)
            return true;

        if (__instance == null || __args == null || __args.Length == 0)
            return true;

        Player? player = null;
        WorldObject? target = null;

        foreach (object? arg in __args)
        {
            if (arg is Player p && player == null) player = p;
            else if (arg is WorldObject wo && wo != __instance && target == null) target = wo;
        }

        if (player == null || target == null)
            return true;

        // Check for Coalesced Mana ↔ Equipment interaction (both directions)
        WorldObject? mana = null;
        WorldObject? item = null;

        if (ItemAwakener.IsCoalescedMana(__instance, s) && ItemAwakener.IsEquippableGear(target))
        {
            mana = __instance;
            item = target;
        }
        else if (ItemAwakener.IsCoalescedMana(target, s) && ItemAwakener.IsEquippableGear(__instance))
        {
            mana = target;
            item = __instance;
        }

        if (mana == null || item == null)
            return true;

        // Validate Arcane Lore exists (purely cosmetic channeling msg)
        var arcaneLore = player.GetCreatureSkill(Skill.ArcaneLore);
        if (arcaneLore == null)
        {
            player.SendUseDoneEvent();
            return false;
        }

        // Cosmetic skill check + clap motion (sync so cursor clears immediately)
        var skillChance = SkillCheck.GetSkillChance((int)arcaneLore.Current, s.ArcaneLoreDifficulty);
        if (ThreadSafeRandom.Next(0.0f, 1.0f) > skillChance)
        {
            player.SendTransientError("You fail to channel the coalesced mana.");
            player.SendUseDoneEvent();
            return false;
        }

        // Broadcast combining motion synchronously — client plays it independently
        player.EnqueueBroadcastMotion(new Motion(player, MotionCommand.ClapHands));

        // Attempt awakening/upgrade
        if (ItemAwakener.TryAwakenOrUpgrade(player, item, mana, s))
        {
            if (mana.StackSize > 1)
            {
                mana.StackSize -= 1;
                player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt(mana, PropertyInt.StackSize, mana.StackSize.Value));
            }
            else
            {
                player.TryRemoveFromInventoryWithNetworking(mana.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);
                player.Session.Network.EnqueueSend(new GameMessageDeleteObject(mana));
            }
        }

        player.SendUseDoneEvent();
        return false;
    }
}

// ==================== Item XP Curve Context ====================

internal static class LivingItemXpContext
{
    [ThreadStatic]
    private static Stack<WorldObject>? _stack;

    internal static void Enter(WorldObject item)
    {
        _stack ??= new Stack<WorldObject>();
        _stack.Push(item);
    }

    internal static void Leave()
    {
        _stack?.Pop();
    }

    internal static WorldObject? Current => _stack != null && _stack.Count > 0 ? _stack.Peek() : null;
}

[HarmonyPatch]
internal static class LivingItemXpCurveContextPatches
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.AddItemXP), typeof(long))]
    public static void PreAddItemXP(WorldObject __instance)
    {
        LivingItemXpContext.Enter(__instance);
    }

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.AddItemXP), typeof(long))]
    public static void FinalAddItemXP()
    {
        LivingItemXpContext.Leave();
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.ItemLevel), MethodType.Getter)]
    public static void PreItemLevelGetter(WorldObject __instance)
    {
        LivingItemXpContext.Enter(__instance);
    }

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.ItemLevel), MethodType.Getter)]
    public static void FinalItemLevelGetter()
    {
        LivingItemXpContext.Leave();
    }
}

// ==================== ExperienceSystem Custom Curves ====================

[HarmonyPatch]
internal static class LivingEquipmentXpCurve
{
    [HarmonyPrefix]
    [HarmonyPriority(Priority.First)]
    [HarmonyPatch(typeof(ExperienceSystem), nameof(ExperienceSystem.ItemTotalXPToLevel))]
    public static bool PrefixItemTotalXPToLevel(ulong gainedXP, ulong baseXP, int maxLevel, ItemXpStyle xpScheme, ref int __result)
    {
        if (xpScheme != ItemXpStyle.ScalesWithLevel)
            return true;

        WorldObject? item = LivingItemXpContext.Current;
        if (item == null || item.GetProperty(LivingEquipmentProperties.IsAwakened) != true)
            return true;

        var profileName = item.GetProperty(LivingEquipmentProperties.ProfileName);
        if (string.IsNullOrEmpty(profileName))
            return true;

        var settings = PatchClass.Settings;
        var profile = settings?.XpProfiles.FirstOrDefault(p => p.Name == profileName);
        if (profile == null)
            return true;

        __result = ComputeLevelFromTotalXp((long)gainedXP, profile.ItemBaseXp, maxLevel);
        return false;
    }

    [HarmonyPrefix]
    [HarmonyPriority(Priority.First)]
    [HarmonyPatch(typeof(ExperienceSystem), nameof(ExperienceSystem.ItemLevelToTotalXP))]
    public static bool PrefixItemLevelToTotalXP(int itemLevel, ulong baseXP, int maxLevel, ItemXpStyle xpScheme, ref ulong __result)
    {
        if (xpScheme != ItemXpStyle.ScalesWithLevel)
            return true;

        WorldObject? item = LivingItemXpContext.Current;
        if (item == null || item.GetProperty(LivingEquipmentProperties.IsAwakened) != true)
            return true;

        var profileName = item.GetProperty(LivingEquipmentProperties.ProfileName);
        if (string.IsNullOrEmpty(profileName))
            return true;

        var settings = PatchClass.Settings;
        var profile = settings?.XpProfiles.FirstOrDefault(p => p.Name == profileName);
        if (profile == null)
            return true;

        __result = ComputeTotalXpForLevel(itemLevel, profile.ItemBaseXp, maxLevel);
        return false;
    }

    private static int ComputeLevelFromTotalXp(long totalXp, long baseXp, int maxLevel)
    {
        if (totalXp <= 0 || baseXp <= 0)
            return 0;

        long accumulated = 0;
        for (int level = 1; level <= maxLevel; level++)
        {
            long levelCost = baseXp;
            // QuickStart / Casual: lower multiplier = faster early levels
            // Brutal: higher multiplier = slower
            double multiplier = 1.0 + (level / 15.0); // Gradual increase
            levelCost = (long)(levelCost * multiplier);
            accumulated += levelCost;
            if (accumulated > totalXp)
                return level - 1;
        }
        return maxLevel;
    }

    private static ulong ComputeTotalXpForLevel(int targetLevel, long baseXp, int maxLevel)
    {
        if (targetLevel <= 0 || baseXp <= 0)
            return 0;

        long accumulated = 0;
        for (int level = 1; level <= targetLevel && level <= maxLevel; level++)
        {
            long levelCost = baseXp;
            double multiplier = 1.0 + (level / 15.0);
            levelCost = (long)(levelCost * multiplier);
            accumulated += levelCost;
        }
        return (ulong)accumulated;
    }
}
