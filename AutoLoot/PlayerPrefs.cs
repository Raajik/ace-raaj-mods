namespace AutoLoot;

public class PlayerPrefs
{
    public List<string> ActiveProfileNames { get; set; } = new();
    public bool LootNotifications { get; set; } = true;
    public bool VendorTrashEnabled { get; set; } = false;
    public int VendorTrashRatio { get; set; } = 50;
    public bool UnknownScrollsEnabled { get; set; } = false;

    // Achievement tracking
    public int KeyUnlocks { get; set; } = 0;
    public int LockpickUnlocks { get; set; } = 0;
    public int ItemsSalvaged { get; set; } = 0;
    public bool KeyUnlockNotified { get; set; } = false;
    public bool LockpickUnlockNotified { get; set; } = false;
    public bool SalvageUnlockNotified { get; set; } = false;
}
