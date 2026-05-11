using ACE.Server.Managers;

namespace BetterSupportSkills;

internal static class BetterSupportSkillsDataPaths
{
    static readonly string ServerRoot = ResolveServerRoot();

    internal static string ModDataRoot => Path.Combine(ServerRoot, "ModData", "BetterSupportSkills");

    internal static string InModData(string fileName)
        => Path.Combine(ModDataRoot, fileName);

    internal static string InLegacyModRoot(string fileName)
        => Path.Combine(Path.GetDirectoryName(typeof(PatchClass).Assembly.Location) ?? "", fileName);

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
