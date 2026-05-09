using ACE.Entity;
using ACE.Server.Entity;
using ACE.Server.Managers;
using WorldEvents.PoiHunt.Models;

namespace WorldEvents;

internal static class PoiHuntRuntime
{
    internal static ActivePoiHuntData? ActiveEvent;
    internal static readonly object PoiHuntLock = new();

    static DateTime _nextClueUtc = DateTime.MinValue;
    static readonly Random _rng = new();

    // ── Lifecycle ────────────────────────────────────────────────────────

    internal static void LoadFromDisk(Settings settings)
    {
        PoiHuntPersistence.EnsureDirectories();
        lock (PoiHuntLock)
        {
            var loaded = PoiHuntPersistence.Load();
            if (loaded != null && loaded.IsActive)
            {
                var now = DateTime.UtcNow;
                var currentRound = loaded.Rounds.ElementAtOrDefault(loaded.CurrentRoundIndex);
                if (currentRound != null && currentRound.IsActive && now < currentRound.EndTime)
                {
                    ActiveEvent = loaded;
                    _nextClueUtc = now.AddMinutes(settings.PoiHunt.ClueIntervalMinutes);
                    ModManager.Log($"[PoiHunt] Loaded active event {loaded.EventId} at round {currentRound.RoundNumber}.", ModManager.LogLevel.Info);
                }
                else
                {
                    PoiHuntPersistence.Clear();
                    ModManager.Log("[PoiHunt] Saved event expired — cleared.", ModManager.LogLevel.Info);
                }
            }
        }
    }

    internal static bool TryStartEvent(Settings settings)
    {
        if (!settings.EnablePoiHunt) return false;

        lock (PoiHuntLock)
        {
            if (ActiveEvent != null) return false;

            var locations = settings.PoiHunt.PoiLocations;
            if (locations.Count == 0)
            {
                ModManager.Log("[PoiHunt] Cannot start: no POI locations configured.", ModManager.LogLevel.Warn);
                return false;
            }

            var eventId = $"PH-{DateTime.UtcNow:yyyyMMdd-HHmmss}-{_rng.Next(1000, 9999)}";
            var now = DateTime.UtcNow;

            ActiveEvent = new ActivePoiHuntData
            {
                EventId = eventId,
                StartTime = now,
                EndTime = now.AddHours(2),
                IsActive = true,
                CurrentRoundIndex = -1,
                Rounds = new List<PoiHuntRound>(),
                PlayerFindCounts = new Dictionary<uint, int>(),
            };

            StartRound(settings, 0);
            PoiHuntPersistence.Save(ActiveEvent);

            ModManager.Log($"[PoiHunt] Event {eventId} started.", ModManager.LogLevel.Info);
            return true;
        }
    }

    internal static void StartRound(Settings settings, int roundIndex)
    {
        if (ActiveEvent == null) return;

        var locations = settings.PoiHunt.PoiLocations;
        if (locations.Count == 0) return;

        // Pick unused location
        var usedIndices = ActiveEvent.Rounds.Select(r => r.LocationIndex).ToHashSet();
        var available = Enumerable.Range(0, locations.Count).Where(i => !usedIndices.Contains(i)).ToList();

        if (available.Count == 0)
        {
            available = Enumerable.Range(0, locations.Count).ToList();
        }

        var locIndex = available[_rng.Next(available.Count)];
        var location = locations[locIndex];

        // Pick narrator WCID (try to rotate)
        var baseWcids = settings.PoiHunt.NarratorBaseWcids;
        uint narratorWcid;
        if (baseWcids.Count > 0)
        {
            var usedWcids = ActiveEvent.Rounds.Select(r => r.NarratorWcid).ToHashSet();
            var availableWcids = baseWcids.Where(w => !usedWcids.Contains(w)).ToList();
            narratorWcid = availableWcids.Count > 0
                ? availableWcids[_rng.Next(availableWcids.Count)]
                : baseWcids[_rng.Next(baseWcids.Count)];
        }
        else
        {
            ModManager.Log("[PoiHunt] No narrator base WCIDs configured. Cannot spawn narrator.", ModManager.LogLevel.Warn);
            return;
        }

        var now = DateTime.UtcNow;
        var round = new PoiHuntRound
        {
            RoundNumber = roundIndex + 1,
            LocationIndex = locIndex,
            NarratorWcid = narratorWcid,
            StartTime = now,
            EndTime = now.AddMinutes(settings.PoiHunt.RoundDurationMinutes),
            IsActive = true,
            FoundByPlayerGuids = new List<uint>(),
        };

        ActiveEvent.Rounds.Add(round);
        ActiveEvent.CurrentRoundIndex = roundIndex;

        if (TryParsePositionString(location.Position, out var pos) && pos != null)
        {
            SpawnNarrator(round, pos);
            PoiHuntBroadcast.SendRoundStart(round, location);
            PoiHuntBroadcast.SendClue(round, location);
            _nextClueUtc = now.AddMinutes(settings.PoiHunt.ClueIntervalMinutes);
        }
        else
        {
            ModManager.Log($"[PoiHunt] Invalid position for location index {locIndex}: {location.Position}", ModManager.LogLevel.Warn);
        }

        PoiHuntPersistence.Save(ActiveEvent);
    }

