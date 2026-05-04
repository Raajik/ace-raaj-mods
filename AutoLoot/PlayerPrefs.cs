namespace AutoLoot;

public class PlayerPrefs
{
    public List<string> ActiveProfileNames { get; set; } = new();
    public bool LootNotifications { get; set; } = true;
    public bool UnknownScrollsEnabled { get; set; } = false;

    // Achievement tracking
    public int KeyUnlocks { get; set; } = 0;
    public int LockpickUnlocks { get; set; } = 0;
    public int ItemsSalvaged { get; set; } = 0;
    public bool KeyUnlockNotified { get; set; } = false;
    public bool LockpickUnlockNotified { get; set; } = false;
    public bool SalvageUnlockNotified { get; set; } = false;

    // One-time: when false, server applies full /autoloot on + AutoSalvage once (see Settings.DefaultAutolootSalvageBundleApplied).
    public bool AutolootSalvageDefaultsApplied { get; set; }
}
