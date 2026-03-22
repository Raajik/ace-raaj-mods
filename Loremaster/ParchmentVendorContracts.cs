namespace Loremaster;

[HarmonyPatchCategory("ParchmentQuestHooks")]
public static class ParchmentVendorContracts
{
    internal static void OnVendorApproach(Vendor vendor)
    {
        var cfg = PatchClass.Settings?.BarkeeperParchments;
        if (cfg?.Enable != true || cfg.BartenderContractBoards is not { Count: > 0 })
            return;

        var board = cfg.BartenderContractBoards.Find(b => b.BartenderVendorWeenieClassId == vendor.WeenieClassId);
        if (board is null)
            return;

        StripOurListings(vendor);

        var rows = board.OfferTemplateRow0Based;
        if (rows is null || rows.Count != 5)
        {
            ModManager.Log(
                $"[Loremaster] Bartender WCID {vendor.WeenieClassId} must have exactly 5 OfferTemplateRow0Based indices (has {rows?.Count ?? 0}).",
                ModManager.LogLevel.Warn);
            return;
        }

        var templates = cfg.ParchmentTemplates;
        foreach (var row in rows)
        {
            if (row < 0 || row >= templates.Count)
            {
                ModManager.Log($"[Loremaster] Bartender offer row {row} out of range (template count {templates.Count}).",
                    ModManager.LogLevel.Warn);
                continue;
            }

            var t = templates[row];
            if (!ParchmentQuestHooks.ValidateTemplate(t, out var err))
            {
                ModManager.Log($"[Loremaster] Bartender offer row {row} invalid: {err}", ModManager.LogLevel.Warn);
                continue;
            }

            var wo = WorldObjectFactory.CreateNewWorldObject(t.ParchmentWeenieClassId);
            if (wo is null)
            {
                ModManager.Log($"[Loremaster] Failed to create parchment WCID {t.ParchmentWeenieClassId}.",
                    ModManager.LogLevel.Warn);
                continue;
            }

            if (!string.IsNullOrWhiteSpace(t.TemplateMatchInscription))
                wo.SetProperty(PropertyString.Inscription, t.TemplateMatchInscription.Trim());

            wo.SetProperty(LMBool.ParchmentVendorContract, true);
            wo.ContainerId = vendor.Guid.Full;
            wo.Value = 0;
            wo.CalculateObjDesc();
            wo.VendorShopCreateListStackSize = 1;
            vendor.AddDefaultItem(wo);
        }
    }

    static void StripOurListings(Vendor vendor)
    {
        foreach (var kvp in vendor.DefaultItemsForSale.ToList())
        {
            if (kvp.Value.GetProperty(LMBool.ParchmentVendorContract) == true)
                vendor.DefaultItemsForSale.Remove(kvp.Key);
        }
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Vendor), nameof(Vendor.ApproachVendor), new Type[] { typeof(Player), typeof(VendorType), typeof(uint) })]
    public static void PreVendorApproachVendor(Player player, VendorType action, uint altCurrencySpent, Vendor __instance)
    {
        OnVendorApproach(__instance);
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Vendor), nameof(Vendor.GetSellCost), new Type[] { typeof(WorldObject) })]
    public static bool PreVendorGetSellCost(WorldObject item, ref uint __result)
    {
        if (item.GetProperty(LMBool.ParchmentVendorContract) == true)
        {
            __result = 0;
            return false;
        }

        return true;
    }

    // Must run before LeyLineLedger.Debit.PreBuyItems_ValidateTransaction (that prefix returns false and skips later prefixes).
    [HarmonyPriority(-1000)]
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Vendor), nameof(Vendor.BuyItems_ValidateTransaction), new Type[] { typeof(List<ItemProfile>), typeof(Player) })]
    public static bool PreBuyItemsValidate(List<ItemProfile> itemProfiles, Player player, ref Vendor __instance, ref bool __result)
    {
        if (PatchClass.Settings?.BarkeeperParchments?.Enable != true)
            return true;

        foreach (var itemProfile in itemProfiles)
        {
            if (!itemProfile.IsValidAmount)
                continue;

            var itemGuid = new ObjectGuid(itemProfile.ObjectGuid);
            if (__instance.DefaultItemsForSale.TryGetValue(itemGuid, out var wo)
                && wo.GetProperty(LMBool.ParchmentVendorContract) == true
                && ParchmentActiveState.GetTemplateIndex1Based(player) > 0)
            {
                player.SendTransientError("You already have an active parchment contract. Finish or abandon it first.");
                __result = false;
                return false;
            }
        }

        return true;
    }
}
