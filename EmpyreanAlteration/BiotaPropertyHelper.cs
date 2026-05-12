using System.Reflection;

namespace EmpyreanAlteration;

/// <summary>
/// Helpers for writing PropertyInt values directly to the biota dictionary,
/// bypassing WorldObject.SetProperty's ephemeral-property check.
/// Some ACE versions mark rating properties (CritDamageResistRating, HealingBoostRating,
/// GearMaxHealth) as [Ephemeral]; WorldObject.SetProperty stores them in memory only
/// and they are lost on relog. Writing to Biota.PropertiesInt directly ensures persistence.
/// </summary>
internal static class BiotaPropertyHelper
{
    internal static void SetBiotaPropertyInt(WorldObject item, PropertyInt prop, int value)
    {
        if (item?.Biota == null)
            return;

        try
        {
            // Use the Biota extension method that takes the lock (same pattern as WorldObject.SetProperty)
            item.Biota.SetProperty(prop, value, item.BiotaDatabaseLock, out var changed);
            if (changed)
                item.ChangesDetected = true;
        }
        catch
        {
            // Defensive: if the lock overload doesn't exist on this ACE build, fall back
            // to direct dictionary write (observed in newer ACE versions).
            try
            {
                var dictProp = item.Biota.GetType().GetProperty("PropertiesInt");
                if (dictProp?.GetValue(item.Biota) is System.Collections.IDictionary dict)
                {
                    dict[prop] = value;
                    item.ChangesDetected = true;
                }
            }
            catch { }
        }
    }

    internal static int? GetBiotaPropertyIntRaw(WorldObject item, PropertyInt prop)
    {
        if (item?.Biota == null)
            return null;

        try
        {
            // Try the dictionary path first (newer ACE)
            var dictProp = item.Biota.GetType().GetProperty("PropertiesInt");
            if (dictProp?.GetValue(item.Biota) is System.Collections.IDictionary dict && dict.Contains(prop))
                return (int?)dict[prop];
        }
        catch { }

        // Fall back to Biota.GetProperty (checks biota list, not ephemeral)
        return item.Biota.GetProperty(prop, item.BiotaDatabaseLock);
    }

    // ── Overtinked cross-mod reflection ──────────────────────────────────────

    private static bool _triedResolveOvertinked;
    private static Type? _overtinkedPatchClass;
    private static FieldInfo? _overtinkedSettingsField;
    private static PropertyInfo? _overtinkedSalvageRulesProp;

    /// <summary>
    /// Attempts to read Overtinked's steel salvage rule ArmorLevel value.
    /// Returns null if Overtinked is not loaded or the rule cannot be found.
    /// </summary>
    internal static int? TryGetOvertinkedSteelDelta()
    {
        if (!_triedResolveOvertinked)
        {
            _triedResolveOvertinked = true;
            try
            {
                _overtinkedPatchClass = AccessTools.TypeByName("Overtinked.PatchClass");
                if (_overtinkedPatchClass != null)
                {
                    _overtinkedSettingsField = _overtinkedPatchClass.GetField("CurrentSettings", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
                    if (_overtinkedSettingsField != null)
                    {
                        var settingsType = _overtinkedSettingsField.FieldType;
                        _overtinkedSalvageRulesProp = settingsType?.GetProperty("SalvageRules");
                    }
                }
            }
            catch { }
        }

        if (_overtinkedPatchClass == null || _overtinkedSettingsField == null || _overtinkedSalvageRulesProp == null)
            return null;

        try
        {
            var settings = _overtinkedSettingsField.GetValue(null);
            if (settings == null)
                return null;

            var rules = _overtinkedSalvageRulesProp.GetValue(settings) as System.Collections.IList;
            if (rules == null || rules.Count == 0)
                return null;

            // Scan for a steel rule by EffectKind == "ArmorLevel" or Name containing "Steel"
            foreach (var rule in rules)
            {
                if (rule == null)
                    continue;

                var ruleType = rule.GetType();

                var enabledProp = ruleType.GetProperty("Enabled");
                if (enabledProp?.GetValue(rule) is bool enabled && !enabled)
                    continue;

                var nameProp = ruleType.GetProperty("Name");
                string? name = nameProp?.GetValue(rule) as string;

                var effectKindProp = ruleType.GetProperty("EffectKind");
                string? effectKind = effectKindProp?.GetValue(rule) as string;

                if (!string.Equals(effectKind, "ArmorLevel", StringComparison.OrdinalIgnoreCase)
                    && !(name != null && name.Contains("Steel", StringComparison.OrdinalIgnoreCase)))
                    continue;

                var fixedValueProp = ruleType.GetProperty("FixedValue");
                if (fixedValueProp?.GetValue(rule) is int fixedValue)
                    return fixedValue;

                var minValueProp = ruleType.GetProperty("MinValue");
                var maxValueProp = ruleType.GetProperty("MaxValue");
                int minV = minValueProp?.GetValue(rule) is int mv ? mv : 0;
                int maxV = maxValueProp?.GetValue(rule) is int mx ? mx : 0;
                if (minV == maxV)
                    return minV;
                if (minV < maxV)
                    return (minV + maxV) / 2; // representative value
                return minV;
            }
        }
        catch { }

        return null;
    }
}
