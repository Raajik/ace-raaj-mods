# Design: WorldEvents Expansion + SpellSiphon + LeyLineLedger Robustness

**Date:** 2026-04-27  
**Status:** Approved  
**Build Order:** 6 workstreams, sequential

---

## Overview

This design covers five distinct workstreams:
1. **LeyLineLedger robustness** — Prevent crashes from missing/deleted weenies
2. **WorldEvents Solo Competitor Bonus** — Reward lone event participants
3. **SpellSiphon** (formerly GemCrafter) — Any-item spell extraction
4. **WorldEvents POI Hunt** ("Where in Dereth?") — Multi-round narrator chase
5. **WorldEvents Scavenger Hunt** — Global monster trophy turn-in

Plus a cross-cutting **Unified QB Ledger** refactor.

---

## Workstream 1: LeyLineLedger — Missing Item / Deleted Weenie Robustness

### Goal
Prevent crashes and data corruption when configured NPCs, currencies, or bankable items are removed from the world database.

### Current State
- `LootTracker.cs`, `BankSalvage.cs`, `Debit.cs`, `DirectDeposit.cs` call `player.TryCreateItems()` without explicit null checks in some paths.
- `PatchClass.cs:723` (`HandleWithdraw`) uses `TryCreateItems` implicitly trusting the configured WCID exists.
- No startup validation checks whether configured WCIDs are present in `ace_world`.

### Changes

#### Startup Validation (`Mod.OnWorldOpen` or `PatchClass.Start`)
Iterate all configured WCIDs and verify existence via `DatabaseManager.World.GetCachedWeenie()`:
- `Settings.Items` — bankable non-pyreal items
- `Settings.Currencies` — denomination table
- `Settings.SalvageBank.Materials` — salvage material bags
- `Settings.PublicExchange.PoolItems` — exchange pool
- `Settings.Lottery.TicketItem` — lottery ticket
- `Settings.HouseStorage.Tiers[*].ItemWcid` — house storage purchase items

Log a single consolidated warning:
```
[LeyLineLedger] Startup validation found N missing weenies:
  - WCID 12345 (Configured name: "Copper Scarab")
  - WCID 67890 (Configured name: "Salvaged Leather")
Features using these items will degrade gracefully.
```

#### Runtime Guards
Wrap `player.TryCreateItems()` calls in:
- `PatchClass.cs:HandleWithdraw` (~line 723)
- `PatchClass.cs:WithdrawPyreals` (~line 1570)
- `PatchClass.cs:WithdrawCurrency` (~line 1447)
- `BankSalvage.cs` bag creation paths (lines 406, 777, 885)
- `PublicExchange.cs` item creation (~line 405)

Pattern:
```csharp
var created = player.TryCreateItems($"{wcid} {amount}");
if (created == null || created.Count == 0)
{
    player.SendMessage($"The bank tried to dispense {name}, but that item no longer exists in the world. Contact an admin.");
    ModManager.Log($"[LeyLineLedger] Failed to create WCID {wcid} ({name}) for player {player.Name}. Item missing from world DB.");
    return; // Abort without deducting currency
}
```

#### Vendor Integration (`Debit.cs`)
If vendor merchandise includes a missing weenie, skip it with a warning:
```csharp
var weenie = DatabaseManager.World.GetCachedWecid(wcid);
if (weenie == null)
{
    ModManager.Log($"[LeyLineLedger] Vendor {vendor.Name} merchandise includes missing WCID {wcid}. Skipping.");
    continue;
}
```

#### Settings
```csharp
[JsonPropertyName("// ValidateWeeniesAtStartup")]
public string _doc_ValidateWeeniesAtStartup { get; set; }
[JsonPropertyName("ValidateWeeniesAtStartup")]
public bool ValidateWeeniesAtStartup { get; set; } = true;
```

### Files Modified
- `LeyLineLedger/Settings.cs`
- `LeyLineLedger/PatchClass.cs`
- `LeyLineLedger/BankSalvage.cs`
- `LeyLineLedger/Debit.cs`
- `LeyLineLedger/DirectDeposit.cs`
- `LeyLineLedger/PublicExchange.cs`

### Effort: ~250 lines

---

## Workstream 2: WorldEvents — Solo Competitor Bonus

### Goal
When any event ends with exactly 1 participant, that player receives bonus rewards.

### Changes

#### Settings (`WorldEvents/Settings.cs`)
```csharp
[JsonPropertyName("// SoloCompetitorBonus")]
public string _doc_SoloCompetitorBonus { get; set; }
[JsonPropertyName("SoloCompetitorBonus")]
public SoloCompetitorBonusSettings SoloCompetitorBonus { get; set; } = new();

public class SoloCompetitorBonusSettings
{
    [JsonPropertyName("// Enable")] public string _doc_Enable { get; set; }
    [JsonPropertyName("Enable")] public bool Enable { get; set; } = true;

    [JsonPropertyName("// LootFloorBonus")] public string _doc_LootFloorBonus { get; set; }
    [JsonPropertyName("LootFloorBonus")] public int LootFloorBonus { get; set; } = 1; // +1 tier

    [JsonPropertyName("// XpMultiplier")] public string _doc_XpMultiplier { get; set; }
    [JsonPropertyName("XpMultiplier")] public float XpMultiplier { get; set; } = 1.5f;

    [JsonPropertyName("// BroadcastMessage")] public string _doc_BroadcastMessage { get; set; }
    [JsonPropertyName("BroadcastMessage")] public string BroadcastMessage { get; set; } = "{Name} reigns supreme as the only competitor and earns bonus rewards!";
}
```

