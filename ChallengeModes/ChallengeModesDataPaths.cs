using ACE.Server.Managers;

namespace ChallengeModes;

internal static class ChallengeModesDataPaths
{
    static readonly string ServerRoot = ResolveServerRoot();

    internal static string PlayerDataRoot => Path.Combine(ServerRoot, "ModData", "ChallengeModes", "PlayerData");
    internal static string LegacyPlayerDataRoot => Path.Combine(Path.GetDirectoryName(typeof(PatchClass).Assembly.Location) ?? "", "Data", "PlayerData");

    internal static string CurrentPlayerDataPath(uint guid)
        => Path.Combine(PlayerDataRoot, $"{guid}.json");

    internal static string LegacyPlayerDataPath(uint guid)
        => Path.Combine(LegacyPlayerDataRoot, $"{guid}.json");

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
