using ACE.Common;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;
using HarmonyLib;
using System.Reflection;

namespace EmpyreanAlteration;

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

        AwakenedItemAwakener.TryAutoAwaken(__instance, item);
    }
}

// ==================== Use-On-Target Hook (Coalesced Mana ↔ Equipment) ====================

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
        var s = PatchClass.Settings;
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

        if (AwakenedItemAwakener.IsCoalescedMana(__instance, s) && ItemLevelingEligibility.IsEquippableGearShape(target))
        {
            mana = __instance;
            item = target;
        }
        else if (AwakenedItemAwakener.IsCoalescedMana(target, s) && ItemLevelingEligibility.IsEquippableGearShape(__instance))
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
        if (AwakenedItemAwakener.TryAwakenOrUpgrade(player, item, mana))
        {
            if (mana.StackSize > 1)
            {
                mana.StackSize -= 1;
                // Send directly to player session (inventory item — broadcast can confuse client)
                player.Session.Network.EnqueueSend(new GameMessagePublicUpdatePropertyInt(mana, PropertyInt.StackSize, mana.StackSize.Value));
            }
            else
            {
                // Let ACE handle inventory removal + networking — do NOT send manual DeleteObject
                player.TryRemoveFromInventoryWithNetworking(mana.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);
            }
        }

        player.SendUseDoneEvent();
        return false;
    }
}