#### Integration Points

**Hunt:** In `HuntRuntime.FinalizeHuntLeaderboard`, check total unique participants across all brackets. If == 1, pass `SoloCompetitorBonus` flag to `HuntLootRewards` and `HuntXpRewards`.

**Invasion:** In `InvasionRuntime.EndWave`, check `InvasionKillTracker.GetRanked().Count`. If == 1, apply bonus.

**Cull:** In `CullRuntime.EndCull`, check `ActiveCullData.KillsByPlayer.Count`. If == 1, apply bonus.

**BonusQuest:** In `BonusQuestRuntime.EndEvent`, check `ActiveBonusQuestData.PlayerCompletions.Count`. If == 1, apply bonus.

**Sale:** In `SaleRuntime.EndSale`, check `ActiveSaleData.ParticipantCount` (new tracking needed). If == 1, apply bonus.

**Reward application:**
- Loot: Adjust `LootRarity` floor by `+LootFloorBonus` before calling `LootRoller`.
- XP: Multiply calculated XP by `XpMultiplier` before granting.
- Broadcast: Send `SoloCompetitorBonus.BroadcastMessage.Replace("{Name}", playerName)` via `WorldEventsBroadcast.Send()`.

### Files Modified
- `WorldEvents/Settings.cs`
- `WorldEvents/Hunt/HuntRuntime.cs`
- `WorldEvents/Hunt/HuntLootRewards.cs`
- `WorldEvents/Hunt/HuntXpRewards.cs`
- `WorldEvents/Invasion/InvasionRuntime.cs`
- `WorldEvents/Invasion/InvasionLootRewards.cs`
- `WorldEvents/Cull/CullRuntime.cs`
- `WorldEvents/Cull/CullRewards.cs`
- `WorldEvents/BonusQuest/BonusQuestRuntime.cs`
- `WorldEvents/BonusQuest/BonusQuestRewards.cs`
- `WorldEvents/Sale/SaleRuntime.cs`
- `WorldEvents/Sale/Models/ActiveSaleData.cs` (add ParticipantCount)

### Effort: ~150 lines

---

## Workstream 3: SpellSiphon (formerly GemCrafter)

### Goal
Rebrand GemCrafter to SpellSiphon and expand scope to crush any spell-bearing item.

### Rename Checklist
- [ ] Folder: `GemCrafter/` → `SpellSiphon/`
- [ ] Project: `GemCrafter.csproj` → `SpellSiphon.csproj` (update AssemblyName, RootNamespace)
- [ ] `Meta.json`: Name = `"SpellSiphon"`, update description
- [ ] `GlobalUsings.cs`: Update namespace imports
- [ ] `Mod.cs`: Update namespace
- [ ] `PatchClass.cs`: Update namespace
- [ ] `Settings.cs`: Update namespace
- [ ] `MortarAndPestleHooks.cs` → `ExtractionTool.cs`
- [ ] `GemcrafterCommands.cs` → `SpellSiphonCommands.cs`
- [ ] `GemcrafterQaCommands.cs` → `SpellSiphonQaCommands.cs`
- [ ] `GemcrafterQaTests.cs` → `SpellSiphonQaTests.cs`
- [ ] Internal class names: `GemLootMutator` → `LootMutator`
- [ ] Update all `using GemCrafter` → `using SpellSiphon`
- [ ] Update `ace-raaj-mods.sln` project reference
- [ ] Update `.github/workflows/release.yml` if project name is hardcoded

### Functional Changes

#### `ExtractionTool.cs` (formerly `MortarAndPestleHooks.cs`)

**Eligibility check:** Any `WorldObject` where:
```csharp
bool hasSpells = (item.PropertiesSpellBook?.Count > 0) || (item.SpellDID > 0);
bool isBlacklisted = Settings.NonCrushableWcids.Contains(item.WeenieClassId);
bool isAttunedBonded = !Settings.AllowAttunedAndBonded && 
    (item.IsAttuned || item.IsBonded);
bool canCrush = hasSpells && !isBlacklisted && !isAttunedBonded;
```

**Success rate calculation:**
```csharp
float skill = player.GetModdedMagicItemTinkering(); // buffed skill
float rate = Settings.BaseSuccessRate + (skill * Settings.SkillBonusPerPoint);
if (Settings.ReduceBySpellLevel)
{
    foreach (var spellId in item.PropertiesSpellBook?.Keys ?? new())
    {
        var spell = new Spell(spellId);
        if (spell.Level > 6)
            rate -= 2.0f * (spell.Level - 6);
    }
}
rate = Math.Clamp(rate, 0f, Settings.MaxSuccessRate);
```

