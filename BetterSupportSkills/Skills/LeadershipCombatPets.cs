using ACE.Database;
using ACE.Entity.Enum;

namespace BetterSupportSkills.Skills;

// Calls WorldObject.CheckUseRequirements without PetDevice override (Harmony reverse patch).
[HarmonyPatch(typeof(WorldObject), nameof(WorldObject.CheckUseRequirements), new[] { typeof(WorldObject) })]
[HarmonyPatchCategory(nameof(Features.LeadershipSkill))]
internal static class WorldObjectCheckUseRequirementsReverse
{
    [HarmonyReversePatch]
    public static ActivationResult BaseCheckUseRequirements(WorldObject instance, WorldObject activator)
    {
        throw new NotImplementedException("Harmony reverse patch stub for WorldObject.CheckUseRequirements.");
    }
}

// Leadership: extra concurrent CombatPets; tracks counts and relaxes PetDevice / Pet checks when under cap.
[HarmonyPatchCategory(nameof(Features.LeadershipSkill))]
internal static class LeadershipCombatPets
{
    static readonly ConcurrentDictionary<uint, int> ActiveCombatPetCountByPlayer = new();

    public static int GetActiveCombatPetCount(Player player) =>
        ActiveCombatPetCountByPlayer.GetValueOrDefault(player.Guid.Full);

    static int GetMaxCombatPetSlots(Player player, LeadershipSettings ls)
    {
        var skill = player.GetCreatureSkill(Skill.Leadership);
        if (skill.AdvancementClass < SkillAdvancementClass.Trained)
            return 1;

        if (skill.AdvancementClass == SkillAdvancementClass.Specialized)
            return 1 + Math.Max(0, ls.ExtraCombatPetSlotsSpecialized);

        return 1 + Math.Max(0, ls.ExtraCombatPetSlotsTrained);
    }

    static void RegisterCombatPet(Player owner, CombatPet _)
    {
        ActiveCombatPetCountByPlayer.AddOrUpdate(owner.Guid.Full, 1, (_, c) => c + 1);
    }

    static void UnregisterCombatPet(Player? owner)
    {
        if (owner is null)
            return;

        ActiveCombatPetCountByPlayer.AddOrUpdate(owner.Guid.Full, 0, (_, c) => Math.Max(0, c - 1));
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(PetDevice), nameof(PetDevice.CheckUseRequirements), new[] { typeof(WorldObject) })]
    public static bool PrefixPetDeviceCheckUse(WorldObject activator, ref PetDevice __instance, ref ActivationResult __result)
    {
        if (PatchClass.Settings is not { EnableLeadership: true } settings)
            return true;

        if (activator is not Player player)
            return true;

        ActivationResult baseRequirements = WorldObjectCheckUseRequirementsReverse.BaseCheckUseRequirements(__instance, activator);
        if (!baseRequirements.Success)
        {
            __result = baseRequirements;
            return false;
        }

        if (__instance.SummoningMastery != null && player.SummoningMastery != __instance.SummoningMastery)
        {
            player.Session?.Network?.EnqueueSend(new GameMessageSystemChat($"You must be a {__instance.SummoningMastery} to use the {__instance.Name}", ChatMessageType.Broadcast));
            __result = new ActivationResult(false);
            return false;
        }

        int maxSlots = GetMaxCombatPetSlots(player, settings.Leadership);
        int count = GetActiveCombatPetCount(player);

        if (player.CurrentActivePet != null && player.CurrentActivePet is CombatPet)
        {
            if (count >= maxSlots)
            {
                if (PropertyManager.GetBool("pet_stow_replace").Item)
                {
                    player.SendTransientError($"{player.CurrentActivePet.Name} is already active");
                    __result = new ActivationResult(false);
                    return false;
                }

                if (__instance.PetClass is null)
                {
                    player.SendTransientError($"{player.CurrentActivePet.Name} is already active");
                    __result = new ActivationResult(false);
                    return false;
                }

                var weenie = DatabaseManager.World.GetCachedWeenie((uint)__instance.PetClass.Value);

                if (weenie == null || weenie.WeenieType != WeenieType.Pet)
                {
                    player.SendTransientError($"{player.CurrentActivePet.Name} is already active");
                    __result = new ActivationResult(false);
                    return false;
                }
            }
        }

        __result = new ActivationResult(true);
        return false;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Pet), nameof(Pet.HandleCurrentActivePet_Retail), new[] { typeof(Player) })]
    public static bool PrefixHandleRetail(Player player, ref Pet __instance, ref bool? __result)
    {
        if (PatchClass.Settings is not { EnableLeadership: true } settings)
            return true;

        if (__instance.IsPassivePet)
            return true;

        if (player.CurrentActivePet is not CombatPet)
            return true;

        int maxSlots = GetMaxCombatPetSlots(player, settings.Leadership);
        int count = GetActiveCombatPetCount(player);

        if (count < maxSlots)
        {
            __result = true;
            return false;
        }

        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Pet), nameof(Pet.HandleCurrentActivePet_Replace), new[] { typeof(Player) })]
    public static bool PrefixHandleReplace(Player player, ref Pet __instance, ref bool __result)
    {
        if (PatchClass.Settings is not { EnableLeadership: true } settings)
            return true;

        if (__instance.IsPassivePet)
            return true;

        if (player.CurrentActivePet is not CombatPet)
            return true;

        int maxSlots = GetMaxCombatPetSlots(player, settings.Leadership);
        int count = GetActiveCombatPetCount(player);

        if (count < maxSlots)
        {
            __result = true;
            return false;
        }

        return true;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Pet), nameof(Pet.Init), new[] { typeof(Player), typeof(PetDevice) })]
    public static void PostInit(Pet __instance, Player player, PetDevice petDevice, bool? __result)
    {
        if (PatchClass.Settings?.EnableLeadership != true)
            return;

        if (__result != true)
            return;

        if (__instance is CombatPet cp)
            RegisterCombatPet(player, cp);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.Destroy), new[] { typeof(bool), typeof(bool) })]
    public static void PostDestroy(bool raiseNotifyOfDestructionEvent, bool fromLandblockUnload, WorldObject __instance)
    {
        if (PatchClass.Settings?.EnableLeadership != true)
            return;

        if (__instance is CombatPet cp)
            UnregisterCombatPet(cp.P_PetOwner);
    }
}
