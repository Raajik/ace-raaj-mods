using ACE.Database;

namespace WorldEvents;

internal static class HuntDisplay
{
    internal static string SpeciesName(uint creatureTypeId)
    {
        if (creatureTypeId == 0) return "Unknown";
        var ct = (CreatureType)creatureTypeId;
        var name = ct.ToString();
        return name == creatureTypeId.ToString() ? $"Species {creatureTypeId}" : name;
    }

    internal static string WeenieName(uint wcid)
    {
        try
        {
            Weenie? w = DatabaseManager.World.GetCachedWeenie(wcid);
            var name = w?.GetName();
            if (!string.IsNullOrWhiteSpace(name))
                return name.Trim();
        }
        catch { }

        return $"WCID {wcid}";
    }

    internal static string ResolvePlayerName(uint guidFull)
    {
        if (PlayerManager.GetOnlinePlayer(guidFull) is Player online)
            return online.Name;

        foreach (var off in PlayerManager.GetAllOffline())
        {
            if (off.Guid.Full == guidFull)
                return off.Name;
        }

        return $"unknown ({guidFull:X})";
    }

    internal static void BroadcastWorldLine(string message)
    {
        foreach (var p in PlayerManager.GetAllOnline())
            p.SendMessage(message);
    }
}
