using ACE.Server.Mods;
using HarmonyLib;
using ACE.Server.Network;

namespace BetterChestLoot;

/// <summary>
/// BetterChestLoot mod entry point.
/// </summary>
public class Mod : IHarmonyMod
{
    public static ModContainer Container => ModManager.GetModContainerByPath(Mod.ModPath);
    public static string ModPath = Path.Combine(ModManager.ModPath, nameof(BetterChestLoot));

    // IDs are used by Harmony to separate multiple patches
    const string ID = "com.ACE.ACEmulator.BetterChestLoot";
    protected static Harmony Harmony { get; set; } = new(ID);

    private bool disposedValue;

    #region Initialize / Dispose (called by ACE)

    public void Initialize()
    {
        ModManager.Log($"BetterChestLoot: Initializing with {typeof(PatchClass).Assembly.FullName}", ModManager.LogLevel.Info);
        Harmony.PatchAll();
        ModManager.Log($"BetterChestLoot: Patches applied, {Harmony.GetPatchedMethods()?.Count() ?? 0} methods patched", ModManager.LogLevel.Info);
    }

    protected virtual void Dispose(bool disposing)
    {
        if (!disposedValue)
        {
            if (disposing)
            {
                Harmony.UnpatchAll(ID);
            }

            disposedValue = true;
        }
    }

    public void Dispose()
    {
        // Do not change this code. Put cleanup code in 'Dispose(bool disposing)' method
        Dispose(disposing: true);
        GC.SuppressFinalize(this);
    }
    #endregion
}