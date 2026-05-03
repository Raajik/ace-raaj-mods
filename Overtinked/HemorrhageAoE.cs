namespace Overtinked;

internal static class HemorrhageAoE
{
    internal const float YardsToMeters = 0.9144f;

    internal static float GetRadiusMeters(HemorrhageImbueConfig? cfg)
    {
        if (cfg == null)
            return Math.Clamp(10f * YardsToMeters, 0.5f, 50f);

        if (cfg.AoERadiusYards > 0f)
            return Math.Clamp(cfg.AoERadiusYards * YardsToMeters, 0.5f, 50f);

        return Math.Clamp(cfg.AoERadiusMeters, 0.5f, 50f);
    }
}
