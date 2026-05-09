namespace Overtinked;

// After any code sets UiEffects or IconUnderlay on a Hemorrhage weapon, re-apply Fire-only glow + CB underlay so EA / vanilla imbue refresh cannot win.
internal static class HemorrhageWeaponVisualReassert
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.SetProperty), new[] { typeof(PropertyInt), typeof(int) })]
    public static void PostSetPropertyInt(WorldObject __instance, PropertyInt property, int value)
    {
        if (property != PropertyInt.UiEffects)
            return;

        if (HemorrhageWeaponVisual.IsApplyingVisual)
            return;

        Settings? s = PatchClass.CurrentSettings;
        if (s?.HemorrhageImbue?.Enabled != true)
            return;

        if ((OvertinkedImbueStore.Get(__instance) & OvertinkedImbueFlags.Hemorrhage) == 0)
            return;

        if (HemorrhageWeaponVisual.HasHemorrhageWeaponLook(__instance))
            return;

        HemorrhageWeaponVisual.ApplyIfHemorrhageWeapon(s, __instance);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.SetProperty), new[] { typeof(PropertyDataId), typeof(uint) })]
    public static void PostSetPropertyDataId(WorldObject __instance, PropertyDataId property, uint value)
    {
        if (property != PropertyDataId.IconUnderlay)
            return;

        if (HemorrhageWeaponVisual.IsApplyingVisual)
            return;

        Settings? s = PatchClass.CurrentSettings;
        if (s?.HemorrhageImbue?.Enabled != true)
            return;

        if ((OvertinkedImbueStore.Get(__instance) & OvertinkedImbueFlags.Hemorrhage) == 0)
            return;

        if (HemorrhageWeaponVisual.HasHemorrhageWeaponLook(__instance))
            return;

        HemorrhageWeaponVisual.ApplyIfHemorrhageWeapon(s, __instance);
    }
}
