namespace ValheelContent;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(ValheelContent), new PatchClass(this));
}
