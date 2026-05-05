using ACE.Server.Mods;

namespace BetterLootControl;

/// <summary>
/// BetterLootControl mod entry point.
/// </summary>
public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(BetterLootControl), new PatchClass(this));
}