    static void SpawnNarrator(PoiHuntRound round, Position pos)
    {
        var lb = LandblockManager.GetLandblock(pos.LandblockId, false);
        if (lb == null)
        {
            ModManager.Log($"[PoiHunt] Landblock not found for narrator spawn at {pos.LandblockId.Raw:X4}", ModManager.LogLevel.Warn);
            return;
        }

        lb.EnqueueAction(new ActionEventDelegate(() =>
        {
            var narrator = WorldObjectFactory.CreateNewWorldObject(round.NarratorWcid);
            if (narrator == null)
            {
                ModManager.Log($"[PoiHunt] Failed to create narrator WCID {round.NarratorWcid}", ModManager.LogLevel.Warn);
                return;
            }

            narrator.Name = "Lorewalker Zahir";
            narrator.Location = pos;

            if (lb.AddWorldObject(narrator))
            {
                round.NarratorGuid = narrator.Guid.Full;
                round.NarratorLandblockId = pos.LandblockId.Raw;
                ModManager.Log($"[PoiHunt] Narrator spawned at {pos}", ModManager.LogLevel.Info);
            }
            else
            {
                narrator.Destroy();
                ModManager.Log($"[PoiHunt] Failed to add narrator to landblock {pos.LandblockId.Raw:X4}", ModManager.LogLevel.Warn);
            }
        }));
    }

    // ── Tick ─────────────────────────────────────────────────────────────

    internal static void Tick(Settings settings)
    {
        if (!settings.EnablePoiHunt || ActiveEvent == null) return;

        lock (PoiHuntLock)
        {
            var now = DateTime.UtcNow;
            var currentRound = ActiveEvent.Rounds.ElementAtOrDefault(ActiveEvent.CurrentRoundIndex);

            if (currentRound == null || !currentRound.IsActive)
                return;

            // Check round timeout
            if (now >= currentRound.EndTime)
            {
                EndRound(settings, byTimeout: true);
                return;
            }

            // Check clue broadcast
            if (now >= _nextClueUtc)
            {
                var location = settings.PoiHunt.PoiLocations.ElementAtOrDefault(currentRound.LocationIndex);
                if (location != null)
                {
                    PoiHuntBroadcast.SendClue(currentRound, location);
                }
                _nextClueUtc = now.AddMinutes(settings.PoiHunt.ClueIntervalMinutes);
            }
        }
    }

    // ── Player interaction ───────────────────────────────────────────────

    internal static void OnNarratorUse(Player player, WorldObject narrator, Settings settings)
    {
        if (ActiveEvent == null) return;

        lock (PoiHuntLock)
        {
            var currentRound = ActiveEvent.Rounds.ElementAtOrDefault(ActiveEvent.CurrentRoundIndex);
            if (currentRound == null || !currentRound.IsActive) return;

            if (currentRound.NarratorGuid != narrator.Guid.Full) return;
            if (currentRound.FoundByPlayerGuids.Contains(player.Guid.Full)) return;

            // Record find
            currentRound.FoundByPlayerGuids.Add(player.Guid.Full);

            var playerGuid = player.Guid.Full;
            ActiveEvent.PlayerFindCounts.TryAdd(playerGuid, 0);
            ActiveEvent.PlayerFindCounts[playerGuid]++;

            // Award QB
            var questName = $"PoiHunt_{ActiveEvent.EventId}_Round{currentRound.RoundNumber}";
            ParticipationLedger.RecordCompletion(player.Account.AccountId, "PoiHunt", questName);

            player.SendMessage($"[PoiHunt] You found Lorewalker Zahir in Round {currentRound.RoundNumber}! +1 find.");

            PoiHuntPersistence.Save(ActiveEvent);

            // Immediately start next round, or end event if at max
            if (currentRound.RoundNumber >= settings.PoiHunt.MaxRounds)
            {
                EndEvent(settings);
            }
            else
            {
                EndRound(settings, byTimeout: false);
            }
        }
    }

    // ── Round / Event shutdown ───────────────────────────────────────────

    internal static void EndRound(Settings settings, bool byTimeout)
    {
        if (ActiveEvent == null) return;

        var currentRound = ActiveEvent.Rounds.ElementAtOrDefault(ActiveEvent.CurrentRoundIndex);
        if (currentRound != null)
            currentRound.IsActive = false;

        var roundsCompleted = ActiveEvent.Rounds.Count;

        if (byTimeout && roundsCompleted >= settings.PoiHunt.MinRounds)
        {
            EndEvent(settings);
        }
        else if (roundsCompleted >= settings.PoiHunt.MaxRounds)
        {
            EndEvent(settings);
        }
        else
        {
            StartRound(settings, roundsCompleted);
        }
    }

