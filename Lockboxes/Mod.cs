using ACE.Server.Mods;

namespace Lockboxes;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(Lockboxes), new PatchClass(this));
}