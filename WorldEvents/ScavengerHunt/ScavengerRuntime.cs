using ACE.Database;
using SharedLoot;

namespace WorldEvents;

internal static class ScavengerRuntime
{
    internal static ActiveScavengerHuntData? ActiveEvent;
    internal static readonly object ScavengerLock = new();

    static WorldObject? _npc;
    static DateTime _roundEndTime = DateTime.MinValue;
    static readonly Random _rng = new();

    // ── Lifecycle ────────────────────────────────────────────────────────

    internal static void LoadFromDisk(Settings settings)
    {
        ScavengerPersistence.EnsureDirectories();
        lock (ScavengerLock)
        {
            var loaded = ScavengerPersistence.Load();
            if (loaded != null && loaded.IsActive)
            {
                var now = DateTime.UtcNow;
                var currentRound = loaded.Rounds.ElementAtOrDefault(loaded.CurrentRoundIndex);
                if (currentRound != null && currentRound.IsActive && now < currentRound.EndTime)
                {
                    ActiveEvent = loaded;
                    _roundEndTime = currentRound.EndTime;
                    ModManager.Log($"[ScavengerHunt] Loaded active event {loaded.EventId} at round {currentRound.RoundNumber}.", ModManager.LogLevel.Info);
                }
                else
                {
                    ScavengerPersistence.Clear();
                    ModManager.Log("[ScavengerHunt] Saved event expired — cleared.", ModManager.LogLevel.Info);
                }
            }
        }
    }

    internal static bool TryStartEvent(Settings settings)
    {
        if (!settings.EnableScavengerHunt) return false;

        lock (ScavengerLock)
        {
            if (ActiveEvent?.IsActive == true) return false;

            var eventId = $"SH-{DateTime.UtcNow:yyyyMMdd-HHmmss}-{_rng.Next(1000, 9999)}";
            var now = DateTime.UtcNow;

            ActiveEvent = new ActiveScavengerHuntData
            {
                EventId = eventId,
                StartTime = now,
                EndTime = now.AddHours(1),
                IsActive = true,
                CurrentRoundIndex = -1,
                Rounds = new List<ScavengerRound>(),
                PlayerTurnInCounts = new Dictionary<uint, int>(),
                NpcWcid = settings.ScavengerHunt.TurnInNpcWcid,
            };

            var roundCount = Math.Min(15, settings.ScavengerHunt.MaxRounds);
            for (int i = 0; i < roundCount; i++)
            {
                var target = SelectTargetItem(settings);
                var weenie = DatabaseManager.World.GetCachedWeenie(target);
                ActiveEvent.Rounds.Add(new ScavengerRound
                {
                    RoundNumber = i + 1,
                    TargetWcid = target,
                    TargetName = weenie?.GetProperty(PropertyString.Name) ?? "Unknown Item",
                    IsActive = false,
                });
            }

            SpawnNpc(settings);
            StartRound(settings, 0);
            ScavengerPersistence.Save(ActiveEvent);

            ModManager.Log($"[ScavengerHunt] Event {eventId} started with {roundCount} rounds.", ModManager.LogLevel.Info);
            return true;
        }
    }

    // ── Tick ─────────────────────────────────────────────────────────────

    internal static void Tick(Settings settings)
    {
        if (!settings.EnableScavengerHunt || ActiveEvent == null) return;

        lock (ScavengerLock)
        {
            var now = DateTime.UtcNow;
            var currentRound = ActiveEvent.Rounds.ElementAtOrDefault(ActiveEvent.CurrentRoundIndex);

            if (currentRound == null || !currentRound.IsActive)
                return;

            if (now >= _roundEndTime)
            {
                AdvanceRound(settings);
            }
        }
    }

    // ── Player interaction ───────────────────────────────────────────────

