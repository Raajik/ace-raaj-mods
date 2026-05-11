using ACE.Server.Managers;

namespace AutoLoot;

internal static class AutoLootDataPaths
{
    static readonly string ServerRoot = ResolveServerRoot();

    internal static string ModDataRoot => Path.Combine(ServerRoot, "ModData", "AutoLoot");
    internal static string PlayerDataRoot => Path.Combine(ModDataRoot, "PlayerData");

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
