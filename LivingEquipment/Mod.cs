namespace LivingEquipment;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(LivingEquipment), new PatchClass(this));
}
