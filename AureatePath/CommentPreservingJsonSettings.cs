namespace AureatePath;

// Skips rewriting Settings.json when it already exists so shipped // comments stay intact. If the file is missing, writes a plain JSON default once so the mod can start.
public sealed class CommentPreservingJsonSettings(string filePath) : JsonSettings<Settings>(filePath)
{
    protected override async Task<bool> SaveSettingsAsync(Settings settings)
    {
        if (File.Exists(SettingsPath))
            return true;

        return await base.SaveSettingsAsync(settings);
    }
}
