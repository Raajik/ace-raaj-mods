namespace EasyServerSettings;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(EasyServerSettings), new PatchClass(this));
}
