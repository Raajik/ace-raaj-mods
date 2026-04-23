namespace WorldEvents;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(WorldEvents), new PatchClass(this));
}
