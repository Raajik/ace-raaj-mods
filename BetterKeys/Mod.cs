using ACE.Server.Mods;

namespace BetterKeys;

public class Mod : BasicMod
{
    public Mod()
        : base() => Setup(nameof(BetterKeys), new PatchClass(this));
}