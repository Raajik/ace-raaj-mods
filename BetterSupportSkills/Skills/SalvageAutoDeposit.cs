using System.Collections.Concurrent;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Mods;
using ACE.Server.WorldObjects;
using ACE.Server.Network;
using ACE.Server.Network.GameMessages.Messages;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.SalvageSkill))]
public static class SalvageAutoDeposit
{
    // Per-player explicit toggle. Missing key → use SalvageSettings.DefaultAutoSalvageEnabled.
    static readonly ConcurrentDictionary<uint, bool> AutoSalvageEnabled = new();
    static readonly ConcurrentDictionary<uint, Dictionary<int, double>> PlayerAccumulated = new();
    static readonly ConcurrentDictionary<uint, DateTime> LastMessageTime = new();
    const int MESSAGE_INTERVAL_SECONDS = 60;

    // Category MaterialTypes (no direct salvage bag) and their member types.
    static readonly Dictionary<int, int[]> MaterialTypeCategories = new()
    {
        { 3, new[] { 4, 5, 6, 7, 8 } },           // Cloth
        { 9, new[] { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50 } }, // Gem
        { 56, new[] { 57, 58, 59, 60, 61, 62, 63, 64 } }, // Metal
        { 65, new[] { 66, 67, 68, 69, 70, 71 } }, // Stone
        { 72, new[] { 73, 74, 75, 76, 77 } },     // Wood
    };

    static bool DefaultAutoSalvageFromSettings()
    {
        try
        {
            return PatchClass.Settings?.Salvage?.DefaultAutoSalvageEnabled != false;
        }
        catch
        {
            return true;
        }
    }

    public static bool IsEnabled(Player player)
    {
        if (player is null)
            return false;
        uint guid = player.Guid.Full;
        if (AutoSalvageEnabled.TryGetValue(guid, out bool v))
            return v;
        return DefaultAutoSalvageFromSettings();
    }

    public static void SetEnabled(Player player, bool enabled)
    {
        if (player is null)
            return;
        AutoSalvageEnabled[player.Guid.Full] = enabled;
    }

    // ── Skill gate: returns salvage rate (0.0–1.0) based on highest tinkering skill ──

    // Fraction of full intended salvage units (workmanship/structure/bag units) banked: 50% trained, 100% specialized, 0% untrained.
    // TrainedPercent/SpecializedPercent in SalvageSettings are deprecated for this path (kept for JSON compatibility only).
    public static double GetSalvageRate(Player player)
    {
        if (PatchClass.Settings?.Salvage == null)
            return 0.0;

        var skills = new[] { Skill.ArmorTinkering, Skill.WeaponTinkering, Skill.ItemTinkering, Skill.MagicItemTinkering };
        var best = SkillAdvancementClass.Untrained;

        foreach (var skill in skills)
        {
            var cs = player.GetCreatureSkill(skill);
            if (cs != null && cs.AdvancementClass > best)
                best = cs.AdvancementClass;
        }

        return best switch
        {
            SkillAdvancementClass.Specialized => 1.0,
            SkillAdvancementClass.Trained => 0.5,
            _ => 0.0,
        };
    }

    // ── Public API for cross-mod auto-salvage ────────────────────────────────────────

    /// <summary>
    /// Attempts to auto-salvage a single item. Returns true if the item was salvaged and destroyed.
    /// Caller is responsible for removing from corpse/inventory before calling.
    /// </summary>
    public static bool TryAutoSalvageItem(Player player, WorldObject item)
    {
        if (player == null || item == null)
            return false;

        var rate = GetSalvageRate(player);
        if (rate <= 0.0)
            return false;

        var settings = PatchClass.Settings;
        if (settings?.EnableSalvage != true)
            return false;

        var salvageSettings = settings.Salvage;
        if (salvageSettings == null)
            return false;

        // Try material-type salvage first (armor/weapons with MaterialType)
        if (TryGetMaterialSalvage(player, item, salvageSettings, out var materialIndex, out var rawUnits))
        {
            int bankProp = GetMaterialBankProperty(materialIndex);
            long current = player.GetProperty((PropertyInt64)bankProp) ?? 0;
            double depositUnits = rawUnits * rate;
            player.SetProperty((PropertyInt64)bankProp, (long)(current + depositUnits));

            AccumulateForMessage(player, materialIndex, depositUnits);
            return true;
        }

        // Raw salvage bags (WCID 20981–21089)
        if (IsSalvageStack(item.WeenieClassId))
        {
            materialIndex = GetMaterialIndex(item.WeenieClassId);
            if (materialIndex < 0) return false;

            rawUnits = GetSalvageUnits(item, salvageSettings.UnitsPerItem);
            if (rawUnits <= 0) return false;

            int bankProp = GetMaterialBankProperty(materialIndex);
            long current = player.GetProperty((PropertyInt64)bankProp) ?? 0;
            double depositUnits = rawUnits * rate;
            player.SetProperty((PropertyInt64)bankProp, (long)(current + depositUnits));

            AccumulateForMessage(player, materialIndex, depositUnits);
            return true;
        }

        return false;
    }