**Failure:**
```csharp
if (ThreadSafeRandom.Next(0f, 100f) > rate)
{
    InventoryHelpers.TryRemoveOneFromPlayer(player, item);
    player.SendMessage("Your mortar shatters the item but fails to capture any spells.");
    return;
}
```

**Success:** Existing behavior — extract spells into mortar payload.

#### `SpellSiphonCommands.cs`
- `/spellsiphon crush [item]` — crush target item
- `/spellsiphon apply [item]` — apply mortar payload to target equipment
- `/spellsiphon status` — show current mortar payload

#### Settings (`Settings.cs`)
```csharp
[JsonPropertyName("// EnableAnyItemCrushing")] public string _doc_EnableAnyItemCrushing { get; set; }
[JsonPropertyName("EnableAnyItemCrushing")] public bool EnableAnyItemCrushing { get; set; } = true;

[JsonPropertyName("// BaseSuccessRate")] public string _doc_BaseSuccessRate { get; set; }
[JsonPropertyName("BaseSuccessRate")] public float BaseSuccessRate { get; set; } = 20f;

[JsonPropertyName("// SkillBonusPerPoint")] public string _doc_SkillBonusPerPoint { get; set; }
[JsonPropertyName("SkillBonusPerPoint")] public float SkillBonusPerPoint { get; set; } = 0.05f;

[JsonPropertyName("// MaxSuccessRate")] public string _doc_MaxSuccessRate { get; set; }
[JsonPropertyName("MaxSuccessRate")] public float MaxSuccessRate { get; set; } = 100f;

[JsonPropertyName("// ReduceBySpellLevel")] public string _doc_ReduceBySpellLevel { get; set; }
[JsonPropertyName("ReduceBySpellLevel")] public bool ReduceBySpellLevel { get; set; } = true;

[JsonPropertyName("// AllowAttunedAndBonded")] public string _doc_AllowAttunedAndBonded { get; set; }
[JsonPropertyName("AllowAttunedAndBonded")] public bool AllowAttunedAndBonded { get; set; } = true;

[JsonPropertyName("// NonCrushableWcids")] public string _doc_NonCrushableWcids { get; set; }
[JsonPropertyName("NonCrushableWcids")] public List<uint> NonCrushableWcids { get; set; } = new();
```

### Files Renamed/Modified
- `GemCrafter/` → `SpellSiphon/` (all files)
- `ace-raaj-mods.sln`
- `.github/workflows/release.yml` (if needed)

### Effort: ~500 lines (rename + expansion)

---

## Workstream 4: Unified QB Ledger (Cross-Cutting Refactor)

### Goal
Extract `BonusQuestParticipation` into a shared service that POI Hunt and Scavenger Hunt can also use.

### New Files

#### `WorldEvents/ParticipationLedger.cs`
```csharp
public static class ParticipationLedger
{
    private static readonly string BasePath = Path.Combine(ModManager.ModPath, "WorldEvents", "Participation");

    public static void RecordCompletion(uint accountId, string eventType, string questName)
    {
        var summary = Load(accountId);
        summary.TotalEventCompletions++;
        summary.CompletionsByEventType.TryAdd(eventType, 0);
        summary.CompletionsByEventType[eventType]++;
        summary.UniqueQuestNamesByEventType.TryAdd(eventType, new HashSet<string>());
        summary.UniqueQuestNamesByEventType[eventType].Add(questName);
        summary.LastCompletionUtc = DateTime.UtcNow;
        Save(accountId, summary);
    }

    public static int GetCompletionCount(uint accountId, string eventType)
    {
        var summary = Load(accountId);
        return summary.CompletionsByEventType.TryGetValue(eventType, out var count) ? count : 0;
    }

    public static bool HasQuest(uint accountId, string questName)
    {
        var summary = Load(accountId);
        foreach (var set in summary.UniqueQuestNamesByEventType.Values)
            if (set.Contains(questName)) return true;
        return false;
    }

    public static List<string> GetUniqueQuests(uint accountId, string eventType)
    {
        var summary = Load(accountId);
        return summary.UniqueQuestNamesByEventType.TryGetValue(eventType, out var set)
            ? set.ToList() : new List<string>();
    }

    private static AccountParticipationSummary Load(uint accountId)
    {
        var path = Path.Combine(BasePath, $"{accountId}.json");
        if (!File.Exists(path)) return new AccountParticipationSummary { AccountId = accountId };
        var json = File.ReadAllText(path);
        return JsonSerializer.Deserialize<AccountParticipationSummary>(json) ?? new();
    }

    private static void Save(uint accountId, AccountParticipationSummary summary)
    {
        Directory.CreateDirectory(BasePath);
        var path = Path.Combine(BasePath, $"{accountId}.json");
        File.WriteAllText(path, JsonSerializer.Serialize(summary, new JsonSerializerOptions { WriteIndented = true }));
    }
}
```

