using ACE.Server.Managers;

namespace WorldEvents;

internal static class WorldEventsDataPaths
{
    static readonly string ServerRoot = ResolveServerRoot();

    internal static string ModDataRoot => Path.Combine(ServerRoot, "ModData", "WorldEvents");
    internal static string LegacyModRoot => Path.Combine(ModManager.ModPath, "WorldEvents");
    internal static string LegacyDataRoot => Path.Combine(LegacyModRoot, "Data");
    internal static string LegacyServerDataRoot => Path.Combine(ServerRoot, "Data");

    internal static string InModData(params string[] parts) => Combine(ModDataRoot, parts);
    internal static string InLegacyModRoot(params string[] parts) => Combine(LegacyModRoot, parts);
    internal static string InLegacyData(params string[] parts) => Combine(LegacyDataRoot, parts);
    internal static string InLegacyServerData(params string[] parts) => Combine(LegacyServerDataRoot, parts);

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

    static string Combine(string root, params string[] parts)
    {
        if (parts == null || parts.Length == 0)
            return root;

        var allParts = new string[parts.Length + 1];
        allParts[0] = root;
        Array.Copy(parts, 0, allParts, 1, parts.Length);
        return Path.Combine(allParts);
    }
}
