using System.Reflection;
using ACE.Server.Mods;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

/// <summary>
/// Reads Overtinked's custom imbue configuration via reflection so BSS doesn't need a
/// hard project reference. Custom imbue flags are stored as a bitmask on items at
/// PropertyInt 40133 (Cleaving=2, NetherRending=4, Hemorrhage=8, Shatter=16).
/// WCIDs are read from Overtinked's live CurrentSettings so they stay in sync with
/// whatever is configured in Overtinked/Settings.json.
/// </summary>
public static class OvertinkedImbueInterop
{
    // PropertyInt 40133 = OvertinkedImbueStore.CustomImbuePropertyInt
    const int CustomImbuePropId = 40133;

    // Bitmask values from OvertinkedImbueFlags
    const int CleavingBit      = 2;
    const int NetherRendingBit = 4;
    const int HemorrhageBit    = 8;
    const int ShatterBit       = 16;

    static bool _tried;
    static uint _hemorrhageWcid;
    static uint _cleavingWcid;
    static uint _netherWcid;
    static uint _shatterWcid;

    public static void EnsureInterop()
    {
        if (_tried) return;
        _tried = true;

        try
        {
            var asm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => string.Equals(a.GetName().Name, "Overtinked", StringComparison.Ordinal));

            if (asm == null)
            {
                ModManager.Log("[BSS→Overtinked] Assembly not found — custom imbue salvage disabled.", ModManager.LogLevel.Warn);
                return;
            }

            var patchClass = asm.GetType("Overtinked.PatchClass");
            var settingsField = patchClass?.GetField("CurrentSettings",
                BindingFlags.NonPublic | BindingFlags.Static);
            var settings = settingsField?.GetValue(null);

            if (settings == null)
            {
                ModManager.Log("[BSS→Overtinked] CurrentSettings is null — custom imbue salvage disabled.", ModManager.LogLevel.Warn);
                return;
            }

            _hemorrhageWcid = FirstWcid(settings, "HemorrhageImbue");
            _cleavingWcid   = FirstWcid(settings, "CleavingImbue");
            _netherWcid     = FirstWcid(settings, "NetherRendingImbue");
            _shatterWcid    = FirstWcid(settings, "ShatterImbue");

            ModManager.Log(
                $"[BSS→Overtinked] Custom imbue WCIDs: Hemorrhage={_hemorrhageWcid}, Cleaving={_cleavingWcid}, Nether={_netherWcid}, Shatter={_shatterWcid}",
                ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS→Overtinked] Interop failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static uint FirstWcid(object settings, string configPropName)
    {
        var config = settings.GetType().GetProperty(configPropName)?.GetValue(settings);
        if (config == null) return 0;
        var wcids = config.GetType().GetProperty("SalvageWcids")?.GetValue(config) as uint[];
        return wcids?.Length > 0 ? wcids[0] : 0;
    }

    // PropertyInt 40136 = source WCID stamped by TryApplyBuffedImbue (Hematite, Malachite, Lavender Jade, etc.)
    const int BuffedJewelryWcidPropId = 40136;

    // ── Per-item flag checks ────────────────────────────────────────────────

    public static int GetCustomFlags(WorldObject item)
        => item?.GetProperty((PropertyInt)CustomImbuePropId) ?? 0;

    public static bool HasHemorrhage(int flags)    => (flags & HemorrhageBit)    != 0;
    public static bool HasCleaving(int flags)      => (flags & CleavingBit)      != 0;
    public static bool HasShatter(int flags)       => (flags & ShatterBit)       != 0;
    public static bool HasNetherRending(int flags) => (flags & NetherRendingBit) != 0;

    /// <summary>
    /// Returns the salvage WCID stamped on this item by Overtinked's TryApplyBuffedImbue
    /// (PropertyInt 40136), or 0 if none. Use this to grant the correct jewelry salvage
    /// (Hematite, Malachite, Lavender Jade, etc.) on auto-salvage.
    /// </summary>
    public static uint GetBuffedJewelryWcid(WorldObject item)
        => (uint)(item?.GetProperty((PropertyInt)BuffedJewelryWcidPropId) ?? 0);

    // ── Configured WCIDs (first entry from Overtinked settings) ────────────

    public static uint HemorrhageWcid => _hemorrhageWcid;
    public static uint CleavingWcid   => _cleavingWcid;
    public static uint NetherWcid     => _netherWcid;
    public static uint ShatterWcid    => _shatterWcid;
}
