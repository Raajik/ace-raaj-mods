namespace Empower;

public class Mod : ACE.Shared.Mods.BasicMod
{
    public Mod() : base() => Setup(nameof(Empower), new PatchClass(this));
}