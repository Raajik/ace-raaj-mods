namespace CommonGoals;

public class PatchClass(BasicMod mod, string settingsName = "Settings.json")
    : BasicPatch<Settings>(mod, settingsName)
{
    public override void Start()
    {
        base.Start();
        if (Settings?.Enable == true)
            ModC.Harmony.PatchAll(typeof(PersonalLoot).Assembly);
    }

    public override void Stop()
    {
        ModC.Harmony.UnpatchAll(ModC.Harmony.Id);
        base.Stop();
    }
}