    // ── Intercept salvage bags entering inventory ────────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.TryCreateInInventoryWithNetworking), new[] { typeof(WorldObject) })]
    public static bool PreTryCreateInInventory(Player __instance, WorldObject item, ref bool __result)
    {
        if (__instance is null || item is null)
            return true;

        if (!IsEnabled(__instance))
            return true;

        var rate = GetSalvageRate(__instance);
        if (rate <= 0.0)
            return true;

        if (!IsSalvageStack(item.WeenieClassId))
            return true;

        var settings = PatchClass.Settings;
        if (settings?.EnableSalvage != true)
            return true;

        var salvageSettings = settings.Salvage;
        if (salvageSettings == null)
            return true;

        int materialIndex = GetMaterialIndex(item.WeenieClassId);
        if (materialIndex < 0)
            return true;

        int rawUnits = GetSalvageUnits(item, salvageSettings.UnitsPerItem);
        if (rawUnits <= 0)
            return true;

        int bankProp = GetMaterialBankProperty(materialIndex);
        long current = __instance.GetProperty((PropertyInt64)bankProp) ?? 0;
        double depositUnits = rawUnits * rate;
        __instance.SetProperty((PropertyInt64)bankProp, (long)(current + depositUnits));

        AccumulateForMessage(__instance, materialIndex, depositUnits);

        item.Destroy();
        __result = true;
        return false;
    }

    // ── Helpers ──────────────────────────────────────────────────────────────

    static bool TryGetMaterialSalvage(Player player, WorldObject item, SalvageSettings settings, out int materialIndex, out int rawUnits)
    {
        materialIndex = -1;
        rawUnits = 0;

        var materialType = item.GetProperty(PropertyInt.MaterialType);
        if (!materialType.HasValue) return false;

        int matType = (int)materialType.Value;

        if (!Player.MaterialSalvage.TryGetValue(matType, out var salvageWcid) || salvageWcid <= 0)
        {
            // Category fallback: pick randomly from player's least-banked materials in the category
            if (!MaterialTypeCategories.TryGetValue(matType, out var categoryMembers))
                return false;

            int? selectedWcid = PickLeastBankedMaterial(player, categoryMembers);
            if (!selectedWcid.HasValue)
                return false;

            salvageWcid = selectedWcid.Value;
        }

        materialIndex = salvageWcid - 20981;
        if (materialIndex < 0 || materialIndex > 108) return false;

        int work = item.ItemWorkmanship ?? 0;
        if (work > 0)
            rawUnits = work;
        else
        {
            int structure = item.Structure ?? 0;
            rawUnits = structure > 0 ? structure : settings.UnitsPerItem;
        }

        return true;
    }

    /// <summary>
    /// Given a list of MaterialType IDs, finds the ones with the lowest banked amount
    /// and returns a random valid salvage WCID from that subset.
    /// </summary>
    static int? PickLeastBankedMaterial(Player player, int[] materialTypes)
    {
        var candidates = new List<(int MaterialType, int SalvageWcid, long Banked)>();

        foreach (var mt in materialTypes)
        {
            if (!Player.MaterialSalvage.TryGetValue(mt, out var wcid) || wcid <= 0)
                continue;

            int matIndex = wcid - 20981;
            if (matIndex < 0 || matIndex > 108)
                continue;

            int bankProp = GetMaterialBankProperty(matIndex);
            long banked = player.GetProperty((PropertyInt64)bankProp) ?? 0;
            candidates.Add((mt, wcid, banked));
        }

        if (candidates.Count == 0)
            return null;

        long minBanked = candidates.Min(c => c.Banked);
        var leastBanked = candidates.Where(c => c.Banked == minBanked).ToList();

        var pick = leastBanked[Random.Shared.Next(leastBanked.Count)];
        return pick.SalvageWcid;
    }

    public static int GetMaterialBankProperty(int materialIndex)
    {
        var baseProp = PatchClass.Settings?.Salvage?.MaterialBankPropertyBase ?? 40201;
        return baseProp + materialIndex;
    }

    static bool IsSalvageStack(uint wcid) => wcid >= 20981 && wcid <= 21089;

    static int GetMaterialIndex(uint wcid)
    {
        int index = (int)wcid - 20981;
        return (index >= 0 && index <= 108) ? index : -1;
    }

    static int GetSalvageUnits(WorldObject item, int unitsPerItem)
    {
        int work = item.ItemWorkmanship ?? 0;
        if (work > 0)
            return work;
        int structure = item.Structure ?? 0;
        if (structure > 0)
            return structure;
        return unitsPerItem;
    }

