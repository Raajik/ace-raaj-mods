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

    [JsonPropertyName("// EnableTrophyLines")]
    public string EnableTrophyLinesDoc { get; init; } =
        "Master toggle for Windblown trophy-line system: per-CreatureType tier drops on kills + bulk turn-in to NPCs that accept the base WCID. Configs live under Content/TrophyLines/*.json. When false, no drops or turn-ins are rolled by Windblown (other mods continue normally).";
    public bool EnableTrophyLines { get; set; } = true;

    [JsonPropertyName("// EnableSiblingReplacement")]
    public string EnableSiblingReplacementDoc { get; init; } =
        "When true (default), trophy lines whose ReplaceSiblingWcids list is non-empty will swap sibling WCIDs (e.g. colored Rat Tail variants) to the base WCID at corpse-drop time, so players see one consistent name. Set false to keep vanilla sibling drops alongside our additions.";
    public bool EnableSiblingReplacement { get; set; } = true;

    [JsonPropertyName("// LogTrophyLinesSummary")]
    public string LogTrophyLinesSummaryDoc { get; init; } =
        "Log a one-line summary at Start() listing which trophy lines were registered.";
    public bool LogTrophyLinesSummary { get; set; } = true;

    [JsonPropertyName("// LogTrophyLinesVerbose")]
    public string LogTrophyLinesVerboseDoc { get; init; } =
        "Log every drop roll, replacement, and turn-in event. Noisy; debugging only.";
    public bool LogTrophyLinesVerbose { get; set; } = false;

    [JsonPropertyName("// EnableAcademyImbues")]
    public string EnableAcademyImbuesDoc { get; init; } =
        "When true, Academy weapons purchased from Kaelith (810001) in the Town Network " +
        "are generated with a random rending imbue (Armor Rending, elemental Rending, or Nether Rending).";
    public bool EnableAcademyImbues { get; set; } = true;
}