    internal static void OnNpcUse(Player player, Settings settings)
    {
        if (ActiveEvent == null || !ActiveEvent.IsActive) return;

        lock (ScavengerLock)
        {
            var currentRound = ActiveEvent.Rounds.ElementAtOrDefault(ActiveEvent.CurrentRoundIndex);
            if (currentRound == null || !currentRound.IsActive) return;

            var item = player.Inventory.Values.FirstOrDefault(i => i.WeenieClassId == currentRound.TargetWcid);
            if (item == null)
            {
                player.SendMessage($"Lorewalker Zahir seeks {currentRound.TargetName}. Bring it to him!");
                return;
            }

            // Consume item
            if (!player.TryRemoveFromInventoryWithNetworking(item.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem))
            {
                player.SendMessage("You were unable to hand over the item.");
                return;
            }

            currentRound.TurnedInByPlayerGuids.Add(player.Guid.Full);
            ActiveEvent.PlayerTurnInCounts[player.Guid.Full] = ActiveEvent.PlayerTurnInCounts.GetValueOrDefault(player.Guid.Full) + 1;

            // Award QB
            var questName = $"ScavengerHunt_{ActiveEvent.EventId}_Round{currentRound.RoundNumber}";
            ParticipationLedger.RecordCompletion(player.Account.AccountId, "ScavengerHunt", questName);

            // Award loot
            var cfg = LootConfigStore.GetLoadedOrDefault();
            var loot = LootRoller.TryCreateFromMinRarity(cfg, LootRarityFloor.Uncommon);
            if (loot != null)
            {
                TagSsfIfNeeded(player, loot);
                if (!player.TryCreateInInventoryWithNetworking(loot, out _))
                {
                    loot.Location = player.Location.InFrontOf(0.5f);
                    loot.EnterWorld();
                    player.SendMessage($"[ScavengerHunt] Loot reward: {loot.Name} -- pack full, dropped at your feet.");
                }
                else
                {
                    player.SendMessage($"[ScavengerHunt] Loot reward: {loot.Name}.");
                }
            }

            // Award XP
            var xp = settings.ScavengerHunt.XpPerTurnIn;
            if (xp > 0)
            {
                HuntXpInterop.GrantQuestXpWithoutMultiplier(player, xp);
                player.SendMessage($"[ScavengerHunt] +{xp:N0} XP rewarded!");
            }

            player.SendMessage($"Lorewalker Zahir accepts the {currentRound.TargetName} and rewards you!");

            // Advance
            if (ActiveEvent.CurrentRoundIndex + 1 < ActiveEvent.Rounds.Count)
            {
                var nextRound = ActiveEvent.Rounds[ActiveEvent.CurrentRoundIndex + 1];
                ScavengerBroadcast.SendTargetAcquired(currentRound, nextRound);
                AdvanceRound(settings);
            }
            else
            {
                EndEvent(settings);
            }

            ScavengerPersistence.Save(ActiveEvent);
        }
    }

    static void TagSsfIfNeeded(Player player, WorldObject item)
    {
        if (player.GetProperty(FakeBool.Ironman) != true) return;
        if (item.GetProperty(FakeBool.Ironman) == true) return;
        item.SetProperty(FakeBool.Ironman, true);
    }

    // ── Round management ─────────────────────────────────────────────────

    internal static void StartRound(Settings settings, int index)
    {
        if (ActiveEvent == null) return;

        if (index >= ActiveEvent.Rounds.Count)
        {
            EndEvent(settings);
            return;
        }

        ActiveEvent.CurrentRoundIndex = index;
        var round = ActiveEvent.Rounds[index];
        round.IsActive = true;
        round.StartTime = DateTime.UtcNow;
        round.EndTime = DateTime.UtcNow.AddMinutes(settings.ScavengerHunt.RoundDurationMinutes);
        _roundEndTime = round.EndTime;

        ScavengerBroadcast.SendNewTarget(round);
        ScavengerPersistence.Save(ActiveEvent);
    }

    internal static void AdvanceRound(Settings settings)
    {
        if (ActiveEvent == null) return;

        var current = ActiveEvent.Rounds.ElementAtOrDefault(ActiveEvent.CurrentRoundIndex);
        if (current != null)
            current.IsActive = false;

        StartRound(settings, ActiveEvent.CurrentRoundIndex + 1);
    }

    internal static void EndEvent(Settings settings)
    {
        if (ActiveEvent == null) return;

        ActiveEvent.IsActive = false;
        ActiveEvent.EndTime = DateTime.UtcNow;

        // Despawn NPC
        try { _npc?.Destroy(); }
        catch { }
        _npc = null;

        ScavengerRewards.DistributeRewards(ActiveEvent, settings);
        ScavengerBroadcast.SendEventEnd(ActiveEvent, settings);

        ScavengerPersistence.Clear();
        ActiveEvent = null;

        ModManager.Log("[ScavengerHunt] Event ended.", ModManager.LogLevel.Info);
    }

