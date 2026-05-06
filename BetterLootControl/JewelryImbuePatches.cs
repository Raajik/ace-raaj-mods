using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace BetterLootControl;

[HarmonyPatch]
public static class JewelryImbuePatches
{
    /// <summary>
    /// Check if wielder has an imbue effect on ANY equipped item (weapon, armor, jewelry)
    /// </summary>
    public static bool HasImbuedEffectEquipped(Creature wielder, ImbuedEffectType effect)
    {
        if (wielder?.EquippedObjects == null)
            return false;

        return wielder.EquippedObjects.Values.Any(item => item.HasImbuedEffect(effect));
    }

    // =====================================================================
    // Critical Strike - Patch to check all equipped items
    // =====================================================================

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.GetWeaponCriticalChance), 
        typeof(WorldObject), typeof(Creature), typeof(CreatureSkill), typeof(Creature))]
    public static void PostGetWeaponCriticalChance(WorldObject weapon, Creature wielder, CreatureSkill skill, Creature target, ref float __result)
    {
        try
        {
            // If weapon already has CriticalStrike, bonus is already applied
            if (weapon?.HasImbuedEffect(ImbuedEffectType.CriticalStrike) == true)
                return;

            // Check if wielder has CriticalStrike on any equipped item (jewelry, armor, etc.)
            if (wielder != null && HasImbuedEffectEquipped(wielder, ImbuedEffectType.CriticalStrike))
            {
                var criticalStrikeBonus = WorldObject.GetCriticalStrikeMod(skill);
                __result = Math.Max(__result, criticalStrikeBonus);
            }
        }
        catch { /* Silent fail */ }
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.GetWeaponMagicCritFrequency),
        typeof(WorldObject), typeof(Creature), typeof(CreatureSkill), typeof(Creature))]
    public static void PostGetWeaponMagicCritFrequency(WorldObject weapon, Creature wielder, CreatureSkill skill, Creature target, ref float __result)
    {
        try
        {
            // If weapon already has CriticalStrike, bonus is already applied
            if (weapon?.HasImbuedEffect(ImbuedEffectType.CriticalStrike) == true)
                return;

            // Check if wielder has CriticalStrike on any equipped item (jewelry, armor, etc.)
            if (wielder != null && HasImbuedEffectEquipped(wielder, ImbuedEffectType.CriticalStrike))
            {
                var isPvP = wielder is Player && target is Player;
                var criticalStrikeMod = WorldObject.GetCriticalStrikeMod(skill, isPvP);
                __result = Math.Max(__result, criticalStrikeMod);
            }
        }
        catch { /* Silent fail */ }
    }

    // =====================================================================
    // Crippling Blow - Patch to check all equipped items
    // =====================================================================

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.GetWeaponCritDamageMod),
        typeof(WorldObject), typeof(Creature), typeof(CreatureSkill), typeof(Creature))]
    public static void PostGetWeaponCritDamageMod(WorldObject weapon, Creature wielder, CreatureSkill skill, Creature target, ref float __result)
    {
        try
        {
            // If weapon already has CripplingBlow, bonus is already applied
            if (weapon?.HasImbuedEffect(ImbuedEffectType.CripplingBlow) == true)
                return;

            // Check if wielder has CripplingBlow on any equipped item (jewelry, armor, etc.)
            if (wielder != null && HasImbuedEffectEquipped(wielder, ImbuedEffectType.CripplingBlow))
            {
                var cripplingBlowMod = WorldObject.GetCripplingBlowMod(skill);
                __result = Math.Max(__result, cripplingBlowMod);
            }
        }
        catch { /* Silent fail */ }
    }

    // =====================================================================
    // Armor Rending - Patch to check all equipped items
    // =====================================================================

    [HarmonyPrefix]
    [HarmonyPatch(typeof(ACE.Server.Entity.DamageEvent), nameof(ACE.Server.Entity.DamageEvent.DoCalculateDamage))]
    public static void PreDoCalculateDamage(ACE.Server.Entity.DamageEvent __instance)
    {
        try
        {
            // Check if attacker has ArmorRending on any equipped item
            // This runs before the armor rending check, so we temporarily store it
            if (__instance.Attacker != null && __instance.Weapon != null)
            {
                // If weapon doesn't have armor rending, check other equipped items
                if (!__instance.Weapon.HasImbuedEffect(ImbuedEffectType.ArmorRending))
                {
                    if (HasImbuedEffectEquipped(__instance.Attacker, ImbuedEffectType.ArmorRending))
                    {
                        // Add ArmorRending to weapon temporarily for this damage calculation
                        __instance.Weapon.ImbuedEffect |= ImbuedEffectType.ArmorRending;
                        _tempArmorRendingApplied.Value = __instance.Weapon.Guid.Full;
                    }
                }
            }
        }
        catch { /* Silent fail */ }
    }

    [ThreadStatic]
    private static ThreadLocal<ulong> _tempArmorRendingApplied = new ThreadLocal<ulong>(() => 0);

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(ACE.Server.Entity.DamageEvent), nameof(ACE.Server.Entity.DamageEvent.DoCalculateDamage))]
    public static void FinalizerDoCalculateDamage(ACE.Server.Entity.DamageEvent __instance)
    {
        try
        {
            // Remove temporary ArmorRending we added
            if (_tempArmorRendingApplied.Value != 0 && __instance.Weapon != null && __instance.Weapon.Guid.Full == _tempArmorRendingApplied.Value)
            {
                __instance.Weapon.ImbuedEffect &= ~ImbuedEffectType.ArmorRending;
                _tempArmorRendingApplied.Value = 0;
            }
        }
        catch { /* Silent fail */ }
    }
}
