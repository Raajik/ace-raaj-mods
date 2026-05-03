namespace Overtinked;

// Custom imbue flags for weapons (Hemorrhage, Cleaving, Nether Rending). Persisted on item biota as PropertyInt 40133 (bitmask).
[Flags]
public enum OvertinkedImbueFlags : byte
{
    None = 0,
    Hemorrhage = 8,
    Cleaving = 2,
    NetherRending = 4,
}

public static class OvertinkedImbueStore
{
    // Biota-persisted bitmask on items. Not in stock PropertyInt enum; adjacent to Empyrean 40131–40132 in operator FakeInt space.
    public const int CustomImbuePropertyInt = 40133;

    private static readonly PropertyInt CustomProp = (PropertyInt)CustomImbuePropertyInt;

    private const int AllowedBits = (int)(OvertinkedImbueFlags.Hemorrhage | OvertinkedImbueFlags.Cleaving | OvertinkedImbueFlags.NetherRending);

    public static OvertinkedImbueFlags Get(WorldObject? wo)
    {
        if (wo == null)
            return OvertinkedImbueFlags.None;

        int raw = wo.GetProperty(CustomProp) ?? 0;
        OvertinkedImbueFlags f = (OvertinkedImbueFlags)(raw & AllowedBits);
        // Nether also sets ImbuedEffect; older items may lack 40133 until re-tinkered.
        if (wo.ImbuedEffect.HasFlag(ImbuedEffectType.NetherRending))
            f |= OvertinkedImbueFlags.NetherRending;

        return f;
    }

    public static void Add(WorldObject target, OvertinkedImbueFlags flags)
    {
        if (target == null || flags == OvertinkedImbueFlags.None)
            return;

        OvertinkedImbueFlags cur = Get(target);
        OvertinkedImbueFlags next = cur | flags;
        if (next == cur)
            return;

        target.SetProperty(CustomProp, (int)next);
    }

    public static void Remove(WorldObject target)
    {
        if (target == null)
            return;

        target.RemoveProperty(CustomProp);
    }
}
