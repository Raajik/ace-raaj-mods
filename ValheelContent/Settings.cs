namespace ValheelContent;

public class Settings
{
    [JsonPropertyName("// EnableValheelContent")]
    public string EnableValheelContentDoc { get; init; } = "Master toggle. When false, the mod does nothing and no content is imported.";
    public bool EnableValheelContent { get; set; } = true;

    [JsonPropertyName("// ImportOnStartup")]
    public string ImportOnStartupDoc { get; init; } = "When true, automatically import content on server startup. When false, use /valheel import manually.";
    public bool ImportOnStartup { get; set; } = true;

    [JsonPropertyName("// TrackImportHash")]
    public string TrackImportHashDoc { get; init; } = "When true, skip SQL files that haven't changed since the last import. Dramatically speeds up subsequent server starts.";
    public bool TrackImportHash { get; set; } = true;

    [JsonPropertyName("// BatchSize")]
    public string BatchSizeDoc { get; init; } = "Number of SQL files to execute per database transaction. Higher = faster but uses more memory.";
    public int BatchSize { get; set; } = 50;

    [JsonPropertyName("// LogImportSummary")]
    public string LogImportSummaryDoc { get; init; } = "When true, log a summary of imported files and timing after each run.";
    public bool LogImportSummary { get; set; } = true;

    [JsonPropertyName("// RequireRestartAfterFirstImport")]
    public string RequireRestartAfterFirstImportDoc { get; init; } = "When true, log a reminder that a server restart is recommended after the first import to refresh all ACE caches.";
    public bool RequireRestartAfterFirstImport { get; set; } = true;
}
