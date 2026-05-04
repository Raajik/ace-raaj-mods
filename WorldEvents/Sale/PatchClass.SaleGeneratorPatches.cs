namespace WorldEvents;

public partial class PatchClass
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.GeneratorRegeneration), new[] { typeof(double) })]
    public static void PostGeneratorRegenerationSale(WorldObject __instance, double currentUnixTime)
    {
        var s = CurrentSettings;
        if (s == null || !s.SaleEnabled || !s.SaleAccelerateGeneratorRespawn)
            return;

        if (!__instance.IsGenerator)
            return;

        var lb = __instance.CurrentLandblock;
        if (lb == null)
            return;

        if (!SaleRuntime.IsLandblockOnSale((int)lb.Id.Raw))
            return;

        var delta = __instance.NextGeneratorRegenerationTime - currentUnixTime;
        if (delta <= 0 || double.IsInfinity(delta) || double.IsNaN(delta))
            return;

        var scale = s.SaleGeneratorRegenerationIntervalScale;
        if (scale >= 0.999 && scale <= 1.001)
            return;

        var scaled = delta * scale;
        var minGap = s.SaleGeneratorRegenerationMinSeconds;
        if (scaled < minGap)
            scaled = minGap;

        __instance.NextGeneratorRegenerationTime = currentUnixTime + scaled;
    }
}
