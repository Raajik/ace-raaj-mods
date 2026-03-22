namespace EmpyreanAlteration;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(EmpyreanAlteration), new PatchClass(this));
}
