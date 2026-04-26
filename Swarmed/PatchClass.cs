namespace Swarmed;

using System.Collections.Concurrent;

[HarmonyPatch]
public partial class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    internal static Settings? CurrentSettings;
    static bool _creatureExCommandsRegistered;

    // Per-player chaos escalation: counts reinforcement-triggering kills while chaos is active.
    internal static readonly ConcurrentDictionary<uint, int> ChaosKillCountByPlayer = new();

    public override void Start()
    {
        base.Start();
        Settings = SettingsContainer.Settings ?? new Settings();
        CurrentSettings = Settings;
        ApplySwarmedPatchesAndCommands();
        Features.BuddySpawns.Start(Settings);
    }

    public override async Task OnWorldOpen()
    {
        Settings = SettingsContainer.Settings ?? new Settings();
        CurrentSettings = Settings;
        ApplySwarmedPatchesAndCommands();
        Features.BuddySpawns.Start(Settings);
    }

    // Category-gated patches and command registration must run from Start() as well as OnWorldOpen(): if the mod
    // loads after the world is already up, OnWorldOpen never runs and CreatureEx spawn / variant behaviors never patch
    // (PostDie on PatchClass would still see CurrentSettings from Start).
    void ApplySwarmedPatchesAndCommands()
    {
        ModC.Harmony.PatchCategory("SwarmedCreatureEx");
        ModC.Harmony.PatchCategory("SwarmedCreatureVariation");
        foreach (var creatureType in Settings.CreatureFeatures)
            ModC.Harmony.PatchCategory(creatureType.ToString());

        // Avoid duplicate registration when both Start and OnWorldOpen run (normal boot).
        if (!_creatureExCommandsRegistered)
        {
            ModC.RegisterCommands(new[] { SwarmedFeature.CreatureEx, SwarmedFeature.Admin });
            _creatureExCommandsRegistered = true;
        }
    }

    public override void Stop()
    {
        _creatureExCommandsRegistered = false;
        Features.BuddySpawns.Stop();
        base.Stop();
    }
}
