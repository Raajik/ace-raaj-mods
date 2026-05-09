using Windblown.TrophyLines;
using Windblown.Weenies;

namespace Windblown;

[HarmonyPatch]
public partial class PatchClass(ACE.Shared.Mods.BasicMod mod, string settingsName = "Settings.json")
    : ACE.Shared.Mods.BasicPatch<Settings>(mod, settingsName)
{
    internal static Settings? Cfg;
    internal static string ModDirectory { get; private set; } = "";

    public override void Start()
    {
        base.Start();

        ResolveModDirectory();
        ReloadSettingsFromDisk();
        Cfg = Settings;

        try
        {
            if (Cfg?.EnableCustomWeenies == true)
            {
                WeenieRegistry.Initialize(ModDirectory, Cfg);
                if (Cfg.LogWeenieRegistrySummary)
                    ModManager.Log($"[Windblown] Registered {WeenieRegistry.Count} custom weenie(s): {WeenieRegistry.RegisteredWcidsString}", ModManager.LogLevel.Info);
            }
            else
            {
                ModManager.Log("[Windblown] EnableCustomWeenies = false, skipping registry load.", ModManager.LogLevel.Info);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Windblown] WeenieRegistry.Initialize FAILED: {ex}", ModManager.LogLevel.Error);
        }

        try
        {
            if (Cfg?.EnableTrophyLines == true)
            {
                TrophyLineRegistry.Initialize(ModDirectory, Cfg);
                if (Cfg.LogTrophyLinesSummary)
                {
                    var names = string.Join(", ", TrophyLineRegistry.Lines.Select(l => $"{l.Name}/{l.CreatureTypeGate}"));
                    ModManager.Log($"[Windblown] Registered {TrophyLineRegistry.Count} trophy line(s): {names}", ModManager.LogLevel.Info);
                }
            }
            else
            {
                ModManager.Log("[Windblown] EnableTrophyLines = false, skipping trophy line registry.", ModManager.LogLevel.Info);
            }

            if (Cfg?.EnableAcademyImbues == true)
                ModManager.Log("[Windblown] AcademyImbues setting present but no patch loaded.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Windblown] TrophyLineRegistry.Initialize FAILED: {ex}", ModManager.LogLevel.Error);
        }
    }

    public override void Stop()
    {
        try
        {
            TrophyLineRegistry.Clear();
            WeenieRegistry.Clear();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Windblown] Stop cleanup error: {ex.Message}", ModManager.LogLevel.Warn);
        }
        base.Stop();
    }

    static void ResolveModDirectory()
    {
        try
        {
            var asm = typeof(PatchClass).Assembly;
            var loc = asm.Location;
            if (!string.IsNullOrWhiteSpace(loc))
            {
                ModDirectory = Path.GetDirectoryName(loc) ?? "";
                if (!string.IsNullOrEmpty(ModDirectory) && Directory.Exists(ModDirectory))
                    return;
            }

            var name = asm.GetName().Name ?? nameof(Windblown);
            ModDirectory = Path.Combine(ModManager.ModPath, name);
        }
        catch
        {
            ModDirectory = Path.Combine(ModManager.ModPath, nameof(Windblown));
        }
    }

    void ReloadSettingsFromDisk()
    {
        try
        {
            var settingsPath = Path.Combine(ModDirectory, "Settings.json");
            if (!File.Exists(settingsPath))
            {
                Settings ??= new Settings();
                return;
            }

            var json = File.ReadAllText(settingsPath);
            var opts = new JsonSerializerOptions { ReadCommentHandling = JsonCommentHandling.Skip };
            Settings = JsonSerializer.Deserialize<Settings>(json, opts) ?? new Settings();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Windblown] Failed to reload Settings.json: {ex.Message}", ModManager.LogLevel.Warn);
            Settings ??= new Settings();
        }
    }
}
