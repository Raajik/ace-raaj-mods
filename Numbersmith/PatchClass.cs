
namespace Numbersmith;

[HarmonyPatch]
public class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    private static List<AngouriMathPatch> enabledPatches = new();

    // Formula patches must apply from Start() as well as OnWorldOpen(): if the mod loads after the world is
    // already up, OnWorldOpen never runs and no PatchCategory calls occur. Tear down before re-applying so a
    // normal boot (Start then OnWorldOpen) does not stack duplicate Harmony prefixes.
    public override void Start()
    {
        base.Start();
        ApplyFormulaPatches();
        ApplyRelocatedGameplayPatches();
    }

    public override async Task OnWorldOpen()
    {
        ApplyFormulaPatches();
        ApplyRelocatedGameplayPatches();
    }

    void TearDownFormulaPatches()
    {
        foreach (var patch in enabledPatches)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(patch.GetType().Name);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Numbersmith] Unpatch {patch.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
            }

            patch.Shutdown();
        }

        enabledPatches.Clear();
    }

    void ApplyFormulaPatches()
    {
        TearDownFormulaPatches();

        Settings = SettingsContainer.Settings ?? new Settings();

        if (Settings.Formulas is null || Settings.Formulas.Count == 0)
            Settings.Formulas = new Settings().Formulas;

        bool defaultFormulaUsed = false;

        var sb = new StringBuilder("[Numbersmith] Loaded patches:\n");
        foreach (var patchSettings in Settings.Formulas)
        {
            //Basic check for if the patch is supplying the default formula to the settings.  Settings saved if true
            if (string.IsNullOrWhiteSpace(patchSettings.Formula)) defaultFormulaUsed = true;

            var patch = patchSettings.CreatePatch();

            try
            {
                if (patchSettings.Enabled)
                {
                    patch.Start();
                    enabledPatches.Add(patch);
                }
                sb.AppendLine($"{patchSettings.PatchType} patched with:\n  {patch.Formula}");

            }
            catch (Exception ex)
            {
                ModManager.Log($"[Numbersmith] Failed to patch {patchSettings.PatchType}: {ex.Message}", ModManager.LogLevel.Error);
                sb.AppendLine($"Failed to patch {patchSettings.PatchType}:\n  {patch.Formula}");
            }
        }
        if (Settings.Verbose)
            ModManager.Log(sb.ToString());

        if (defaultFormulaUsed)
        {
            try
            {
                var path = Path.Combine(ModManager.ModPath, nameof(Numbersmith), "Settings.json");
                File.WriteAllText(path, System.Text.Json.JsonSerializer.Serialize(Settings, new System.Text.Json.JsonSerializerOptions { WriteIndented = true }));
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Numbersmith] Failed to save settings with default formulas: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }

    public override void Stop()
    {
        TearDownFormulaPatches();
        TearDownRelocatedGameplayPatches();
        base.Stop();
    }

    void TearDownRelocatedGameplayPatches()
    {
        foreach (var name in RelocatedGameplayCategories)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(name);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Numbersmith] Unpatch {name}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }

    static readonly string[] RelocatedGameplayCategories =
    {
        nameof(LifeMagicElementalMod),
        nameof(DamageOverTimeConversion),
    };

    void ApplyRelocatedGameplayPatches()
    {
        TearDownRelocatedGameplayPatches();

        Settings = SettingsContainer.Settings ?? new Settings();

        if (Settings.EnableLifeMagicElementalMod)
            ModC.Harmony.PatchCategory(nameof(LifeMagicElementalMod));

        if (Settings.EnableDamageOverTimeConversion)
            ModC.Harmony.PatchCategory(nameof(DamageOverTimeConversion));
    }
}
