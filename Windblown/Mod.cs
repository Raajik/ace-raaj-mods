namespace Windblown;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(Windblown), new PatchClass(this));
}
