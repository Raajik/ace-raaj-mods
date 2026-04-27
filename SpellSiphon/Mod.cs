namespace SpellSiphon;

public class Mod : BasicMod
{
	public Mod() : base() => Setup(nameof(SpellSiphon), new PatchClass(this));
}

