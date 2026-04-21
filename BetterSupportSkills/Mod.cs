namespace BetterSupportSkills;

public class Mod : ACE.Shared.Mods.BasicMod
{
    public Mod() : base() => Setup(nameof(BetterSupportSkills), new PatchClass(this));
}