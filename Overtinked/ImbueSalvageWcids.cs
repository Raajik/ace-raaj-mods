namespace Overtinked;

// Standard imbue salvage WCIDs (both normal and quest-reward pairs). Used for failure -> Workmanship when EnableDefaultImbueFailureWorkmanship.
public static class ImbueSalvageWcids
{
    // Retail imbue salvages: Armor Rending, Crippling Blow, Critical Strike, element rendings, defense imbues, etc.
    private static readonly HashSet<uint> DefaultWcids = new()
    {
        21079, 29582,  // Sunstone (Armor Rending)
        21049, 29575,  // Fire Opal (Crippling Blow)
        21040, 29573,  // Black Opal (Critical Strike)
        21037, 29571,  // Aquamarine (Cold Rending)
        21039,         // Black Garnet (Pierce Rending)
        21048, 29574,  // Emerald (Acid Rending)
        21056,         // Jet (Electric Rending)
        21069,         // Red Garnet (Fire Rending)
        21054, 29577,  // Imperial Topaz (Slash Rending)
        21086, 30260,  // White Sapphire (Bludgeon Rending)
        21066,         // Peridot (Melee Defense)
        21088,         // Yellow Topaz (Missile Defense)
        21089,         // Zircon (Magic Defense)
    };

    // Maps salvage WCID to the imbue effect it would apply (for chaos accidental success).
    private static readonly Dictionary<uint, ImbuedEffectType> WcidToImbue = new()
    {
        [21079] = ImbuedEffectType.ArmorRending,
        [29582] = ImbuedEffectType.ArmorRending,
        [21049] = ImbuedEffectType.CripplingBlow,
        [29575] = ImbuedEffectType.CripplingBlow,
        [21040] = ImbuedEffectType.CriticalStrike,
        [29573] = ImbuedEffectType.CriticalStrike,
        [21037] = ImbuedEffectType.ColdRending,
        [29571] = ImbuedEffectType.ColdRending,
        [21039] = ImbuedEffectType.PierceRending,
        [21048] = ImbuedEffectType.AcidRending,
        [29574] = ImbuedEffectType.AcidRending,
        [21056] = ImbuedEffectType.ElectricRending,
        [21069] = ImbuedEffectType.FireRending,
        [21054] = ImbuedEffectType.SlashRending,
        [29577] = ImbuedEffectType.SlashRending,
        [21086] = ImbuedEffectType.BludgeonRending,
        [30260] = ImbuedEffectType.BludgeonRending,
        [21066] = ImbuedEffectType.MeleeDefense,
        [21088] = ImbuedEffectType.MissileDefense,
        [21089] = ImbuedEffectType.MagicDefense,
    };

    public static HashSet<uint> Build(Settings s)
    {
        var set = new HashSet<uint>(DefaultWcids);
        if (s.HemorrhageImbue?.SalvageWcids != null)
            foreach (uint w in s.HemorrhageImbue.SalvageWcids)
                set.Add(w);
        if (s.CleavingImbue?.SalvageWcids != null)
            foreach (uint w in s.CleavingImbue.SalvageWcids)
                set.Add(w);
        if (s.NetherRendingImbue?.SalvageWcids != null)
            foreach (uint w in s.NetherRendingImbue.SalvageWcids)
                set.Add(w);
        return set;
    }

    public static ImbuedEffectType? GetImbueForWcid(uint wcid)
    {
        return WcidToImbue.TryGetValue(wcid, out var effect) ? effect : null;
    }

    public static bool IsImbueSalvage(uint wcid, Settings s)
    {
        return Build(s).Contains(wcid);
    }
}
