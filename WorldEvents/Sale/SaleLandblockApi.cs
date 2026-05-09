namespace WorldEvents;

// Cross-mod read-only hooks (e.g. Swarmed) without duplicating sale JSON or landblock lists.
public static class SaleLandblockApi
{
    public static bool IsLandblockOnSale(int landblockId) =>
        SaleRuntime.IsLandblockOnSale(landblockId);

    public static double BuddyIdleThresholdScale =>
        PatchClass.CurrentSettings?.SaleBuddyIdleThresholdScale ?? 1.0;
}
