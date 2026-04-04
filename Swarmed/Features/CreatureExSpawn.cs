using Swarmed;

namespace Swarmed.Features;

[CommandCategory(nameof(SwarmedFeature.CreatureEx))]
[HarmonyPatchCategory("SwarmedCreatureEx")]
public static class CreatureExSpawn
{
#if REALM
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new Type[] { typeof(Weenie), typeof(ObjectGuid), typeof(AppliedRuleset) })]
    public static bool PreCreateWorldObject(Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset, ref WorldObject __result)
    {
        if (weenie is null || weenie.WeenieType != WeenieType.Creature)
            return true;

        Settings? settings = PatchClass.CurrentSettings;
        double chance = settings is null ? 0 : OnlinePlayerDensity.EffectiveCreatureChance(settings);

        if (weenie.PropertiesInt.TryGetValue((PropertyInt)FakeInt.CreatureExType, out var creatureType))
        {
            var type = (Creatures.CreatureExType)creatureType;
            if (!Enum.IsDefined(type) || type == Creatures.CreatureExType.Unknown)
            {
                ModManager.Log($"Invalid CreatureEx type found: {type}");
                return true;
            }

            __result = type.Create(weenie, guid, ruleset);
            return false;
        }

        if (ThreadSafeRandom.Next(0, 1.0f) > chance)
            return true;

        __result = RollCreature(weenie, guid, ruleset);

        if (__result is Creature creature && creature.IsNPC)
            __result = new Creature(weenie, guid, ruleset);

        return false;
    }
#else
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new Type[] { typeof(Weenie), typeof(ObjectGuid) })]
    public static bool PreCreateWorldObject(Weenie weenie, ObjectGuid guid, ref WorldObject __result)
    {
        if (weenie is null || weenie.WeenieType != WeenieType.Creature)
            return true;

        Settings? settings = PatchClass.CurrentSettings;
        double chance = settings is null ? 0 : OnlinePlayerDensity.EffectiveCreatureChance(settings);

        if (weenie.PropertiesInt.TryGetValue((PropertyInt)FakeInt.CreatureExType, out var creatureType))
        {
            var type = (Creatures.CreatureExType)creatureType;
            if (!Enum.IsDefined(type) || type == Creatures.CreatureExType.Unknown)
            {
                ModManager.Log($"Invalid CreatureEx type found: {type}");
                return true;
            }

            __result = type.Create(weenie, guid);
            return false;
        }

        if (ThreadSafeRandom.Next(0, 1.0f) > chance)
            return true;

        __result = RollCreature(weenie, guid);

        if (__result is Creature creature && creature.IsNPC)
            __result = new Creature(weenie, guid);

        return false;
    }
#endif

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new Type[] { typeof(Biota) })]
    public static bool PreCreateWorldObject(Biota biota, ref WorldObject __result)
    {
        if (biota.WeenieType != WeenieType.Creature)
            return true;

        Settings? settings = PatchClass.CurrentSettings;
        double chance = settings is null ? 0 : OnlinePlayerDensity.EffectiveCreatureChance(settings);

        bool replaced = false;

        if (biota.PropertiesInt.TryGetValue((PropertyInt)FakeInt.CreatureExType, out var creatureType))
        {
            var type = (Creatures.CreatureExType)creatureType;
            if (!Enum.IsDefined(type) || type == Creatures.CreatureExType.Unknown)
            {
                ModManager.Log($"Invalid CreatureEx type found: {type}");
                return true;
            }

            __result = type.Create(biota);
            replaced = true;
        }
        else if (ThreadSafeRandom.Next(0, 1.0f) <= chance)
        {
            __result = RollCreature(biota);
            replaced = true;
        }

        if (!replaced)
            return true;

        if (__result is Creature creature && creature.IsNPC)
            __result = new Creature(biota);

        return false;
    }

    static readonly Creatures.CreatureExType[] RollableTypes = Enum.GetValues<Creatures.CreatureExType>()
        .Where(t => t != Creatures.CreatureExType.Unknown)
        .ToArray();

    static Creatures.CreatureExType RandomCreatureType() =>
        RollableTypes[ThreadSafeRandom.Next(0, RollableTypes.Length)];

#if REALM
    public static Creatures.CreatureEx RollCreature(Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset) =>
        RandomCreatureType().Create(weenie, guid, ruleset);
#else
    public static Creatures.CreatureEx RollCreature(Weenie weenie, ObjectGuid guid) =>
        RandomCreatureType().Create(weenie, guid);
#endif

    public static Creatures.CreatureEx RollCreature(Biota biota) =>
        RandomCreatureType().Create(biota);
}
