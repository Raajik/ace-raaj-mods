namespace CommonGoals;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(CommonGoals), new PatchClass(this));
}
