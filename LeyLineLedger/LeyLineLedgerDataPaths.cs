using ACE.Server.Managers;

namespace LeyLineLedger;

internal static class LeyLineLedgerDataPaths
{
    static readonly string ServerRoot = ResolveServerRoot();

    internal static string ModDataRoot => Path.Combine(ServerRoot, "ModData", "LeyLineLedger");
    internal static string LegacyModRoot => Path.GetDirectoryName(typeof(PatchClass).Assembly.Location) ?? "";

    internal static string InModData(params string[] parts)
        => Path.Combine([ModDataRoot, .. parts]);

    internal static string InLegacyModRoot(params string[] parts)
        => Path.Combine([LegacyModRoot, .. parts]);

    internal static string ResolveConfiguredPath(string configuredPath)
    {
        if (Path.IsPathRooted(configuredPath))
            return configuredPath;

        return InModData(configuredPath);
    }

    internal static string ResolveLegacyConfiguredPath(string configuredPath)
    {
        if (Path.IsPathRooted(configuredPath))
            return configuredPath;

        return InLegacyModRoot(configuredPath);
    }

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
