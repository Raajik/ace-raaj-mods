using ACE.Database;
using ACE.Server.Network.GameEvent;
using static ACE.Server.WorldObjects.Player;

namespace LeyLineLedger;

// Overrides purchase w/pyreals and alt currency
[HarmonyPatchCategory(nameof(Debit))]
public class Debit
{

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.UpdateCoinValue), new Type[] { typeof(bool) })]
    public static bool PreUpdateCoinValue(bool sendUpdateMessageIfChanged, ref Player __instance)
    {
        long banked = __instance.GetCash();

        foreach (var coinStack in __instance.GetInventoryItemsOfTypeWeenieType(WeenieType.Coin))
            banked += coinStack.Value ?? 0;

        foreach (var o in __instance.AllItems())
        {
            if (o.WeenieClassName.StartsWith("tradenote", StringComparison.OrdinalIgnoreCase))
                banked += o.Value ?? 0;
            else if (PeaPyrealWcids.IsPea(o.WeenieClassId))
                banked += PeaPyrealWcids.GetPyrealValue(o);
        }

        //Cap at max int
        int coins = banked > int.MaxValue ? int.MaxValue : (int)banked;

        if (sendUpdateMessageIfChanged && __instance.CoinValue == coins)
            sendUpdateMessageIfChanged = false;

        __instance.CoinValue = coins;

        if (sendUpdateMessageIfChanged)
            __instance.Session?.Network?.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(__instance, PropertyInt.CoinValue, __instance.CoinValue ?? 0));
        return false;
    }



    //Send the player the held and banked currency/alt coins
    [HarmonyPrefix]
    [HarmonyPatch(typeof(GameEventApproachVendor), MethodType.Constructor, new Type[] { typeof(Session), typeof(Vendor), typeof(uint) })]
    public static bool PreCtorGameEventApproachVendor(Session session, Vendor vendor, uint altCurrencySpent, ref GameEventApproachVendor __instance)
    {
        if (vendor == null)
        {
            ModManager.Log("[LeyLineLedger] ApproachVendor: vendor is null!", ModManager.LogLevel.Warn);
            return true; // let original run
        }

        ModManager.Log($"[LeyLineLedger] ApproachVendor CALLED: vendor={vendor.WeenieClassId}, altSpent={altCurrencySpent}, session={session != null}", ModManager.LogLevel.Info);

        //Workaround initialization since base is awkward..?
        if (session == null)
        {
            ModManager.Log("[LeyLineLedger] ApproachVendor: session is null!", ModManager.LogLevel.Warn);
            return true; // let original run
        }
        __instance.Base(session, GameEventType.ApproachVendor, GameMessageGroup.UIQueue);




        __instance.Writer.Write(vendor.Guid.Full);

        // the types of items vendor will purchase
        __instance.Writer.Write((uint)vendor.MerchandiseItemTypes.GetValueOrDefault());
        __instance.Writer.Write((uint)vendor.MerchandiseMinValue.GetValueOrDefault());
        __instance.Writer.Write((uint)vendor.MerchandiseMaxValue.GetValueOrDefault());

        __instance.Writer.Write(Convert.ToUInt32(vendor.DealMagicalItems ?? false));

        // Apply active price multipliers to displayed rates so client matches server calculations
        float displayBuyPrice = (float)(vendor.BuyPrice ?? 1.0);
        float displaySellPrice = (float)(vendor.SellPrice ?? 0.75);

        // Check for WorldEvents Sale multiplier via reflection (avoid hard dependency)
        try
        {
            var weAsm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.FullName?.StartsWith("WorldEvents") == true);
            if (weAsm != null)
            {
                var patchType = weAsm.GetType("WorldEvents.PatchClass");
                if (patchType != null)
                {
                    var method = patchType.GetMethod("ComputeVendorPriceMultiplier", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Static);
                    if (method != null)
                    {
                        var mult = (double)method.Invoke(null, new object[] { vendor })!;
                        if (mult > 0)
                        {
                            displayBuyPrice = (float)((double)displayBuyPrice * mult);
                            displaySellPrice = (float)((double)displaySellPrice * mult);
                        }
                    }
                }
            }
        }
        catch { /* Ignore reflection errors */ }

        __instance.Writer.Write(displayBuyPrice);
        __instance.Writer.Write(displaySellPrice);

        // the wcid of the alternate currency
        __instance.Writer.Write(vendor.AlternateCurrency ?? 0);

        // if this vendor accepts items as alternate currency, instead of pyreals
        if (vendor.AlternateCurrency != null && session.Player != null)
        {
            var player = session.Player;
            var altCurrency = DatabaseManager.World.GetCachedWeenie(vendor.AlternateCurrency.Value);
            var pluralName = altCurrency?.GetPluralName() ?? "items";

            var altWcid = vendor.AlternateCurrency.Value;
            var altInInv = (uint)player.GetNumInventoryItemsOfWCID(altWcid);

            var bankedItem = PatchClass.Settings?.Items?.FirstOrDefault(x => x.Id == altWcid);
            var bankedAmount = 0u;

            if (bankedItem != null)
            {
                try { bankedAmount = (uint)player.GetBanked(bankedItem.Prop); }
                catch { }
            }

            // For MMD and similar pyreal-backed currencies, also count pyreals as equivalent currency
            uint pyrealEquivalent = 0;
            var currencyEntry = PatchClass.Settings?.Currencies?.FirstOrDefault(c => c.Id == altWcid);
            if (currencyEntry != null && currencyEntry.GetPyrealValue() > 0)
            {
                var pyreals = player.GetTotalPyreals();
                pyrealEquivalent = (uint)(pyreals / currencyEntry.GetPyrealValue());
                ModManager.Log($"[LeyLineLedger] ApproachVendor pyreal calc: GetCash={player.GetCash():N0}, GetTotalPyreals={pyreals:N0}, currency={currencyEntry.Name} pyrealValue={currencyEntry.GetPyrealValue():N0}, pyrealEq={pyrealEquivalent}", ModManager.LogLevel.Info);
            }
            else
            {
                ModManager.Log($"[LeyLineLedger] ApproachVendor pyreal calc SKIPPED: currencyEntry={currencyEntry?.Name ?? "NULL"}, pyrealValue={currencyEntry?.GetPyrealValue() ?? 0}", ModManager.LogLevel.Warn);
            }

            // Count Zef equivalent
            uint zefEquivalent = 0;
            if (PatchClass.Settings?.AltCurrencyValues?.ContainsKey(altWcid) == true && bankedItem != null)
            {
                long zefs = player.GetBanked(PatchClass.Settings.AltCurrencyProperty);
                int zefValue = PatchClass.Settings.AltCurrencyValues[altWcid];
                zefEquivalent = (uint)(zefs / zefValue);
            }

            var totalAltCurrency = altInInv + bankedAmount + pyrealEquivalent + zefEquivalent;

            ModManager.Log($"[LeyLineLedger] ApproachVendor {vendor.WeenieClassId}: alt={altWcid}, inv={altInInv}, bank={bankedAmount}, pyrealEq={pyrealEquivalent}, zefEq={zefEquivalent}, total={totalAltCurrency}", ModManager.LogLevel.Info);

            __instance.Writer.Write(totalAltCurrency + altCurrencySpent);

            // the plural name of alt currency
            __instance.Writer.WriteString16L(pluralName);
        }
        else
        {
            //Original
            ModManager.Log($"[LeyLineLedger] ApproachVendor {vendor.WeenieClassId}: no AlternateCurrency or player null", ModManager.LogLevel.Info);
            __instance.Writer.Write(0);
            __instance.Writer.WriteString16L(string.Empty);
        }

        var numItems = vendor.DefaultItemsForSale.Count + vendor.UniqueItemsForSale.Count;

        __instance.Writer.Write(numItems);


        //!!Passed action crashed
        //vendor.forEachItem((obj) =>
        //{
        //    int stackSize = obj.VendorShopCreateListStackSize ?? obj.StackSize ?? 1; // -1 = unlimited supply
        //    vend.Writer.Write(stackSize & 0xFFFFFF | -1 << 24);
        //    obj.SerializeGameDataOnly(vend.Writer);
        //});
        //For each default/unique item write the stack size
        foreach (var item in vendor.DefaultItemsForSale.Values)
        {
            int stackSize = item.VendorShopCreateListStackSize ?? item.StackSize ?? 1; // -1 = unlimited supply
            __instance.Writer.Write(stackSize & 0xFFFFFF | -1 << 24);
            item.SerializeGameDataOnly(__instance.Writer);
        }
        foreach (var item in vendor.UniqueItemsForSale.Values)
        {
            int stackSize = item.VendorShopCreateListStackSize ?? item.StackSize ?? 1; // -1 = unlimited supply
            __instance.Writer.Write(stackSize & 0xFFFFFF | -1 << 24);
            item.SerializeGameDataOnly(__instance.Writer);
        }

        __instance.Writer.Align();

        return false;
    }

    //Rework spend currency to take from the bank first
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.SpendCurrency), new Type[] { typeof(uint), typeof(uint), typeof(bool) })]
    public static bool PreSpendCurrency(uint currentWcid, uint amount, bool destroy, ref Player __instance, ref List<WorldObject>? __result)
    {
        if (currentWcid == 0 || amount == 0)
        {
            __result = null;
            return false;
        }


        //Take from bank first
        if (currentWcid == coinStackWcid)
        {
            var cash = __instance.GetCash();

            //Use up to the amount requested
            var used = (int)Math.Min(cash, amount);
            __instance.IncCash(-used);

            __instance.SendMessage($"Used {used:N0} pyreals from bank of the {amount:N0} needed.  {cash - used:N0} remaining.");
            amount -= (uint)used;

        }
        else
        {
            var bankEntry = PatchClass.Settings?.Items?.FirstOrDefault(x => x.Id == currentWcid);
            if (bankEntry is not null)
            {
                //Get amount banked
                var banked = __instance.GetBanked(bankEntry.Prop);

                //Use up to the amount requested
                var used = (int)Math.Min(banked, amount);
                var remaining = banked - used;
                __instance.IncBanked(bankEntry.Prop, -used);

                // Auto-convert pyreals to currency if banked isn't enough
                var currencyEntry = PatchClass.Settings?.Currencies?.FirstOrDefault(c => c.Id == currentWcid);
                if (used < amount && currencyEntry != null && currencyEntry.GetPyrealValue() > 0)
                {
                    var stillNeeded = amount - used;
                    var pyrealValue = currencyEntry.GetPyrealValue();
                    var pyreals = __instance.GetTotalPyreals();

                    if (pyreals >= pyrealValue)
                    {
                        var canConvert = pyreals / pyrealValue;
                        var toConvert = Math.Min(canConvert, stillNeeded);

                        if (toConvert > 0)
                        {
                            __instance.IncCash(-(long)(toConvert * pyrealValue));
                            __instance.SendMessage($"Auto-converted {toConvert * pyrealValue:N0} pyreals to cover {toConvert} {bankEntry.Name}.");
                            used += (int)toConvert;
                        }
                    }
                }

                // Auto-convert Zefs if pyreal conversion wasn't enough
                if (used < amount && PatchClass.Settings?.AltCurrencyValues?.ContainsKey(currentWcid) == true)
                {
                    var stillNeeded = amount - used;
                    int zefValue = PatchClass.Settings.AltCurrencyValues[currentWcid];
                    long zefs = __instance.GetBanked(PatchClass.Settings.AltCurrencyProperty);
                    long canConvert = zefs / zefValue;
                    var toConvert = Math.Min(canConvert, stillNeeded);

                    if (toConvert > 0)
                    {
                        __instance.IncBanked(PatchClass.Settings.AltCurrencyProperty, -toConvert * zefValue);
                        __instance.SendMessage($"Auto-converted {toConvert * zefValue} Zefs to cover {toConvert} {bankEntry.Name}.");
                        used += (int)toConvert;
                    }
                }

                __instance.SendMessage($"Used {used:N0} {bankEntry.Name} from bank of the {amount} needed. {remaining:N0} remaining.");
                amount -= (uint)used;
            }
        }



        var cost = new List<WorldObject>();

        if (currentWcid == coinStackWcid)
        {
            if (amount > __instance.CoinValue)
            {
                __result = null;
                return false;
            }

            SpendPeasForPyrealAmount(__instance, ref amount);
            __instance.UpdateCoinValue();
        }

        if (destroy)
        {
            if (amount > 0)
                __instance.TryConsumeFromInventoryWithNetworking(currentWcid, (int)amount);
        }
        else
        {
            cost = __instance.CollectCurrencyStacks(currentWcid, amount);

            foreach (var stack in cost)
            {
                if (!__instance.TryRemoveFromInventoryWithNetworking(stack.Guid, out _, RemoveFromInventoryAction.SpendItem))
                    __instance.UpdateCoinValue(); // this coinstack was created by spliting up an existing one, and not actually added to the players inventory. The existing stack was already adjusted down but we need to update the player's CoinValue, so we do that now.
            }
        }

        __result = cost;
        return false;
    }

    //Player finalizes buy
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.FinalizeBuyTransaction), new Type[] { typeof(Vendor), typeof(List<WorldObject>), typeof(List<WorldObject>), typeof(uint) })]
    public static bool PreFinalizeBuyTransaction(Vendor vendor, List<WorldObject> genericItems, List<WorldObject> uniqueItems, uint cost, ref Player __instance)
    {
        // transaction has been validated by this point

        var currencyWcid = vendor.AlternateCurrency ?? coinStackWcid;

        __instance.SpendCurrency(currencyWcid, cost, true);

        vendor.MoneyIncome += (int)cost;

        foreach (var item in genericItems)
        {
            var service = item.GetProperty(PropertyBool.VendorService) ?? false;

            if (!service)
            {
                // errors shouldn't be possible here, since the items were pre-validated, but just in case...
                if (!__instance.TryCreateInInventoryWithNetworking(item))
                {
                    //Player.log.Error($"[VENDOR] {__instance.Name}.FinalizeBuyTransaction({vendor.Name}) - couldn't add {item.Name} ({item.Guid}) to player inventory after validation, this shouldn't happen!");

                    item.Destroy();  // cleanup for guid manager
                }

                vendor.NumItemsSold++;
            }
            else
                vendor.ApplyService(item, __instance);
        }

        foreach (var item in uniqueItems)
        {
            if (__instance.TryCreateInInventoryWithNetworking(item))
            {
                vendor.UniqueItemsForSale.Remove(item.Guid);

                // this was only for when the unique item was sold to the vendor,
                // to determine when the item should rot on the vendor. it gets removed now
                item.SoldTimestamp = null;

                vendor.NumItemsSold++;
            }
            else { }
            //log.Error($"[VENDOR] {Name}.FinalizeBuyTransaction({vendor.Name}) - couldn't add {item.Name} ({item.Guid}) to player inventory after validation, this shouldn't happen!");
        }

        __instance.Session?.Network?.EnqueueSend(new GameMessageSound(__instance.Guid, Sound.PickUpItem));

        if (PropertyManager.GetBool("player_receive_immediate_save").Item)
            __instance.RushNextPlayerSave(5);

        var altCurrencySpent = vendor.AlternateCurrency != null ? cost : 0;

        vendor.ApproachVendor(__instance, VendorType.Buy, altCurrencySpent);

        return false;
    }

    //Check that the player has enough currency
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Vendor), nameof(Vendor.BuyItems_ValidateTransaction), new Type[] { typeof(List<ItemProfile>), typeof(Player) })]
    public static bool PreBuyItems_ValidateTransaction(List<ItemProfile> itemProfiles, Player player, ref Vendor __instance, ref bool __result)
    {
        // one difference between buy and sell currently
        // is that if *any* items in the buy transactions are detected as invalid,
        // we reject the entire transaction.
        // this seems to be the "safest" route, however in terms of player convenience
        // where only 1 item has an error from a large purchase set,
        // this might not be the most convenient for the player.

        var defaultItemProfiles = new List<ItemProfile>();
        var uniqueItems = new List<WorldObject>();

        // find item profiles in default and unique items
        foreach (var itemProfile in itemProfiles)
        {
            if (!itemProfile.IsValidAmount)
            {
                // reject entire transaction immediately
                player.SendTransientError($"Invalid amount");
                __result = false;
                return false;
            }

            var itemGuid = new ObjectGuid(itemProfile.ObjectGuid);

            // check default items
            if (__instance.DefaultItemsForSale.TryGetValue(itemGuid, out var defaultItemForSale))
            {
                itemProfile.WeenieClassId = defaultItemForSale.WeenieClassId;
                itemProfile.Palette = defaultItemForSale.PaletteTemplate;
                itemProfile.Shade = defaultItemForSale.Shade;

                defaultItemProfiles.Add(itemProfile);
            }
            // check unique items
            else if (__instance.UniqueItemsForSale.TryGetValue(itemGuid, out var uniqueItemForSale))
            {
                uniqueItems.Add(uniqueItemForSale);
            }
        }

        // ensure player has enough free inventory slots / container slots / available burden to receive items
        var itemsToReceive = new ItemsToReceive(player);

        foreach (var defaultItemProfile in defaultItemProfiles)
        {
            itemsToReceive.Add(defaultItemProfile.WeenieClassId, defaultItemProfile.Amount);

            if (itemsToReceive.PlayerExceedsLimits)
                break;
        }

        if (!itemsToReceive.PlayerExceedsLimits)
        {
            foreach (var uniqueItem in uniqueItems)
            {
                itemsToReceive.Add(uniqueItem.WeenieClassId, uniqueItem.StackSize ?? 1);

                if (itemsToReceive.PlayerExceedsLimits)
                    break;
            }
        }

        if (itemsToReceive.PlayerExceedsLimits)
        {
            if (player.Session?.Network is not null)
            {
                if (itemsToReceive.PlayerExceedsAvailableBurden)
                    player.Session.Network.EnqueueSend(new GameEventCommunicationTransientString(player.Session, "You are too encumbered to buy that!"));
                else if (itemsToReceive.PlayerOutOfInventorySlots)
                    player.Session.Network.EnqueueSend(new GameEventCommunicationTransientString(player.Session, "You do not have enough pack space to buy that!"));
                else if (itemsToReceive.PlayerOutOfContainerSlots)
                    player.Session.Network.EnqueueSend(new GameEventCommunicationTransientString(player.Session, "You do not have enough container slots to buy that!"));
            }

            __result = false;
            return false;
        }

        // ideally the creation of the wo's would be delayed even further,
        // and all validations would be performed on weenies beforehand
        // this would require:
        // - a forEach helper function to iterate through both defaultItemProfiles (ItemProfiles) and uniqueItems (WorldObjects),
        //   so that 2 foreach iterators don't have to be written each time
        // - weenie to have more functions that mimic the functionality of WorldObject

        // create world objects for default items
        var defaultItems = new List<WorldObject>();

        foreach (var defaultItemProfile in defaultItemProfiles)
            defaultItems.AddRange(__instance.ItemProfileToWorldObjects(defaultItemProfile));

        var purchaseItems = defaultItems.Concat(uniqueItems).ToList();

        if (__instance.IsBusy && purchaseItems.Any(i => i.GetProperty(PropertyBool.VendorService) == true))
        {
            player.SendWeenieErrorWithString(WeenieErrorWithString._IsTooBusyToAcceptGifts, __instance.Name);
            Vendor.CleanupCreatedItems(defaultItems);
            __result = false;
            return false;
        }

        // check uniques
        if (!player.CheckUniques(purchaseItems, __instance))
        {
            Vendor.CleanupCreatedItems(defaultItems);
            __result = false;
            return false;
        }

        // calculate price
        uint totalPrice = 0;

        foreach (var item in purchaseItems)
        {
            // Use GetBuyCost (what player pays to buy) not GetSellCost (what vendor pays when player sells)
            var cost = __instance.GetBuyCost(item);

            // detect rollover?
            totalPrice += (uint)cost;
        }

        // verify player has enough currency
        if (__instance.AlternateCurrency == null)
        {
            //Add in player cash
            var cash = player.GetCash();
            if (cash + player.CoinValue < totalPrice)
            {
                var vendorWcid = __instance.WeenieClassId;
                var vendorName = __instance.Name;
                player.SendMessage($"[LeyLineLedger DEBUG] Insufficient pyreals: need {totalPrice:N0}, have {cash:N0} banked + {player.CoinValue:N0} CoinValue = {cash + player.CoinValue:N0} total.");
                player.SendMessage($"  - VENDOR INFO: {vendorName} (WCID {vendorWcid}) accepts pyreals");
                Vendor.CleanupCreatedItems(defaultItems);
                __result = false;
                return false;
            }
        }
        else
        {
            var altWcid = __instance.AlternateCurrency.Value;
            var altInInv = (uint)player.GetNumInventoryItemsOfWCID(altWcid);

            // Add banked amount
            var bankedItem = PatchClass.Settings?.Items?.Where(x => x.Id == altWcid).FirstOrDefault();
            var bankedAmount = 0u;
            if (bankedItem is not null)
                bankedAmount = (uint)player.GetBanked(bankedItem.Prop);

            // Add pyreal equivalent for MMD-style currencies
            var currencyEntry = PatchClass.Settings?.Currencies?.FirstOrDefault(c => c.Id == altWcid);
            uint pyrealEquivalent = 0;
            if (currencyEntry != null && currencyEntry.GetPyrealValue() > 0)
            {
                var pyreals = player.GetTotalPyreals();
                pyrealEquivalent = (uint)(pyreals / currencyEntry.GetPyrealValue());
            }

            // Add Zef equivalent
            uint zefEquivalent = 0;
            if (PatchClass.Settings?.AltCurrencyValues?.ContainsKey(altWcid) == true && bankedItem != null)
            {
                long zefs = player.GetBanked(PatchClass.Settings.AltCurrencyProperty);
                int zefValue = PatchClass.Settings.AltCurrencyValues[altWcid];
                zefEquivalent = (uint)(zefs / zefValue);
            }

            var playerAltCurrency = altInInv + bankedAmount + pyrealEquivalent + zefEquivalent;

            if (playerAltCurrency < totalPrice)
            {
                var currencyName = currencyEntry?.Name ?? bankedItem?.Name ?? $"WCID {altWcid}";
                var altWeenie = DatabaseManager.World.GetCachedWeenie(altWcid);
                var altWeenieName = altWeenie?.GetName() ?? "Unknown";
                var vendorWcid = __instance.WeenieClassId;
                var vendorName = __instance.Name;

                player.SendMessage($"[LeyLineLedger DEBUG] Insufficient {currencyName}: need {totalPrice:N0}, have {playerAltCurrency:N0} total.");
                player.SendMessage($"  - Inventory: {altInInv:N0} | Banked: {bankedAmount:N0} | PyrealEquiv: {pyrealEquivalent:N0} | ZefEquiv: {zefEquivalent:N0}");
                player.SendMessage($"  - TotalPyreals: {player.GetTotalPyreals():N0} | PyrealValue: {currencyEntry?.GetPyrealValue() ?? 0:N0}/unit | Zefs: {player.GetBanked(PatchClass.Settings?.AltCurrencyProperty ?? 0):N0}");
                player.SendMessage($"  - VENDOR INFO: {vendorName} (WCID {vendorWcid}) accepts {altWeenieName} (WCID {altWcid})");
                Vendor.CleanupCreatedItems(defaultItems);
                __result = false;
                return false;
            }
        }

        // everything is verified at this point

        // send transaction to player for further processing
        player.FinalizeBuyTransaction(__instance, defaultItems, uniqueItems, totalPrice);

        __result = true;
        return false;
    }

    // Pays part of a pyreal-denominated cost from pea stacks (Value × stack) before coin stacks are consumed.
    static void SpendPeasForPyrealAmount(Player player, ref uint amount)
    {
        if (amount == 0)
            return;

        long rem = amount;
        var peas = player.AllItems()
            .Where(o => PeaPyrealWcids.IsPea(o.WeenieClassId) && PeaPyrealWcids.GetPyrealValue(o) > 0)
            .OrderBy(o => PeaPyrealWcids.GetPyrealValue(o))
            .ToList();

        foreach (var item in peas)
        {
            if (rem <= 0)
                break;

            long stackVal = PeaPyrealWcids.GetPyrealValue(item);
            if (stackVal <= 0)
                continue;

            if (stackVal <= rem)
            {
                var n = item.StackSize ?? 1;
                if (!player.TryConsumeFromInventoryWithNetworking(item, n))
                    continue;

                rem -= stackVal;
                continue;
            }

            long unit = item.Value ?? 0;
            if (unit <= 0)
                continue;

            int stackSize = item.StackSize ?? 1;
            var need = (int)Math.Min(stackSize, (int)((rem + unit - 1) / unit));
            if (need <= 0)
                continue;

            if (!player.TryConsumeFromInventoryWithNetworking(item, need))
                continue;

            rem -= (long)need * unit;
            if (rem < 0)
                rem = 0;

            break;
        }

        amount = rem <= 0 ? 0 : (uint)Math.Min(rem, uint.MaxValue);
    }
}
