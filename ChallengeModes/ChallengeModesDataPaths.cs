using ACE.Server.Managers;

namespace ChallengeModes;

internal static class ChallengeModesDataPaths
{
    static readonly string ServerRoot = ResolveServerRoot();

    internal static string ModDataRoot => Path.Combine(ServerRoot, "ModData", "ChallengeModes");
    internal static string LegacyModRoot => Path.Combine(ModManager.ModPath, "ChallengeModes");

    internal static string InModData(params string[] parts) => Combine(ModDataRoot, parts);
    internal static string InLegacyModRoot(params string[] parts) => Combine(LegacyModRoot, parts);

    static string ResolveServerRoot()
    {
        try
        {
            var serverAssemblyPath = typeof(ModManager).Assembly.Location;
            var serverDirectory = Path.GetDirectoryName(serverAssemblyPath);
            if (!string.IsNullOrWhiteSpace(serverDirectory))
                return serverDirectory;
        }
        catch { }

        return AppDomain.CurrentDomain.BaseDirectory;
    }

    static string Combine(string root, params string[] parts)
    {
        if (parts == null || parts.Length == 0) return root;
        var allParts = new string[parts.Length + 1];
        allParts[0] = root;
        Array.Copy(parts, 0, allParts, 1, parts.Length);
        return Path.Combine(allParts);
    }
}
