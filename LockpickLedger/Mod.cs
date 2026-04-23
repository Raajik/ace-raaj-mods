namespace LockpickLedger;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(LockpickLedger), new PatchClass(this));
}
