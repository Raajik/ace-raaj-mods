namespace AureatePath;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(AureatePath), new PatchClass(this));
}