    internal static void ForceStart(Settings settings)
    {
        lock (ScavengerLock)
        {
            if (ActiveEvent != null)
                EndEvent(settings);
            TryStartEvent(settings);
        }
    }

    internal static void ForceStop(Settings settings)
    {
        lock (ScavengerLock)
        {
            if (ActiveEvent == null) return;
            EndEvent(settings);
        }
    }

    // ── NPC spawning ─────────────────────────────────────────────────────

    static void SpawnNpc(Settings settings)
    {
        var cellId = settings.ScavengerHunt.TurnInNpcLandblock << 16;
        var pos = new Position(cellId, 50f, 50f, 0f, 0f, 0f, 0f, 1f);
        pos.LandblockId = new LandblockId(pos.GetCell());
        var lb = LandblockManager.GetLandblock(pos.LandblockId, false);
        if (lb == null)
        {
            ModManager.Log($"[ScavengerHunt] Landblock not found for NPC spawn at {pos.LandblockId.Raw:X4}", ModManager.LogLevel.Warn);
            return;
        }

        lb.EnqueueAction(new ActionEventDelegate(() =>
        {
            var npc = WorldObjectFactory.CreateNewWorldObject(settings.ScavengerHunt.TurnInNpcWcid);
            if (npc == null)
            {
                ModManager.Log($"[ScavengerHunt] Failed to create NPC WCID {settings.ScavengerHunt.TurnInNpcWcid}", ModManager.LogLevel.Warn);
                return;
            }

            npc.Name = "Lorewalker Zahir";
            npc.Location = pos;

            if (LandblockManager.AddObject(npc))
            {
                _npc = npc;
                ModManager.Log("[ScavengerHunt] Lorewalker Zahir spawned at Marketplace.", ModManager.LogLevel.Info);
            }
            else
            {
                npc.Destroy();
                ModManager.Log($"[ScavengerHunt] Failed to add NPC to landblock {pos.LandblockId.Raw:X4}", ModManager.LogLevel.Warn);
            }
        }));
    }

    // ── Target selection ─────────────────────────────────────────────────

    static uint SelectTargetItem(Settings settings)
    {
        var hotItems = TryGetHotItems(settings.ScavengerHunt.LootTrackerLookbackDays, settings.ScavengerHunt.MinLootCount);
        var trophyRegex = new Regex(@"shreth|gromnie|armoredillo|drudge|undead|tusker|golem|olthoi|mattekar|ursuin|mosquito|phyntos|wasper|rat|monouga|margul|virindi|shadow|sclavus|grievver|doll|homunculus", RegexOptions.IgnoreCase);

        var candidates = hotItems
            .Where(i => trophyRegex.IsMatch(i.Name))
            .Select(i => i.Wcid)
            .ToList();

        if (candidates.Count == 0)
            candidates = settings.ScavengerHunt.FallbackItems;

        if (candidates.Count == 0)
        {
            ModManager.Log("[ScavengerHunt] No fallback items configured. Using default WCID 367.", ModManager.LogLevel.Warn);
            return 367;
        }

        return candidates[_rng.Next(candidates.Count)];
    }

    static List<(uint Wcid, string Name, int Count)> TryGetHotItems(int lookbackDays, int minCount)
    {
        var results = new List<(uint, string, int)>();

        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
                    continue;

                var type = asm.GetType("LeyLineLedger.LootTracker");
                if (type == null) continue;

                var method = type.GetMethod("GetHotItems", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(int), typeof(int) }, null);
                if (method == null) continue;

                var result = method.Invoke(null, new object[] { lookbackDays, minCount });
                if (result is System.Collections.IEnumerable enumerable)
                {
                    foreach (var item in enumerable)
                    {
                        if (item == null) continue;
                        var t = item.GetType();
                        var wcid = (uint)(t.GetField("Item1")?.GetValue(item) ?? 0u);
                        var name = (string)(t.GetField("Item2")?.GetValue(item) ?? "");
                        var count = (int)(t.GetField("Item3")?.GetValue(item) ?? 0);
                        results.Add((wcid, name, count));
                    }
                }
                break;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[ScavengerHunt] Failed to query LootTracker: {ex.Message}", ModManager.LogLevel.Warn);
        }

        return results;
    }
}
