using WorldEvents.Helpers;
using WorldEvents.PoiHunt.Models;

namespace WorldEvents;

internal static class PoiHuntBroadcast
{
    static readonly string[] RoundStartFlavors =
    {
        "[EVENT - POI Hunt] Round {0} begins! A narrator has appeared with a clue — find them first!",
        "[EVENT - POI Hunt] Round {0} is on! Seek out Lorewalker Zahir's hidden location!",
        "[EVENT - POI Hunt] The hunt continues! Round {0} has started!",
    };

    static readonly string[] EventEndFlavors =
    {
        "[EVENT - POI Hunt] The POI Hunt has ended! Here are the results:",
        "[EVENT - POI Hunt] The hunt concludes! Final standings:",
    };

    static readonly Dictionary<string, Position> TownCenters = new()
    {
        { "Holtburg", new Position(0xA9B40023, 110.487144f, 48.396507f, 93.773705f, 0f, 0f, 0f, 1f) },
        { "Yanshi", new Position(0xBF80001B, 81.709595f, 67.743492f, 40.005001f, 0f, 0f, 0f, 1f) },
        { "Cragstone", new Position(0xBB9F0035, 160.885773f, 107.920700f, 70.005005f, 0f, 0f, 0f, 1f) },
        { "Lytelthorpe", new Position(0xBA170013, 70.900757f, 63.556080f, 132.004990f, 0f, 0f, 0f, 1f) },
        { "Rithwic", new Position(0xCE95002B, 131.459671f, 63.580212f, 20.004999f, 0f, 0f, 0f, 1f) },
        { "Al-Arqas", new Position(0xA0A40016, 59.592045f, 138.108597f, 69.106995f, 0f, 0f, 0f, 1f) },
        { "Yaraq", new Position(0x5B9C0026, 103.201820f, 139.333237f, 14.004999f, 0f, 0f, 0f, 1f) },
        { "Shoushi", new Position(0x49B6000E, 44.044659f, 130.120880f, 240.004990f, 0f, 0f, 0f, 1f) },
        { "Sanamar", new Position(0x1DB60025, 113.340675f, 100.866089f, 120.005005f, 0f, 0f, 0f, 1f) },
        { "Glenden Wood", new Position(0x17B20023, 105.134438f, 56.375637f, 44.005001f, 0f, 0f, 0f, 1f) },
        { "Hebian-to", new Position(0xE74E0023, 97.089348f, 59.854691f, 32.005001f, 0f, 0f, 0f, 1f) },
        { "Zaikhal", new Position(0xC95B0025, 112.814865f, 97.790413f, 12.004999f, 0f, 0f, 0f, 1f) },
        { "Al-Jalima", new Position(0xB4700023, 96.284630f, 60.681797f, 42.005001f, 0f, 0f, 0f, 1f) },
        { "Tufa", new Position(0xE532003C, 183.650101f, 87.043877f, 16.852381f, 0f, 0f, 0f, 1f) },
        { "Eastham", new Position(0xF2220030, 142.380844f, 176.336212f, 18.004999f, 0f, 0f, 0f, 1f) },
        { "Qalaba'r", new Position(0x95D6001C, 88.241966f, 83.686394f, 100.005013f, 0f, 0f, 0f, 1f) },
        { "Baishi", new Position(0x38F7001A, 83.225510f, 41.372726f, 0.557273f, 0f, 0f, 0f, 1f) },
        { "Samsur", new Position(0xC98C0028, 97.910332f, 184.511230f, 22.004999f, 0f, 0f, 0f, 1f) },
        { "Uziz", new Position(0xC6A90013, 66.278503f, 66.782890f, 42.005001f, 0f, 0f, 0f, 1f) },
        { "Nanto", new Position(0x49F00023, 102.444061f, 66.661095f, 170.004990f, 0f, 0f, 0f, 1f) },
    };

    internal static void SendRoundStart(PoiHuntRound round, PoiLocation location)
    {
        var template = RoundStartFlavors[Random.Shared.Next(RoundStartFlavors.Length)];
        WorldEventsBroadcast.Send(string.Format(template, round.RoundNumber));
    }

    internal static void SendClue(PoiHuntRound round, PoiLocation location)
    {
        if (!round.IsActive) return;

        var clue = BuildClue(round, location);
        WorldEventsBroadcast.Send($"[EVENT - POI Hunt] Round {round.RoundNumber} clue: {clue}");
    }

    static string BuildClue(PoiHuntRound round, PoiLocation location)
    {
        // Priority 1: hand-written clue
        if (location.ClueTexts.Count > 0)
        {
            var idx = (round.RoundNumber - 1) % location.ClueTexts.Count;
            return location.ClueTexts[idx];
        }

        // Parse position for auto-generated clues
        if (!PoiHuntRuntime.TryParsePositionString(location.Position, out var pos) || pos == null)
            return "The narrator awaits somewhere in Dereth...";

        var lbId = pos.LandblockId.Raw;

        // Priority 2: nearby portal
        var portals = LandblockScanner.GetNearbyPortals(lbId, radiusLandblocks: 3);
        if (portals.Count > 0)
        {
            var portal = portals[Random.Shared.Next(portals.Count)];
            return $"Near the portal to {portal.Name}...";
        }

        // Priority 3: nearby NPC
        var npcs = LandblockScanner.GetNearbyNpcs(lbId, radiusLandblocks: 2);
        if (npcs.Count > 0)
        {
            var npc = npcs[Random.Shared.Next(npcs.Count)];
            return $"Not far from {npc.Name}...";
        }

        // Priority 4: directional bearing
        var bearing = LandblockScanner.GetBearingFromTown(pos, TownCenters);
        if (!string.IsNullOrEmpty(bearing))
            return $"Somewhere {bearing}...";

        return "The narrator awaits somewhere in Dereth...";
    }

    internal static void SendEventEnd(ActivePoiHuntData data)
    {
        if (data.PlayerFindCounts.Count == 0)
        {
            WorldEventsBroadcast.Send("[EVENT - POI Hunt] The hunt ends with no finds.");
            return;
        }

        var template = EventEndFlavors[Random.Shared.Next(EventEndFlavors.Length)];
        WorldEventsBroadcast.Send(template);

        var ranked = data.PlayerFindCounts
            .OrderByDescending(kv => kv.Value)
            .Take(5)
            .ToList();

        for (var i = 0; i < ranked.Count; i++)
        {
            var (guid, count) = ranked[i];
            var name = ResolvePlayerName(guid);
            WorldEventsBroadcast.Send($"[EVENT - POI Hunt]   {i + 1}. {name} — {count} find{(count == 1 ? "" : "s")}");
        }
    }

    static string ResolvePlayerName(uint guidFull)
    {
        var player = PlayerManager.GetOnlinePlayer(guidFull);
        if (player != null) return player.Name;

        return $"GUID:{guidFull:X}";
    }
}