    internal static void EndEvent(Settings settings)
    {
        if (ActiveEvent == null) return;

        ActiveEvent.IsActive = false;
        ActiveEvent.EndTime = DateTime.UtcNow;

        // Despawn all narrators
        foreach (var round in ActiveEvent.Rounds)
        {
            if (round.NarratorGuid == 0) continue;

            try
            {
                var lb = LandblockManager.GetLandblock(new LandblockId(round.NarratorLandblockId), false);
                var wo = lb?.GetObject(new ObjectGuid(round.NarratorGuid));
                wo?.Destroy();
            }
            catch (Exception ex)
            {
                ModManager.Log($"[PoiHunt] Failed to despawn narrator {round.NarratorGuid:X}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        PoiHuntBroadcast.SendEventEnd(ActiveEvent);
        PoiHuntRewards.DistributeRewards(ActiveEvent, settings);

        PoiHuntPersistence.Clear();
        ActiveEvent = null;

        ModManager.Log("[PoiHunt] Event ended.", ModManager.LogLevel.Info);
    }

    internal static void ForceStart(Settings settings)
    {
        lock (PoiHuntLock)
        {
            if (ActiveEvent != null)
                EndEvent(settings);

            TryStartEvent(settings);
        }
    }

    internal static void ForceStop(Settings settings)
    {
        lock (PoiHuntLock)
        {
            if (ActiveEvent == null) return;
            EndEvent(settings);
        }
    }

    // ── Position parsing ─────────────────────────────────────────────────

    internal static bool TryParsePositionString(string s, out Position? pos)
    {
        pos = null;
        if (string.IsNullOrWhiteSpace(s)) return false;

        s = s.Trim();

        // Try to extract cell ID and remainder
        var bracketOpen = s.IndexOf('[');
        if (bracketOpen < 0) bracketOpen = s.IndexOf('(');

        string cellPart;
        string rest;
        if (bracketOpen >= 0)
        {
            cellPart = s[..bracketOpen].Trim();
            rest = s[bracketOpen..];
        }
        else
        {
            // Space-separated fallback: 0x12345678 1.0 2.0 3.0 0 0 0 1
            var parts = s.Split(new[] { ' ', '\t' }, StringSplitOptions.RemoveEmptyEntries);
            if (parts.Length < 8) return false;
            if (!uint.TryParse(parts[0].Replace("0x", ""), System.Globalization.NumberStyles.HexNumber, null, out var cid)) return false;
            if (!float.TryParse(parts[1], out var x)) return false;
            if (!float.TryParse(parts[2], out var y)) return false;
            if (!float.TryParse(parts[3], out var z)) return false;
            if (!float.TryParse(parts[4], out var qw)) return false;
            if (!float.TryParse(parts[5], out var qx)) return false;
            if (!float.TryParse(parts[6], out var qy)) return false;
            if (!float.TryParse(parts[7], out var qz)) return false;
            pos = new Position(cid, x, y, z, qx, qy, qz, qw);
            return true;
        }

        if (!uint.TryParse(cellPart.Replace("0x", ""), System.Globalization.NumberStyles.HexNumber, null, out var objCellId))
            return false;

        var bracketClose = rest.IndexOf(']');
        if (bracketClose < 0) bracketClose = rest.IndexOf(')');
        if (bracketClose < 0) return false;

        var coordsStr = rest[1..bracketClose].Trim();
        var remainder = rest[(bracketClose + 1)..].Trim();

        var coords = coordsStr.Split(new[] { ',', ' ', '\t' }, StringSplitOptions.RemoveEmptyEntries);
        if (coords.Length < 3) return false;

        if (!float.TryParse(coords[0], out var px)) return false;
        if (!float.TryParse(coords[1], out var py)) return false;
        if (!float.TryParse(coords[2], out var pz)) return false;

        var rotParts = remainder.Split(new[] { ' ', '\t' }, StringSplitOptions.RemoveEmptyEntries);
        if (rotParts.Length < 4)
        {
            pos = new Position(objCellId, px, py, pz, 0f, 0f, 0f, 1f);
            return true;
        }

        if (!float.TryParse(rotParts[0], out var rw)) return false;
        if (!float.TryParse(rotParts[1], out var rx)) return false;
        if (!float.TryParse(rotParts[2], out var ry)) return false;
        if (!float.TryParse(rotParts[3], out var rz)) return false;

        pos = new Position(objCellId, px, py, pz, rx, ry, rz, rw);
        return true;
    }
}
