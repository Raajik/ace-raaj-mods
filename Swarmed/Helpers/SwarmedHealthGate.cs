namespace Swarmed.Helpers;

/// <summary>
/// Unified health gate: creatures with max HP above the threshold skip all Swarmed alterations
/// unless their WCID is explicitly whitelisted.
/// </summary>
internal static class SwarmedHealthGate
{
    public static bool IsExempt(Creature creature, Settings settings)
    {
        if (settings.HighHealthExemptionThreshold <= 0)
            return false;

        uint maxHealth = creature.Health?.MaxValue ?? 0;
        return IsExempt(creature.WeenieClassId, maxHealth, settings);
    }

    public static bool IsExempt(uint wcid, uint maxHealth, Settings settings)
    {
        if (settings.HighHealthExemptionThreshold <= 0)
            return false;

        if (maxHealth <= (uint)settings.HighHealthExemptionThreshold)
            return false;

        return !settings.HighHealthExemptionWhitelist.Contains(wcid);
    }

    public static bool IsExempt(Weenie weenie, Settings settings)
    {
        if (settings.HighHealthExemptionThreshold <= 0)
            return false;

        uint maxHealth = 0;
        if (weenie.PropertiesAttribute2nd != null &&
            weenie.PropertiesAttribute2nd.TryGetValue(PropertyAttribute2nd.MaxHealth, out var vital))
            maxHealth = (uint)vital.InitLevel;

        return IsExempt(weenie.WeenieClassId, maxHealth, settings);
    }
}
