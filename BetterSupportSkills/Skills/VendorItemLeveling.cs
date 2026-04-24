using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.VendorItemLeveling))]
internal static class VendorItemLeveling
{
    // PropertyInt IDs aligned with EmpyreanAlteration QuestItemGrowthProperties
    static readonly PropertyInt QuestItemCategoryInt = (PropertyInt)40102;
    static readonly PropertyInt QuestGrowthTreasureTierInt = (PropertyInt)40151;

    // Cosmetic: show leveling info on vendor UI before purchase.
    public static void PostfixLoadInventory(Vendor __instance)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableVendorItemLeveling != true)
            return;

        if (__instance?.DefaultItemsForSale == null || __instance.DefaultItemsForSale.Count == 0)
            return;

        foreach (var item in __instance.DefaultItemsForSale.Values)
            ApplyLeveling(item, settings.VendorItemLeveling);
    }

    // Functional: apply leveling to the actual items entering the player's inventory.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.FinalizeBuyTransaction),
        new Type[] { typeof(Vendor), typeof(List<WorldObject>), typeof(List<WorldObject>), typeof(uint) })]
    public static void PrefixFinalizeBuyTransaction(Vendor vendor, List<WorldObject> genericItems, List<WorldObject> uniqueItems, uint cost, ref Player __instance)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableVendorItemLeveling != true)
            return;

        if (genericItems == null)
            return;

        foreach (var item in genericItems)
            ApplyLeveling(item, settings.VendorItemLeveling);
    }

    internal static void ApplyLeveling(WorldObject item, VendorItemLevelingSettings? vendorSettings)
    {
        if (item == null)
            return;

        if (item.HasItemLevel)
            return;

        if (!IsEligibleEquipment(item))
            return;

        int tier = vendorSettings?.TreasureTier ?? 3;

        item.ItemXpStyle = ItemXpStyle.ScalesWithLevel;
        item.ItemBaseXp = vendorSettings?.BaseXp ?? 10_000;
        item.ItemTotalXp = 0;
        item.ItemMaxLevel = vendorSettings?.MaxLevel ?? 25;

        // Mark as EA growth item so catch-up growth engine applies imbues/spells on level-up
        item.SetProperty(FakeBool.GrowthItem, true);
        item.SetProperty(QuestItemCategoryInt, (int)item.WeenieType);
        item.SetProperty(QuestGrowthTreasureTierInt, tier);
    }

    static bool IsEligibleEquipment(WorldObject item)
    {
        var wt = item.WeenieType;

        if (wt is WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster)
            return true;

        if (wt == WeenieType.Clothing)
        {
            var loc = item.ValidLocations;
            return loc.HasValue && loc.Value != 0;
        }

        return false;
    }
}
