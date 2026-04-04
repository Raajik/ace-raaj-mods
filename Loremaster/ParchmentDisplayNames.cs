namespace Loremaster;

internal static class ParchmentDisplayNames
{
    internal static string WeenieName(uint wcid)
    {
        Weenie? w = DatabaseManager.World.GetCachedWeenie(wcid);
        if (w is null)
            return $"WCID {wcid}";

        string? name = w.GetProperty(PropertyString.Name);
        if (!string.IsNullOrWhiteSpace(name))
            return name.Trim();

        if (!string.IsNullOrWhiteSpace(w.ClassName))
            return w.ClassName.Trim();

        return $"WCID {wcid}";
    }
}