#### `WorldEvents/Models/AccountParticipationSummary.cs`
(Move from `BonusQuest/Models/` and update namespace)

### Refactor `BonusQuestParticipation.cs`
Replace direct JSON I/O with calls to `ParticipationLedger.RecordCompletion()`, `GetCompletionCount()`, `HasQuest()`, etc.

### Files Modified
- `WorldEvents/BonusQuest/BonusQuestParticipation.cs`
- `WorldEvents/BonusQuest/Models/AccountParticipationSummary.cs` (move)
- `WorldEvents/PatchClass.cs` (`/top qb` command)

### Effort: ~200 lines

---

## Workstream 5: WorldEvents — POI Hunt ("Where in Dereth?")

### Goal
Multi-round narrator chase. Players find "Lorewalker Zahir" based on landmark clues. Each find awards a unique QB stamp. NPCs persist until event end.

### Lorewalker Zahir (Narrator NPC)
- **Base template:** Human male Gharu'ndim (new SQL weenie, WCIDs 800001–800015 for POI Hunt, 800016 for Scavenger Hunt).
- **Robe:** WCID 28256 or 28257, randomly selected per spawn.
- **Name:** "Lorewalker Zahir" (display name set at spawn time via `Name` property).
- **Spawning:** Runtime-spawned via `WorldObjectFactory.CreateNewWorldObject(narratorWcid)`. Each round uses a **different base WCID** (configured in `NarratorBaseWcids`) so players can't farm all QBs from one NPC.
- **Persistence:** Zahir **does NOT despawn between rounds**. He stays until the **event ends**.

### Data Model

#### `PoiLocation`
```csharp
public class PoiLocation
{
    public uint LandblockId { get; set; }
    public Position Position { get; set; }
    public string Tier { get; set; } // Easy, Medium, Hard
    public List<string> ClueTexts { get; set; } = new(); // Hand-written primary clues
    public string RewardPoolId { get; set; }
}
```

#### `PoiHuntRound`
```csharp
public class PoiHuntRound
{
    public int RoundNumber { get; set; }
    public int LocationIndex { get; set; }
    public ObjectGuid NarratorGuid { get; set; }
    public uint NarratorWcid { get; set; }
    public DateTime StartTime { get; set; }
    public DateTime EndTime { get; set; }
    public List<uint> FoundByPlayerGuids { get; set; } = new();
    public bool IsActive { get; set; }
}
```

#### `ActivePoiHuntData`
```csharp
public class ActivePoiHuntData
{
    public string EventId { get; set; }
    public List<PoiHuntRound> Rounds { get; set; } = new();
    public Dictionary<uint, int> PlayerFindCounts { get; set; } = new();
    public int CurrentRoundIndex { get; set; }
    public DateTime StartTime { get; set; }
    public DateTime EndTime { get; set; }
}
```

### Event Lifecycle

1. **Start (`PoiHuntRuntime.StartEvent`)**
   - Generate unique `EventId`: `"PoiHunt_" + DateTime.UtcNow.ToString("yyyyMMdd_HHmm")`.
   - Pick random `PoiLocation` from `Settings.PoiLocations` pool.
   - Select narrator WCID: `Settings.NarratorBaseWcids[round % count]`.
   - Spawn Zahir at `PoiLocation.Position` using `LandblockManager.GetLandblock(lbId).EnqueueAction(...)`.
   - Set runtime properties: `Name = "Lorewalker Zahir"`, `SpellDID = 0`, etc.
   - Broadcast first clue.
   - Set round timer: 15 minutes.

2. **Clue Broadcast (`PoiHuntBroadcast.SendClue`)**
   - Every 5 minutes while round is active.
   - Clue priority:
     1. Hand-written `ClueTexts[clueIndex]` (if available).
     2. Auto-generated nearby portal: *"You sense a portal to [DungeonName] nearby..."* (scan `landblock_instance` within 3 landblocks, filter for `weenie_type == Portal`, prefer dungeons over towns).
     3. Auto-generated nearby NPC: *"A local named [NPCName] might know the way..."* (scan `landblock_instance` within 2 landblocks, filter for `weenie_type == NPC` or `Creature`, pick random).
     4. Directional hint: *"[Direction] of [NearestTown]..."* (calculate bearing from nearest known town center).
   - **Clues stop when round ends** (even if Zahir is still present).

