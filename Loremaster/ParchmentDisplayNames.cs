namespace Loremaster;

internal static class ParchmentDisplayNames
{
    internal static string WeenieName(uint wcid)
    {
        var w = DatabaseManager.World.GetCachedWeenie(wcid);
        if (w is not null && !string.IsNullOrWhiteSpace(w.Name))
            return w.Name.Trim();
        return $"WCID {wcid}";
    }
}
