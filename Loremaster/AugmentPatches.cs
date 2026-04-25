using ACE.Entity.Enum.Properties;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace Loremaster;

[HarmonyPatchCategory(nameof(AccountAugmentStore))]
public static class AugmentPatches
{
    /// <summary>
    /// Intercepts Player.SetProperty(PropertyInt, int) to sync augment increases account-wide.
    /// Catches both XP augments (from AugmentationDevice.DoAugmentation) and luminance augments
    /// (from weenie emotes), plus any other source that sets augment properties.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.SetProperty), new Type[] { typeof(PropertyInt), typeof(int) })]
    public static void PrefixSetPropertyInt(WorldObject __instance, PropertyInt property, int value)
    {
        if (__instance is not Player player)
            return;

        if (!AccountAugmentStore.IsAccountWideAugment(property))
            return;

        AccountAugmentStore.OnAugmentPropertySet(player, property, value);
    }

    /// <summary>
    /// On login, seed account-wide augment maxima to the character.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostPlayerEnterWorld(Player __instance)
    {
        AccountAugmentStore.OnPlayerEnterWorld(__instance);
    }
}