3. **Player Find (`PoiHuntRuntime.OnNarratorUse`)**
   - Player uses (double-clicks) Zahir.
   - Check if player already found this round (`FoundByPlayerGuids.Contains(player.Guid.Full)`). If yes, send *"You have already found Lorewalker Zahir here. Seek him at his new location!"*.
   - If no: add player to `FoundByPlayerGuids`. Increment `PlayerFindCounts[player.Guid.Full]`.
   - Award QB: `ParticipationLedger.RecordCompletion(player.Account.AccountId, "PoiHunt", $"PoiHunt_{EventId}_Round{RoundNumber}")`.
   - Send player: *"Lorewalker Zahir marks your journey! You have found him at {LocationName}."*.
   - **Force-start next round immediately** (don't wait for timer):
     - Pick next random `PoiLocation` (ensure not used in this event).
     - Spawn new Zahir at new location with next WCID.
     - Broadcast: *"Lorewalker Zahir has moved! A new round begins!"* + first clue.
     - Old Zahir remains (no despawn).

4. **Round Timeout**
   - If 15 minutes elapse with no finds, round ends.
   - No new clues for this round.
   - If `CurrentRoundIndex < MinRounds`, force-start next round.
   - If `CurrentRoundIndex >= MinRounds` and no one found current round, **event ends early**.

5. **Event End (`PoiHuntRuntime.EndEvent`)**
   - Despawn all Zahirs (iterate `Rounds`, call `Destroy()` on each narrator object).
   - Rank players by `PlayerFindCounts`.
   - Top `LootForTopN` get BetterLootControl's `LootRoller` (`SharedLoot` namespace) with rarity floor.
   - All participants get `XpPerFind * findCount`.
   - Broadcast results.
   - Save persistence.

### Auto-Discovery System

Reusable helper: `WorldEvents/Helpers/LandblockScanner.cs`

```csharp
public static class LandblockScanner
{
    public static List<WorldObjectInfo> GetNearbyPortals(uint landblockId, int radiusLandblocks = 3)
    {
        // Query landblock_instance within radius, filter weenie_type == Portal
        // Return Name + WCID for clue generation
    }

    public static List<WorldObjectInfo> GetNearbyNpcs(uint landblockId, int radiusLandblocks = 2)
    {
        // Query landblock_instance within radius, filter weenie_type == NPC/Creature
        // Return Name + WCID
    }

    public static string GetNearestTownName(Position pos)
    {
        // Compare against known town centers (hardcoded dictionary)
        // Return town name + bearing (N/S/E/W/NE/NW/SE/SW)
    }
}
```

This helper is documented for reuse by other mods/events.

### QB Ledger
- Format: `"PoiHunt_{EventId}_Round{N}"` (e.g., `"PoiHunt_20260427_1430_Round3"`).
- Stored via `ParticipationLedger`.

### Settings (`WorldEvents/Settings.cs`)
```csharp
[JsonPropertyName("// EnablePoiHunt")] public string _doc_EnablePoiHunt { get; set; }
[JsonPropertyName("EnablePoiHunt")] public bool EnablePoiHunt { get; set; } = true;

[JsonPropertyName("// PoiHunt")] public string _doc_PoiHunt { get; set; }
[JsonPropertyName("PoiHunt")] public PoiHuntSettings PoiHunt { get; set; } = new();

public class PoiHuntSettings
{
    [JsonPropertyName("// PoiLocations")] public string _doc_PoiLocations { get; set; }
    [JsonPropertyName("PoiLocations")] public List<PoiLocation> PoiLocations { get; set; } = new();

    [JsonPropertyName("// ClueIntervalMinutes")] public string _doc_ClueIntervalMinutes { get; set; }
    [JsonPropertyName("ClueIntervalMinutes")] public int ClueIntervalMinutes { get; set; } = 5;

    [JsonPropertyName("// RoundDurationMinutes")] public string _doc_RoundDurationMinutes { get; set; }
    [JsonPropertyName("RoundDurationMinutes")] public int RoundDurationMinutes { get; set; } = 15;

    [JsonPropertyName("// MinRounds")] public string _doc_MinRounds { get; set; }
    [JsonPropertyName("MinRounds")] public int MinRounds { get; set; } = 4;

    [JsonPropertyName("// MaxRounds")] public string _doc_MaxRounds { get; set; }
    [JsonPropertyName("MaxRounds")] public int MaxRounds { get; set; } = 15;

    [JsonPropertyName("// NarratorBaseWcids")] public string _doc_NarratorBaseWcids { get; set; }
    [JsonPropertyName("NarratorBaseWcids")] public List<uint> NarratorBaseWcids { get; set; } = new();

    [JsonPropertyName("// NarratorRobeWcids")] public string _doc_NarratorRobeWcids { get; set; }
    [JsonPropertyName("NarratorRobeWcids")] public List<uint> NarratorRobeWcids { get; set; } = new() { 28256, 28257 };

    [JsonPropertyName("// RewardPool")] public string _doc_RewardPool { get; set; }
    [JsonPropertyName("RewardPool")] public string RewardPool { get; set; } = "Default";

    [JsonPropertyName("// XpPerFind")] public string _doc_XpPerFind { get; set; }
    [JsonPropertyName("XpPerFind")] public int XpPerFind { get; set; } = 5000000;

    [JsonPropertyName("// LootForTopN")] public string _doc_LootForTopN { get; set; }
    [JsonPropertyName("LootForTopN")] public int LootForTopN { get; set; } = 3;
}
```

### New Files
- `WorldEvents/PoiHunt/PoiHuntRuntime.cs`
- `WorldEvents/PoiHunt/PoiHuntBroadcast.cs`
- `WorldEvents/PoiHunt/PoiHuntRewards.cs`
- `WorldEvents/PoiHunt/PoiHuntPersistence.cs`
- `WorldEvents/PoiHunt/Models/ActivePoiHuntData.cs`
- `WorldEvents/PoiHunt/Models/PoiLocation.cs`
- `WorldEvents/PoiHunt/Models/PoiHuntRound.cs`
- `WorldEvents/Helpers/LandblockScanner.cs`
- `WorldEvents/Content/LorewalkerZahir_*.sql` (weenie definitions)

### Files Modified
- `WorldEvents/Settings.cs`
- `WorldEvents/EventScheduler.cs`
- `WorldEvents/WorldEventType` (enum)
- `WorldEvents/PatchClass.cs` (startup hooks)

### Effort: ~1200 lines

---

## Workstream 6: WorldEvents — Scavenger Hunt

### Goal
Global turn-in event. Narrator asks for monster trophies. Players bring them to Lorewalker Zahir at marketplace.

### Lorewalker Zahir (Scavenger Variant)
- **Name:** "Lorewalker Zahir" (same as POI Hunt).
- **Spawn:** Temporary at marketplace (landblock `0x016C`).
- **Behavior:** One NPC for the entire event. Accepts **all 15 pre-generated target items**.

### Pre-Generated Rounds
- At event start, generate **15 target items** using `LootTracker` hot-economy data + fallback pool.
- Items are queued. `CurrentTargetIndex` tracks which item is active.
- When a player turns in the current item, advance `CurrentTargetIndex` and announce new target globally.
- If no turn-in for 15 minutes, **auto-advance** to next item.
- Each turn-in awards QB: `"ScavengerHunt_{EventId}_Round{RoundNumber}"`.

### Target Selection (Per Round)
```csharp
public uint SelectTargetItem()
{
    // 1. Query LootTracker.GetHotItems(days: 7, minCount: 100)
    var hotItems = LootTrackerApi.GetHotItems(lookbackDays: 7, minLootCount: 100);

    // 2. Filter for monster trophies
    var trophyRegex = new Regex(@"shreth|gromnie|armoredillo|drudge|undead|tusker|golem|olthoi|mattekar|ursuin|mosquito|phyntos|wasper|rat|monouga|margul|virindi|shadow|sclavus|grievver|doll|homunculus", RegexOptions.IgnoreCase);

    var candidates = hotItems
        .Where(i => trophyRegex.IsMatch(i.Name))
        .Where(i => !IsQuestItem(i.Wcid))
        .Where(i => !IsAttunedOrBonded(i.Wcid))
        .ToList();

    // 3. Fallback to static pool if empty
    if (candidates.Count == 0)
        candidates = Settings.ScavengerHunt.FallbackItems
            .Select(wcid => new { Wcid = wcid, Name = GetWeenieName(wcid) })
            .ToList();

    // 4. Pick random
    return candidates[ThreadSafeRandom.Next(0, candidates.Count - 1)].Wcid;
}
```

**Fallback pool (vanilla ACE trophies):**
- Shreth Hide (367)
- Gromnie Tooth (368)
- Armoredillo Spine (369)
- Drudge Charm (370)
- Rat Tail (371)
- Wasp Wing (372)
- Mosswart Scalp (373)
- Monouga Meat (374)
- Phyntos Wasp Wing (375)
- Undead Femur (376)
- Ursuin Hide (377)
- Virindi Essence (378)
- Grievver Leg (379)
- Doll Face (380)
- Sclavus Hide (381)

### Turn-In Flow
1. Player interacts with Zahir.
2. Zahir checks if player has `CurrentTargetWcid`.
3. If yes:
   - Consume item via `InventoryHelpers.TryRemoveOneFromPlayer()`.
   - Award QB via `ParticipationLedger.RecordCompletion(..., "ScavengerHunt", $"ScavengerHunt_{EventId}_Round{CurrentRound}")`.
   - Award loot-table rolls via BetterLootControl (Uncommon+ floor).
   - Award `XpPerTurnIn`.
   - Advance to next target.
   - Broadcast: *"Lorewalker Zahir accepts the [ItemName]! He now seeks [NextItemName]!"*
4. If no:
   - Tell player current target: *"Lorewalker Zahir seeks [ItemName]. Bring it to him!"*

### Event End
- Despawn Zahir.
- Rank players by total turn-in count (QB count).
- Top 3 get bonus loot (Rare+ floor).
- All participants get flat XP.

### Settings (`WorldEvents/Settings.cs`)
```csharp
[JsonPropertyName("// EnableScavengerHunt")] public string _doc_EnableScavengerHunt { get; set; }
[JsonPropertyName("EnableScavengerHunt")] public bool EnableScavengerHunt { get; set; } = true;

[JsonPropertyName("// ScavengerHunt")] public string _doc_ScavengerHunt { get; set; }
[JsonPropertyName("ScavengerHunt")] public ScavengerHuntSettings ScavengerHunt { get; set; } = new();

public class ScavengerHuntSettings
{
    [JsonPropertyName("// MinLootCount")] public string _doc_MinLootCount { get; set; }
    [JsonPropertyName("MinLootCount")] public int MinLootCount { get; set; } = 100;

    [JsonPropertyName("// LootTrackerLookbackDays")] public string _doc_LootTrackerLookbackDays { get; set; }
    [JsonPropertyName("LootTrackerLookbackDays")] public int LootTrackerLookbackDays { get; set; } = 7;

    [JsonPropertyName("// FallbackItems")] public string _doc_FallbackItems { get; set; }
    [JsonPropertyName("FallbackItems")] public List<uint> FallbackItems { get; set; } = new() { 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381 };

    [JsonPropertyName("// TurnInNpcWcid")] public string _doc_TurnInNpcWcid { get; set; }
    [JsonPropertyName("TurnInNpcWcid")] public uint TurnInNpcWcid { get; set; } = 800001; // Lorewalker Zahir scavenger variant

    [JsonPropertyName("// TurnInNpcLandblock")] public string _doc_TurnInNpcLandblock { get; set; }
    [JsonPropertyName("TurnInNpcLandblock")] public uint TurnInNpcLandblock { get; set; } = 0x016C;

    [JsonPropertyName("// MaxRounds")] public string _doc_MaxRounds { get; set; }
    [JsonPropertyName("MaxRounds")] public int MaxRounds { get; set; } = 15;

    [JsonPropertyName("// RoundDurationMinutes")] public string _doc_RoundDurationMinutes { get; set; }
    [JsonPropertyName("RoundDurationMinutes")] public int RoundDurationMinutes { get; set; } = 15;

    [JsonPropertyName("// RewardPool")] public string _doc_RewardPool { get; set; }
    [JsonPropertyName("RewardPool")] public string RewardPool { get; set; } = "Default";

    [JsonPropertyName("// XpPerTurnIn")] public string _doc_XpPerTurnIn { get; set; }
    [JsonPropertyName("XpPerTurnIn")] public int XpPerTurnIn { get; set; } = 5000000;

    [JsonPropertyName("// BonusLootTopN")] public string _doc_BonusLootTopN { get; set; }
    [JsonPropertyName("BonusLootTopN")] public int BonusLootTopN { get; set; } = 3;
}
```

### Integration Points
- `LeyLineLedger/LootTracker.cs`: Expose `GetHotItems(int days, int minCount)` as public API.
- `LeyLineLedger/EmoteBankPatches.cs`: Ensure `TakeItems` can consume target item (already patched for bank integration).

### New Files
- `WorldEvents/ScavengerHunt/ScavengerRuntime.cs`
- `WorldEvents/ScavengerHunt/ScavengerBroadcast.cs`
- `WorldEvents/ScavengerHunt/ScavengerRewards.cs`
- `WorldEvents/ScavengerHunt/ScavengerPersistence.cs`
- `WorldEvents/ScavengerHunt/Models/ActiveScavengerHuntData.cs`
- `WorldEvents/ScavengerHunt/Models/ScavengerRound.cs`
- `WorldEvents/Content/LorewalkerZahir_Scavenger.sql`

### Files Modified
- `WorldEvents/Settings.cs`
- `WorldEvents/EventScheduler.cs`
- `WorldEvents/WorldEventType` (enum)
- `WorldEvents/PatchClass.cs`
- `LeyLineLedger/LootTracker.cs` (expose API)

### Effort: ~900 lines

---

## Cross-Cutting: Event Scheduler Integration

### `WorldEventType` Enum
```csharp
public enum WorldEventType
{
    Hunt,
    Invasion,
    Cull,
    Sale,
    BonusQuest,
    PoiHunt,
    ScavengerHunt
}
```

### `EventScheduler` Changes
- Add `PoiHunt` and `ScavengerHunt` to the rotation pool.
- Random selection with no back-to-back same event (existing rule).
- Interval: 45 minutes (configurable).
- Duration: 60 minutes (configurable per event type).

### `PatchClass.Start` Changes
- Add startup hooks for `PoiHuntRuntime.Initialize()` and `ScavengerRuntime.Initialize()`.
- Add background timer ticks (same pattern as existing runtimes).

---

## Lorewalker Zahir Weenie SQL

### POI Hunt Narrator Variants
Create 15 human NPC weenies in `WorldEvents/Content/`:

```sql
-- Lorewalker Zahir (Round 1)
DELETE FROM weenie WHERE class_Id = 800001;
INSERT INTO weenie (class_Id, class_Name, type)
VALUES (800001, 'lorewalkerzahir1', 12); /* Vendor */

-- Properties: Name, UseRadius, etc.
DELETE FROM weenie_properties_string WHERE object_Id = 800001;
INSERT INTO weenie_properties_string (object_Id, type, value)
VALUES (800001, 1, 'Lorewalker Zahir'); -- Name

DELETE FROM weenie_properties_int WHERE object_Id = 800001;
INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES 
(800001,  1,    16), -- ItemType = Creature
(800001,  2,    31), -- CreatureType = Human
(800001,  6,    -1), -- ItemsCapacity
(800001,  7,    -1), -- ContainersCapacity
(800001,  16,    32), -- ItemUseable = Remote
(800001,  25,    1), -- Level
(800001,  93,   6292504), -- PhysicsState = Ethereal, ReportCollisions, IgnoreCollisions, Gravity
(800001,  95,     8), -- RadarBlipColor = Admin (red, makes him stand out)
(800001, 133,     4), -- ShowableOnRadar = ShowAlways
(800001, 134,    16), -- NpcLooksLikeObject = 16 (human male)
(800001, 146,   100); -- XpOverride

-- Clothing: Red Canescent Mattekar Robe (WCID 28256 or 28257)
DELETE FROM weenie_properties_d_i_d WHERE object_Id = 800001;
INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
VALUES 
(800001,   1, 33554433), -- Setup = HumanMale
(800001,   2, 150994945), -- MotionTable = Human
(800001,   3, 536870913), -- SoundTable = Human
(800001,   4, 805306368), -- CombatTable = Unarmed
(800001,   6, 67108990), -- PaletteBase = HumanSkin
(800001,   7, 268435831), -- ClothingBase = (robe)
(800001,   8, 100667446); -- Icon = HumanMale

-- Position: Set at runtime via spawner
```

Repeat for WCIDs 800001–800015, differing only in `class_Name` (`lorewalkerzahir1` through `lorewalkerzahir15`).

### Scavenger Hunt Variant
```sql
-- Lorewalker Zahir (Scavenger)
DELETE FROM weenie WHERE class_Id = 800016;
INSERT INTO weenie (class_Id, class_Name, type)
VALUES (800016, 'lorewalkerzahirscavenger', 12);
-- Same properties as above, but positioned at marketplace via landblock_instance SQL
```

---

## Build Order & Effort Summary

| # | Workstream | Effort (lines) | New Files | Modified Files |
|---|-----------|---------------|-----------|----------------|
| 1 | LeyLineLedger robustness | ~250 | 0 | 6 |
| 2 | Solo Competitor Bonus | ~150 | 0 | 12 |
| 3 | Unified QB Ledger | ~200 | 2 | 3 |
| 4 | SpellSiphon rename + expansion | ~500 | 0 (renames) | 8 |
| 5 | POI Hunt | ~1200 | 9 | 5 |
| 6 | Scavenger Hunt | ~900 | 8 | 6 |
| **Total** | | **~3200** | **19** | **40** |

---

## Risks & Mitigations

| Risk | Impact | Mitigation |
|------|--------|------------|
| Thread-unsafe landblock spawns | Crash | Use `lb.EnqueueAction()` for all narrator spawns (lessons from InvasionRuntime fix) |
| LootTracker API not public | Scavenger Hunt can't query hot items | Add public wrapper method in `LootTracker.cs` |
| Missing weenie on spawn | Null reference | Check `CreateNewWorldObject` return value, abort round with broadcast |
| Duplicate locations in POI Hunt | Players find same spot twice | Track used locations in `ActivePoiHuntData`, filter from selection |
| Too many Zahirs on landscape | Performance | Cap at 15 (max rounds), despawn all at event end |
| Rename breaks existing deployments | Build failure | Update `.csproj`, `Meta.json`, solution file; test build |

---

## Testing Checklist

### LeyLineLedger
- [ ] Configure a non-existent WCID in `Settings.json` → startup warning appears
- [ ] Attempt withdrawal of missing item → graceful error, no crash
- [ ] Vendor with missing merchandise item → skips item, no crash

### Solo Competitor Bonus
- [ ] Trigger Hunt with 1 participant → bonus loot + XP + broadcast
- [ ] Trigger Invasion with 1 participant → bonus loot + XP + broadcast
- [ ] Trigger event with 2+ participants → no bonus

### SpellSiphon
- [ ] Crush gem (existing behavior) → works
- [ ] Crush rare crystal with spells → success roll, item destroyed on failure
- [ ] Crush attuned item with `AllowAttunedAndBonded=true` → works
- [ ] Crush attuned item with `AllowAttunedAndBonded=false` → blocked
- [ ] Apply extracted spells to equipment → works

### POI Hunt
- [ ] Start event → Zahir spawns, first clue broadcasts
- [ ] Player finds Zahir → QB awarded, next round starts, old Zahir remains
- [ ] 15 min timeout with no finds → next round auto-starts (if < MinRounds)
- [ ] Event ends → all Zahirs despawn, leaderboard broadcast
- [ ] Clues mention nearby portals/NPCs → verified accurate

### Scavenger Hunt
- [ ] Start event → hot item selected and announced
- [ ] Player turns in item → QB awarded, next target announced
- [ ] 15 min timeout with no turn-ins → auto-advances to next item
- [ ] Event ends → Zahir despawns, leaderboard broadcast
- [ ] Fallback items used when LootTracker has no data → works

---

## Open Items (Post-Implementation)
- Curate additional POI locations beyond initial city set
- Tune success rates for SpellSiphon based on player feedback
- Balance Scavenger Hunt fallback pool based on economy data
- Document LandblockScanner API for other mod authors
