using ACE.Server.Managers;

namespace ValheelContent;

internal static class ValheelContentDataPaths
{
    static readonly string ServerRoot = ResolveServerRoot();

    internal static string ModDataRoot => Path.Combine(ServerRoot, "ModData", "ValheelContent");

    internal static string CurrentImportStatePath => Path.Combine(ModDataRoot, "import-state.json");

    internal static string LegacyImportStatePath(string modDirectory)
        => Path.Combine(modDirectory, "import-state.json");

    static string ResolveServerRoot()
    {
        try
        {
            var serverAssemblyPath = typeof(ModManager).Assembly.Location;
            var serverDirectory = Path.GetDirectoryName(serverAssemblyPath);
            if (!string.IsNullOrWhiteSpace(serverDirectory))
                return serverDirectory;
        }
        catch
        {
        }

        return AppDomain.CurrentDomain.BaseDirectory;
    }
}
