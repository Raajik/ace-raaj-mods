namespace Xenology;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(Xenology), new PatchClass(this));
}
