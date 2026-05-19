namespace Spellsiphon;

public class Mod : BasicMod
{
	public Mod() : base() => Setup(nameof(Spellsiphon), new PatchClass(this));
}

