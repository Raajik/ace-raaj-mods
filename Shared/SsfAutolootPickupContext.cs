namespace AceRaajMods.Shared;

// Appdomain-wide name so AutoLoot and ChallengeModes (separate assemblies, both link this file)
// share the same per-thread counter.
public static class SsfAutolootPickupContext
{
    const string SlotName = "AceRaajMods.SsfAutolootPickupContext.DepthV1";
    static readonly LocalDataStoreSlot Slot = Thread.GetNamedDataSlot(SlotName);

    public static void Enter()
    {
        int d = GetDepth();
        Thread.SetData(Slot, d + 1);
    }

    public static void Leave()
    {
        int d = GetDepth();
        if (d > 0)
            Thread.SetData(Slot, d - 1);
    }

    public static bool IsAutolootPickup => GetDepth() > 0;

    static int GetDepth()
    {
        object? o = Thread.GetData(Slot);
        if (o is int i)
            return i;
        return 0;
    }
}
