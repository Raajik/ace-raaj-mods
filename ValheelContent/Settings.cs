namespace ValheelContent;

public class Settings
{
    [JsonPropertyName("// EnableValheelContent")]
    public string EnableValheelContentDoc { get; init; } = "Master toggle for SQL execution. When false, RunImport and /valheel import do nothing until you set this true.";
    public bool EnableValheelContent { get; set; } = false;

    [JsonPropertyName("// ImportOnStartup")]
    public string ImportOnStartupDoc { get; init; } = "When true AND EnableValheelContent, run SQL import on server world open. Keep false to avoid any automatic DB writes; use /valheel import after enabling.";
    public bool ImportOnStartup { get; set; } = false;

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

    [JsonPropertyName("// DisabledContentFolders")]
    public string DisabledContentFoldersDoc { get; init; } = "List of content folder paths (relative to Content/) to skip during import. Example: '03-weenie/Holtburg Academy' disables the training academy revamp. Changes require cleanup SQL to remove already-imported content.";
    public List<string> DisabledContentFolders { get; set; } = new();

    [JsonPropertyName("// EnabledContentFiles")]
    public string EnabledContentFilesDoc { get; init; } = "List of specific file paths (relative to Content/) that should be imported EVEN if their parent folder is in DisabledContentFolders. Use for exceptions like Town Network platform within a disabled Buildings folder.";
    public List<string> EnabledContentFiles { get; set; } = new();

    [JsonPropertyName("// NeverImportFiles")]
    public string NeverImportFilesDoc { get; init; } = "SQL paths (relative to Content/, forward slashes) never executed by the importer, including manual /valheel import. Remove an entry only if you intentionally want that file applied.";
    public List<string> NeverImportFiles { get; set; } = new() { "06-landblock/0007.sql" };
}
