namespace Overtinked;

using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Physics;
using ACE.Server.WorldObjects;

/// <summary>
/// Reads PropertyInt.Cleaving on equipped jewelry and adds bonus cleave targets
/// to the wielder's melee attacks. Works with both cleaving weapons (adds extra)
/// and non-cleaving weapons (enables cleaving via jewelry alone).
/// </summary>
[HarmonyPatchCategory(Settings.JewelryCleaveCategory)]
public static class JewelryCleaveBonus
{
    // Mirror ACE constants (can't reference private consts directly)
    const float CleaveRange = 5.0f;
    const float CleaveAngle = 180.0f;
    const float CleaveCylRange = 2.0f;

    /// <summary>
    /// Sum of PropertyInt.Cleaving on all equipped jewelry pieces for this creature.
    /// Returns 0 if no jewelry provides cleave.
    /// </summary>
    public static int GetJewelryCleaveBonus(Creature creature)
    {
        if (creature?.EquippedObjects == null)
            return 0;

        int bonus = 0;
        foreach (var item in creature.EquippedObjects.Values)
        {
            if (item == null)
                continue;

            // Only jewelry slots — finger, wrist, neck
            var loc = item.CurrentWieldedLocation;
            if (loc != EquipMask.FingerWearLeft &&
                loc != EquipMask.FingerWearRight &&
                loc != EquipMask.WristWearLeft &&
                loc != EquipMask.WristWearRight &&
                loc != EquipMask.NeckWear)
                continue;

            var cleaveProp = item.GetProperty(PropertyInt.Cleaving);
            if (cleaveProp.HasValue && cleaveProp.Value > 0)
                bonus += cleaveProp.Value - 1; // Cleaving=2 means 1 bonus target
        }

        return Math.Max(0, bonus);
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), "GetCleaveTarget")]
    public static bool Prefix(Creature target, WorldObject weapon, ref List<Creature> __result, Creature __instance)
    {
        int jewelryBonus = GetJewelryCleaveBonus(__instance);
        if (jewelryBonus <= 0)
            return true; // no jewelry cleave — let vanilla run

        if (weapon != null && weapon.IsCleaving)
            return true; // weapon already cleaves — let vanilla run, postfix adds bonus

        // Weapon is NOT cleaving, but jewelry provides cleave — run custom logic
        __result = ComputeCleaveTargets(__instance, target, jewelryBonus);
        return false; // skip original
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), "GetCleaveTarget")]
    public static void Postfix(Creature target, WorldObject weapon, ref List<Creature> __result, Creature __instance)
    {
        if (__result == null)
            return; // Prefix handled non-cleaving-weapon case, or vanilla returned null

        int jewelryBonus = GetJewelryCleaveBonus(__instance);
        if (jewelryBonus <= 0)
            return;

        var extra = ComputeBonusCleaveTargets(__instance, target, jewelryBonus, __result);
        if (extra.Count > 0)
            __result.AddRange(extra);
    }

    static List<Creature> ComputeCleaveTargets(Creature attacker, Creature target, int totalCleaves)
    {
        var result = new List<Creature>();
        var player = attacker as Player;

        if (attacker?.PhysicsObj?.ObjMaint == null || target?.PhysicsObj == null)
            return result;

        var visible = attacker.PhysicsObj.ObjMaint.GetVisibleObjectsValuesWhere(o => o.WeenieObj.WorldObject != null);
        visible.Sort(attacker.DistanceComparator);

        foreach (var obj in visible)
        {
            if (obj.ID == target.PhysicsObj.ID)
                continue;

            var creature = obj.WeenieObj.WorldObject as Creature;
            if (creature == null || creature.Teleporting || creature.IsDead)
                continue;

            if (player != null && player.CheckPKStatusVsTarget(creature, null) != null)
                continue;

            if (!creature.Attackable && creature.TargetingTactic == TargetingTactic.None || creature.Teleporting)
                continue;

            if (creature is CombatPet && (player != null || attacker is CombatPet))
                continue;

            var cylDist = attacker.GetCylinderDistance(creature);
            if (cylDist > CleaveCylRange)
                return result;

            var angle = attacker.GetAngle(creature);
            if (Math.Abs(angle) > CleaveAngle / 2.0f)
                continue;

            result.Add(creature);
            if (result.Count == totalCleaves)
                break;
        }

        return result;
    }

    static List<Creature> ComputeBonusCleaveTargets(Creature attacker, Creature target, int bonus, List<Creature> alreadyHit)
    {
        var result = new List<Creature>();
        var player = attacker as Player;
        var alreadyHitIds = new HashSet<uint>(alreadyHit.Select(c => c.PhysicsObj?.ID ?? 0));
        alreadyHitIds.Add(target.PhysicsObj?.ID ?? 0);

        if (attacker?.PhysicsObj?.ObjMaint == null || target?.PhysicsObj == null)
            return result;

        var visible = attacker.PhysicsObj.ObjMaint.GetVisibleObjectsValuesWhere(o => o.WeenieObj.WorldObject != null);
        visible.Sort(attacker.DistanceComparator);

        foreach (var obj in visible)
        {
            if (result.Count >= bonus)
                break;

            if (alreadyHitIds.Contains(obj.ID))
                continue;

            var creature = obj.WeenieObj.WorldObject as Creature;
            if (creature == null || creature.Teleporting || creature.IsDead)
                continue;

            if (player != null && player.CheckPKStatusVsTarget(creature, null) != null)
                continue;

            if (!creature.Attackable && creature.TargetingTactic == TargetingTactic.None || creature.Teleporting)
                continue;

            if (creature is CombatPet && (player != null || attacker is CombatPet))
                continue;

            var cylDist = attacker.GetCylinderDistance(creature);
            if (cylDist > CleaveCylRange)
                break;

            var angle = attacker.GetAngle(creature);
            if (Math.Abs(angle) > CleaveAngle / 2.0f)
                continue;

            result.Add(creature);
        }

        return result;
    }

    // =====================================================================
    // Missile & Magic Cleave (jewelry bonus applies to projectiles too)
    // =====================================================================

    [HarmonyPostfix]
    [HarmonyPatch(typeof(SpellProjectile), nameof(SpellProjectile.DamageTarget))]
    public static void PostSpellProjectileDamageTarget(Creature target, float damage, SpellProjectile __instance)
    {
        if (__instance?.ProjectileSource is not Creature sourceCreature)
            return;

        // Skip non-health projectiles (stamina/mana drain, enchantments)
        if (__instance.Spell?.Category == SpellCategory.StaminaLowering ||
            __instance.Spell?.Category == SpellCategory.ManaLowering ||
            __instance.Spell?.MetaSpellType == ACE.Entity.Enum.SpellType.EnchantmentProjectile)
            return;

        // Skip AOE spells (Ring, Wall, Strike, Blast, Volley — already multi-target)
        if (__instance.SpellType == ProjectileSpellType.Ring ||
            __instance.SpellType == ProjectileSpellType.Wall ||
            __instance.SpellType == ProjectileSpellType.Strike ||
            __instance.SpellType == ProjectileSpellType.Blast ||
            __instance.SpellType == ProjectileSpellType.Volley)
            return;

        int jewelryBonus = GetJewelryCleaveBonus(sourceCreature);
        if (jewelryBonus <= 0)
            return;

        // Compute splash targets around the hit target (not the attacker)
        var splashTargets = ComputeSplashTargets(sourceCreature, target, jewelryBonus);
        if (splashTargets.Count == 0)
            return;

        var dmgType = __instance.Spell?.DamageType ?? DamageType.Health;
        float splashDamage = damage * 0.5f; // 50% damage to splash targets
        if (splashDamage < 1f)
            return;

        foreach (var victim in splashTargets)
        {
            if (victim == null || victim.IsDead || !victim.Attackable)
                continue;

            victim.TakeDamage(__instance.ProjectileSource, dmgType, splashDamage, false);
        }
    }

    static List<Creature> ComputeSplashTargets(Creature attacker, Creature hitTarget, int maxTargets)
    {
        var result = new List<Creature>();
        var player = attacker as Player;

        if (hitTarget?.PhysicsObj == null || attacker?.PhysicsObj?.ObjMaint == null)
            return result;

        var visible = attacker.PhysicsObj.ObjMaint.GetVisibleObjectsValuesWhere(o => o.WeenieObj.WorldObject != null);
        visible.Sort(hitTarget.DistanceComparator); // sort by distance from hit target

        foreach (var obj in visible)
        {
            if (result.Count >= maxTargets)
                break;

            // Skip original target
            if (obj.ID == hitTarget.PhysicsObj?.ID)
                continue;

            var creature = obj.WeenieObj.WorldObject as Creature;
            if (creature == null || creature.Teleporting || creature.IsDead)
                continue;

            if (player != null && player.CheckPKStatusVsTarget(creature, null) != null)
                continue;

            if (!creature.Attackable && creature.TargetingTactic == TargetingTactic.None || creature.Teleporting)
                continue;

            if (creature is CombatPet && (player != null || attacker is CombatPet))
                continue;

            // Splash radius check — distance from hit target
            var dist = hitTarget.GetDistance(creature);
            if (dist > CleaveRange)
                continue;

            result.Add(creature);
        }

        return result;
    }
}
