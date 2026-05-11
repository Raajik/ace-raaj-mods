using System.Collections.Generic;

namespace SpellSiphon;

// ACE builds purchased default-vendor stacks via Vendor.ItemProfileToWorldObjects (fresh WO from weenie).
// Without this, StackUnitValue from the shop template is not applied to those clones, so cost/quantity breaks.
internal static class VendorStackUnitPricePostfix
{
	public static void Postfix(ItemProfile itemProfile, List<WorldObject> __result)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.EnableVendorSales || __result == null || __result.Count == 0)
			return;

		foreach (WorldObject? wo in __result)
		{
			if (wo == null)
				continue;

			if ((wo.MaxStackSize ?? 0) <= 0)
				continue;

			int unit = 0;
			int maxBuy = 250;
			if (wo.WeenieClassId == s.SpellsiphonToolWcid)
			{
				unit = s.VendorPrice;
				maxBuy = System.Math.Clamp(s.VendorSpellsiphonStackSize, 1, 250);
			}
			else if (wo.WeenieClassId == s.ManaLatticeWcid)
			{
				unit = s.VendorManaLatticePrice;
				maxBuy = System.Math.Clamp(s.VendorManaLatticeMaxBuy, 1, 250);
			}
			else
			{
				continue;
			}

			wo.SetProperty(PropertyInt.StackUnitValue, unit);
			int sz = wo.StackSize ?? 1;
			wo.SetStackSize(sz);
		}
	}
}