    static void AccumulateForMessage(Player player, int materialIndex, double depositUnits)
    {
        var playerId = player.Guid.Full;
        var accum = PlayerAccumulated.GetOrAdd(playerId, _ => new Dictionary<int, double>());
        lock (accum)
        {
            if (!accum.ContainsKey(materialIndex))
                accum[materialIndex] = 0;
            accum[materialIndex] += depositUnits;
        }

        var now = DateTime.UtcNow;
        if (!LastMessageTime.TryGetValue(playerId, out var lastTime) ||
            (now - lastTime).TotalSeconds >= MESSAGE_INTERVAL_SECONDS)
        {
            LastMessageTime[playerId] = now;
            SendAccumulatedMessage(player, accum);
        }
    }

    static void SendAccumulatedMessage(Player player, Dictionary<int, double> accum)
    {
        if (accum.Count == 0)
            return;

        var parts = new List<string>();
        double totalBags = 0;

        lock (accum)
        {
            foreach (var kvp in accum)
            {
                int matIndex = kvp.Key;
                double units = kvp.Value;
                double bags = units / 100.0;
                totalBags += bags;
                if (bags >= 0.01)
                {
                    string matName = GetMaterialName(matIndex);
                    parts.Add($"{bags:F2} {matName}");
                }
            }
            accum.Clear();
        }

        if (parts.Count == 0)
            return;

        parts.Sort((a, b) => string.Compare(b, a, StringComparison.Ordinal));

        string msg;
        if (parts.Count == 1)
            msg = $"Auto-salvage: {parts[0]} bag(s) deposited to bank.";
        else if (parts.Count == 2)
            msg = $"Auto-salvage: {parts[0]} and {parts[1]} bag(s) deposited.";
        else
            msg = $"Auto-salvage: {string.Join(", ", parts.Take(parts.Count - 1))}, and {parts.Last()} bag(s) deposited.";

        player.SendMessage(msg);
    }

    public static string GetMaterialName(int index)
    {
        if (index < 0 || index > 108) return "Unknown";
        string[] names =
        {
            /* 20981 */ "Armoredillo Hide",
            /* 20982 */ "Bronze",
            /* 20983 */ "Ceramic",
            /* 20984 */ "Gold",
            /* 20985 */ "Granite",
            /* 20986 */ "Iron",
            /* 20987 */ "Linen",
            /* 20988 */ "Mahogany",
            /* 20989 */ "Oak",
            /* 20990 */ "Pine",
            /* 20991 */ "Reedshark Hide",
            /* 20992 */ "Satin",
            /* 20993 */ "Steel",
            /* 20994 */ "Velvet",
            /* 20995 */ "Wool",
            /* 20996 */ "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown",
            /* 21004 */ "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown",
            /* 21012 */ "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown",
            /* 21020 */ "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown",
            /* 21028 */ "Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown",
            /* 21034 */ "Agate",
            /* 21035 */ "Amber",
            /* 21036 */ "Amethyst",
            /* 21037 */ "Aquamarine",
            /* 21038 */ "Azurite",
            /* 21039 */ "Black Garnet",
            /* 21040 */ "Black Opal",
            /* 21041 */ "Bloodstone",
            /* 21042 */ "Brass",
            /* 21043 */ "Carnelian",
            /* 21044 */ "Citrine",
            /* 21045 */ "Copper",
            /* 21046 */ "Diamond",
            /* 21047 */ "Ebony",
            /* 21048 */ "Emerald",
            /* 21049 */ "Fire Opal",
            /* 21050 */ "Green Garnet",
            /* 21051 */ "Green Jade",
            /* 21052 */ "Gromnie Hide",
            /* 21053 */ "Hematite",
            /* 21054 */ "Imperial Topaz",
            /* 21055 */ "Ivory",
            /* 21056 */ "Jet",
            /* 21057 */ "Lapis Lazuli",
            /* 21058 */ "Lavender Jade",
            /* 21059 */ "Leather",
            /* 21060 */ "Malachite",
            /* 21061 */ "Marble",
            /* 21062 */ "Moonstone",
            /* 21063 */ "Obsidian",
            /* 21064 */ "Onyx",
            /* 21065 */ "Opal",
            /* 21066 */ "Peridot",
            /* 21067 */ "Porcelain",
            /* 21068 */ "Pyreal",
            /* 21069 */ "Red Garnet",
            /* 21070 */ "Red Jade",
            /* 21071 */ "Rose Quartz",
            /* 21072 */ "Ruby",
            /* 21073 */ "Sandstone",
            /* 21074 */ "Sapphire",
            /* 21075 */ "Serpentine",
            /* 21076 */ "Silk",
            /* 21077 */ "Silver",
            /* 21078 */ "Smokey Quartz",
            /* 21079 */ "Sunstone",
            /* 21080 */ "Teak",
            /* 21081 */ "Tiger Eye",
            /* 21082 */ "Tourmaline",
            /* 21083 */ "Turquoise",
            /* 21084 */ "White Jade",
            /* 21085 */ "White Quartz",
            /* 21086 */ "White Sapphire",
            /* 21087 */ "Yellow Garnet",
            /* 21088 */ "Yellow Topaz",
            /* 21089 */ "Zircon"
        };
        return names[index];
    }
}
