using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace SpellSiphon;

// Injects SpellSiphon tool + Mana Lattice into vendor DefaultItemsForSale (trade-note style:
// StackUnitValue = unit pyreals, template StackSize 1, VendorShopCreateListStackSize = max buy).
internal static class VendorIntegration
{
	// WCIDs for spell components — identifies "mage" vendors
	static readonly HashSet<uint> SpellComponentWcids = new()
	{
		20631, // Prismatic Taper
		691, 692, 693, 694, 695, 696, 697, 698, 699, // Scarabs
		20628, 20629, 20630, 20632, 20633, 20634, 20635, 20636, 20637, 20638, 20639, 20640,
		20641, 20642, 20643, 20644, 20645, 20646, 20647, 20648, 20649, 20650, 20651, 20652,
		20653, 20654, 20655, 20656, 20657, 20658, 20659, 20660, 20661, 20662, 20663, 20664,
		20665, 20666, 20667, 20668, 20669, 20670, 20671, 20672, 20673, 20674, 20675, 20676, 20677,
	};

	// WCIDs for jewelry and gems — identifies "jeweler" vendors
	static readonly HashSet<uint> JewelryGemWcids = new()
	{
		294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310,
		311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321,
		2437, 2438, 2439, 2440, 2441, 2442, 2443,
	};

	public static void OnVendorApproachPrefix(Player player, VendorType action, uint altCurrencySpent, Vendor __instance)
	{
		if (PatchClass.Settings?.EnableVendorSales != true)
			return;

		if (__instance == null || player?.Session == null)
			return;

		uint vendorWcid = __instance.WeenieClassId;
		bool isMage = IsMageVendor(__instance);
		bool isJeweler = IsJewelerVendor(__instance);

		if (!isMage && !isJeweler)
			return;

		Settings? st = PatchClass.Settings;
		uint spellsiphonWcid = st?.SpellsiphonToolWcid ?? 850200;
		uint latticeWcid = st?.ManaLatticeWcid ?? 850201;
		int siphonUnit = st?.VendorPrice ?? 10000;
		int siphonMaxBuy = System.Math.Clamp(st?.VendorSpellsiphonStackSize ?? 250, 1, 250);
		int latticeUnit = st?.VendorManaLatticePrice ?? 5000;
		int latticeMaxBuy = System.Math.Clamp(st?.VendorManaLatticeMaxBuy ?? 250, 1, 250);

		InjectTool(__instance, vendorWcid, spellsiphonWcid, siphonUnit, siphonMaxBuy);
		InjectTool(__instance, vendorWcid, latticeWcid, latticeUnit, latticeMaxBuy);

		// Only jewelers get Glyph of Extraction
		if (isJeweler)
		{
			InjectGlyphs(__instance, vendorWcid, st);
		}
	}

	static void InjectGlyphs(Vendor vendor, uint vendorWcid, Settings? st)
	{
		if (st == null)
			return;

		uint baseWcid = st.GlyphExtractionBaseWcid;
		int basePrice = st.GlyphPrice;
		int pricePerTier = st.GlyphPricePerTier;
		int maxBuy = System.Math.Clamp(st.VendorGlyphStackSize, 1, 250);

		for (int tier = 0; tier <= 8; tier++)
		{
			uint wcid = baseWcid + (uint)tier;
			int price = basePrice + tier * pricePerTier;
			InjectTool(vendor, vendorWcid, wcid, price, maxBuy);
		}
		// Tier 9 (X) is reserved but hidden from vendors until level 9 spells are implemented.
	}

	static bool VendorAlreadySellsWcid(Vendor vendor, uint wcid)
	{
		if (vendor.DefaultItemsForSale != null)
		{
			foreach (WorldObject? wo in vendor.DefaultItemsForSale.Values)
			{
				if (wo != null && wo.WeenieClassId == wcid)
					return true;
			}
		}

		if (vendor.UniqueItemsForSale != null)
		{
			foreach (WorldObject? wo in vendor.UniqueItemsForSale.Values)
			{
				if (wo != null && wo.WeenieClassId == wcid)
					return true;
			}
		}

		return false;
	}

	static void ConfigureDefaultShopStack(WorldObject tool, int unitPricePyr, int maxBuyPerTransaction)
	{
		if ((tool.MaxStackSize ?? 0) > 0)
		{
			int cap = System.Math.Min(maxBuyPerTransaction, tool.MaxStackSize ?? maxBuyPerTransaction);
			tool.SetProperty(PropertyInt.StackUnitValue, unitPricePyr);
			tool.SetStackSize(1);
			tool.VendorShopCreateListStackSize = cap;
		}
		else
		{
			tool.Value = unitPricePyr;
		}
	}

	static void InjectTool(Vendor vendor, uint vendorWcid, uint toolWcid, int unitPricePyr, int maxBuyPerTransaction)
	{
		if (VendorAlreadySellsWcid(vendor, toolWcid))
			return;

		var weenie = ACE.Database.DatabaseManager.World.GetCachedWeenie(toolWcid);
		if (weenie == null)
		{
			ModManager.Log($"[SpellSiphon] VendorIntegration: Weenie {toolWcid} not found.", ModManager.LogLevel.Warn);
			return;
		}

		var tool = WorldObjectFactory.CreateNewWorldObject(weenie);
		if (tool == null)
			return;

		tool.ContainerId = vendor.Guid.Full;

		ConfigureDefaultShopStack(tool, unitPricePyr, maxBuyPerTransaction);

		tool.CalculateObjDesc();

		if (vendor.DefaultItemsForSale != null && !vendor.DefaultItemsForSale.ContainsKey(tool.Guid))
		{
			vendor.DefaultItemsForSale.Add(tool.Guid, tool);
			ModManager.Log($"[SpellSiphon] Added {tool.Name} to vendor {vendor.Name} (WCID {vendorWcid}) default shop: unit {unitPricePyr:N0} pyreals, max buy {maxBuyPerTransaction}.", ModManager.LogLevel.Info);
		}
	}

	static bool IsMageVendor(Vendor vendor)
	{
		if (vendor?.DefaultItemsForSale == null || vendor.DefaultItemsForSale.Count == 0)
			return false;

		foreach (var item in vendor.DefaultItemsForSale.Values)
		{
			if (item != null && SpellComponentWcids.Contains(item.WeenieClassId))
				return true;
		}
		return false;
	}

	static bool IsJewelerVendor(Vendor vendor)
	{
		if (vendor?.DefaultItemsForSale == null || vendor.DefaultItemsForSale.Count == 0)
			return false;

		foreach (var item in vendor.DefaultItemsForSale.Values)
		{
			if (item != null && JewelryGemWcids.Contains(item.WeenieClassId))
				return true;
		}
		return false;
	}
}
