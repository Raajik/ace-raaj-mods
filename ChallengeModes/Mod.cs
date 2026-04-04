namespace ChallengeModes;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(ChallengeModes), new PatchClass(this));
}
