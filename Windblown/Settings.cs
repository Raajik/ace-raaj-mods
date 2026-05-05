namespace Windblown;

public class Settings
{
    [JsonPropertyName("// EnableCustomWeenies")]
    public string EnableCustomWeeniesDoc { get; init; } =
        "Master toggle for runtime weenie injection. When true, JSON files under Content/Weenies/*.json " +
        "are loaded at Start() and Harmony-served via WorldDatabaseWithEntityCache.GetCachedWeenie. " +
        "When false, all custom WCIDs fall through to the vanilla DB lookup (so old SQL-applied rows still work, " +
        "but JSON edits are ignored).";
    public bool EnableCustomWeenies { get; set; } = true;

    [JsonPropertyName("// LogWeenieRegistrySummary")]
    public string LogWeenieRegistrySummaryDoc { get; init; } =
        "Log a one-line summary at Start() listing which custom WCIDs were registered (and any JSON load errors). " +
        "Recommended: keep on while iterating, off once stable.";
    public bool LogWeenieRegistrySummary { get; set; } = true;

    [JsonPropertyName("// LogWeenieRegistryVerbose")]
    public string LogWeenieRegistryVerboseDoc { get; init; } =
        "Log every property override applied to each custom WCID. Noisy; debugging only.";
    public bool LogWeenieRegistryVerbose { get; set; } = false;
}
