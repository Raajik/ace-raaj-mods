namespace QOL;

[HarmonyPatchCategory(nameof(Features.Defaults))]
internal static class Defaults
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.UpdateProperty), new Type[] { typeof(WorldObject), typeof(PropertyInt), typeof(int?), typeof(bool) })]
    public static void PreUpdateProperty(WorldObject obj, PropertyInt prop, ref int? value, bool broadcast, ref Player __instance)
    {
        if (S.Settings?.Defaults is null || value is null || __instance.GetProperty(prop) is not null || !S.Settings.Defaults.IntDefaults.TryGetValue(prop, out var defaultValue))
            return;

        value = defaultValue;

    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.UpdateProperty), new Type[] { typeof(WorldObject), typeof(PropertyBool), typeof(bool?), typeof(bool) })]
    public static void PreUpdateProperty(WorldObject obj, PropertyBool prop, ref bool? value, bool broadcast, ref Player __instance)
    {
        if (S.Settings?.Defaults is null || value is null || __instance.GetProperty(prop) is not null || !S.Settings.Defaults.BoolDefaults.TryGetValue(prop, out var defaultValue))
            return;

        value = defaultValue;

    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.UpdateProperty), new Type[] { typeof(WorldObject), typeof(PropertyFloat), typeof(double?), typeof(bool) })]
    public static void PreUpdateProperty(WorldObject obj, PropertyFloat prop, ref double? value, bool broadcast, ref Player __instance)
    {
        if (S.Settings?.Defaults is null || value is null || __instance.GetProperty(prop) is not null || !S.Settings.Defaults.FloatDefaults.TryGetValue(prop, out var defaultValue))
            return;

        value = defaultValue;

    }

    #region Unused Properties
    //[HarmonyPrefix]
    //[HarmonyPatch(typeof(Player), nameof(Player.UpdateProperty), new Type[] { typeof(WorldObject), typeof(PropertyInstanceId), typeof(uint?), typeof(bool) })]
    //public static bool PreUpdateProperty(WorldObject obj, PropertyInstanceId prop, uint? value, bool broadcast, ref Player __instance)
    //{
    //    //Return false to override
    //    //return false;

    //    //Return true to execute original
    //    return true;
    //}

    //[HarmonyPrefix]
    //[HarmonyPatch(typeof(Player), nameof(Player.UpdateProperty), new Type[] { typeof(WorldObject), typeof(PropertyString), typeof(string), typeof(bool) })]
    //public static bool PreUpdateProperty(WorldObject obj, PropertyString prop, string value, bool broadcast, ref Player __instance)
    //{
    //    //Return false to override
    //    //return false;

    //    //Return true to execute original
    //    return true;
    //}

    //[HarmonyPrefix]
    //[HarmonyPatch(typeof(Player), nameof(Player.UpdateProperty), new Type[] { typeof(WorldObject), typeof(PropertyDataId), typeof(uint?), typeof(bool) })]
    //public static bool PreUpdateProperty(WorldObject obj, PropertyDataId prop, uint? value, bool broadcast, ref Player __instance)
    //{
    //    //Return false to override
    //    //return false;

    //    //Return true to execute original
    //    return true;
    //} 
    #endregion

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.UpdateProperty), new Type[] { typeof(WorldObject), typeof(PropertyInt64), typeof(long?), typeof(bool) })]
    public static void PreUpdateProperty(WorldObject obj, PropertyInt64 prop, ref long? value, bool broadcast, ref Player __instance)
    {
        if (S.Settings?.Defaults is null || value is null || __instance.GetProperty(prop) is not null || !S.Settings.Defaults.Int64Defaults.TryGetValue(prop, out var defaultValue))
            return;

        value = defaultValue;
    }
}

public class DefaultsSettings
{
    [JsonPropertyName("// Int64Defaults")]
    public string Int64DefaultsDoc { get; init; } = "Map PropertyInt64 name → default long. Example: MaximumLuminance for first-time luminance storage.";

    public Dictionary<PropertyInt64, long> Int64Defaults { get; set; } = new()
    {
        [PropertyInt64.MaximumLuminance] = 1_000_000_000,
    };

    [JsonPropertyName("// IntDefaults")]
    public string IntDefaultsDoc { get; init; } = "Map PropertyInt name → default int on first assignment.";

    public Dictionary<PropertyInt, int> IntDefaults { get; set; } = new()
    {
    };

    [JsonPropertyName("// FloatDefaults")]
    public string FloatDefaultsDoc { get; init; } = "Map PropertyFloat name → default number on first assignment.";

    public Dictionary<PropertyFloat, float> FloatDefaults { get; set; } = new()
    {
    };

    [JsonPropertyName("// BoolDefaults")]
    public string BoolDefaultsDoc { get; init; } = "Map PropertyBool name → default bool on first assignment.";

    public Dictionary<PropertyBool, bool> BoolDefaults { get; set; } = new()
    {
    };
}