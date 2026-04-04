namespace Gemcrafter;

public class Mod : BasicMod
{
	public Mod() : base() => Setup(nameof(Gemcrafter), new PatchClass(this));
}

