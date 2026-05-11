using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace SpellSiphon;

/// <summary>
/// Injects the SpellSiphon tool and Mana Lattice into vendor inventories.
/// Sells at both mages (spell component vendors) and jewelers (jewelry/gem vendors).
/// </summary>
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

		InjectTool(__instance, vendorWcid, PatchClass.Settings?.SpellsiphonToolWcid ?? 850200, PatchClass.Settings?.VendorPrice ?? 10000);
		InjectTool(__instance, vendorWcid, PatchClass.Settings?.ManaLatticeWcid ?? 850201, 5000);
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

	static void InjectTool(Vendor vendor, uint vendorWcid, uint toolWcid, int price)
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

		tool.Value = price;
		tool.ContainerId = vendor.Guid.Full;

		uint spellsiphonWcid = PatchClass.Settings?.SpellsiphonToolWcid ?? 850200;
		if (toolWcid == spellsiphonWcid)
		{
			int stack = Math.Clamp(PatchClass.Settings?.VendorSpellsiphonStackSize ?? 250, 1, 250);
			tool.SetProperty(PropertyInt.MaxStackSize, stack);
			tool.SetProperty(PropertyInt.StackSize, stack);
		}

		tool.CalculateObjDesc();

		if (vendor.DefaultItemsForSale != null && !vendor.DefaultItemsForSale.ContainsKey(tool.Guid)
			&& vendor.UniqueItemsForSale != null && !vendor.UniqueItemsForSale.ContainsKey(tool.Guid))
		{
			tool.SoldTimestamp = Time.GetUnixTime();
			vendor.UniqueItemsForSale[tool.Guid] = tool;
			ModManager.Log($"[SpellSiphon] Added {tool.Name} to vendor {vendor.Name} (WCID {vendorWcid}) for {price:N0} pyreals.", ModManager.LogLevel.Info);
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
