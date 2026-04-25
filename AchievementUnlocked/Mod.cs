namespace AchievementUnlocked;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(AchievementUnlocked), new PatchClass(this));
}
