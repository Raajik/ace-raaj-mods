namespace Swarmed.Features;

using ACE.Server.Entity.Actions;

/// <summary>
/// Applies random stat/size variation to ALL creatures after they enter the world.
/// Uses deferred ActionChain (0.5s delay) — modifying vitals during factory creation
/// causes AddWorldObjectInternal rejections.
/// </summary>
[HarmonyPatchCategory("SwarmedCreatureVariation")]
internal static class CreatureVariation
{
    const int DeferredVariationPropertyId = 40115;

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new Type[] { typeof(Weenie), typeof(ObjectGuid) })]
    public static void PostCreateWorldObject(Weenie weenie, ObjectGuid guid, ref WorldObject __result)
    {
        ScheduleVariation(__result, guid.Full);
    }

#if REALM
    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new Type[] { typeof(Weenie), typeof(ObjectGuid), typeof(AppliedRuleset) })]
    public static void PostCreateWorldObjectRealm(Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset, ref WorldObject __result)
    {
        ScheduleVariation(__result, guid.Full);
    }
#endif

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new Type[] { typeof(Biota) })]
    public static void PostCreateWorldObjectBiota(Biota biota, ref WorldObject __result)
    {
        if (__result is Creature c)
            ScheduleVariation(__result, c.Guid.Full);
    }

    static void ScheduleVariation(WorldObject? wo, uint guid)
    {
        if (wo is not Creature creature)
            return;

        var settings = PatchClass.CurrentSettings;
        if (settings != null && Helpers.SwarmedHealthGate.IsExempt(creature, settings))
            return;

        var variationSettings = settings?.CreatureVariation;
        if (variationSettings == null || !variationSettings.Enabled)
            return;

        float mult = RollVariationMultiplier(variationSettings, guid);
        creature.SetProperty((PropertyFloat)DeferredVariationPropertyId, mult);

        var chain = new ActionChain();
        chain.AddDelaySeconds(0.5);
        chain.AddAction(creature, () =>
        {
            var stored = creature.GetProperty((PropertyFloat)DeferredVariationPropertyId);
            if (!stored.HasValue)
                return;

            creature.RemoveProperty((PropertyFloat)DeferredVariationPropertyId);
            ApplyVariation(creature, (float)stored.Value, variationSettings);
        });
        chain.EnqueueChain();
    }

    public static float RollVariationMultiplier(CreatureVariationSettings settings, uint? seedGuid = null)
    {
        float min = Math.Min(settings.HealthMin, settings.HealthMax);
        float max = Math.Max(settings.HealthMin, settings.HealthMax);

        if (seedGuid.HasValue)
        {
            var rng = new Random((int)(seedGuid.Value ^ 0x5A827999));
            return min + (float)rng.NextDouble() * (max - min);
        }

        return (float)ThreadSafeRandom.Next(min, max);
    }

    public static void ApplyVariation(Creature creature, float multiplier, CreatureVariationSettings settings)
    {
        if (creature == null || multiplier == 1.0f)
            return;

        if (creature.Health != null)
        {
            uint newMax = (uint)Math.Max(1, creature.Health.MaxValue * multiplier);
            creature.Health.Ranks = newMax;
            creature.Health.Current = (uint)Math.Max(1, creature.Health.Current * multiplier);
        }

        if (creature.Stamina != null)
        {
            uint newMax = (uint)Math.Max(1, creature.Stamina.MaxValue * multiplier);
            creature.Stamina.Ranks = newMax;
            creature.Stamina.Current = (uint)Math.Max(1, creature.Stamina.Current * multiplier);
        }

        if (creature.Mana != null)
        {
            uint newMax = (uint)Math.Max(1, creature.Mana.MaxValue * multiplier);
            creature.Mana.Ranks = newMax;
            creature.Mana.Current = (uint)Math.Max(1, creature.Mana.Current * multiplier);
        }

        float newScale = (creature.ObjScale ?? 1.0f) * multiplier;
        creature.ObjScale = Math.Clamp(newScale, 0.1f, 5.0f);

        int? currentDR = creature.GetProperty(PropertyInt.DamageRating);
        if (currentDR.HasValue && currentDR.Value > 0)
        {
            int newDR = Math.Max(0, (int)(currentDR.Value * multiplier));
            creature.SetProperty(PropertyInt.DamageRating, newDR);
        }

        if (settings.LevelVariance > 0)
        {
            int currentLevel = creature.GetProperty(PropertyInt.Level) ?? 1;
            int levelDelta = (int)((multiplier - 1.0f) * settings.LevelVariance);
            int newLevel = Math.Max(1, currentLevel + levelDelta);
            if (newLevel != currentLevel)
                creature.SetProperty(PropertyInt.Level, newLevel);
        }
    }
}
