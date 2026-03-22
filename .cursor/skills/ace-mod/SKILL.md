---
name: ace-mod
description: Expert ACE mod development using ACE.BaseMod and Harmony. Use when building or modifying ACE mods in this repo or when the user invokes /ace-mod.
---

## Co-active skill: mcp2cli

Whenever this work involves **MCP servers**, **OpenAPI/REST** specs, **GraphQL** endpoints, or **CLI or skill generation for external APIs**, read and follow `.cursor/skills/mcp2cli/SKILL.md` in addition to this skill (same scope as `/mcp2cli`). Prefer `uvx mcp2cli` for discovery and execution per that file.

# ACE Mod Development Skill

You are an expert in ACEmulator (ACE) mod development using ACE.BaseMod and Harmony. The user is a beginner — always explain clearly, define jargon, and provide complete working code rather than fragments.

---

## Architecture Overview

ACE mods are **separate C# class library projects** (DLLs) that hot-reload into a running server without restarting. The stack:
- **ACE.BaseMod** (by aquafir) — the template/framework that provides `BasicMod`, `BasicPatch<T>`, `FakeProperty`, and a rich set of extension helpers
- **Harmony** — intercepts (patches) ACE's methods at runtime without editing ACE source
- **ModManager** — ACE's built-in loader; discovers and loads mods from the `Mods/` directory

Mods do NOT modify ACE source. They run alongside it and hook into it.

---

## Canonical File Structure

```
C:\ACE\Mods\YourModName\          ← OUTPUT folder (build target, not source)
├── YourModName.dll
├── ACE.Shared.dll                 ← MUST be present — each mod bundles its own copy
├── Microsoft.EntityFrameworkCore.dll  ← bundled automatically
├── Meta.json
└── Settings.json                  ← pre-shipped, documented settings template (still auto-created by BaseMod if missing)

C:\Users\you\source\repos\YourModName\   ← SOURCE folder (keep separate from output)
├── YourModName.csproj
├── Mod.cs
├── PatchClass.cs
├── Settings.cs
├── GlobalUsings.cs
└── Meta.json
```

**Important:** Keep source and output in separate directories. Set `OutputPath` in the `.csproj` to point at `C:\ACE\Mods\$(AssemblyName)`. Never place source `.cs` files in the output folder.

---

## Required Source Files

### 1. Mod.cs — Entry Point (rarely changed)
```csharp
namespace YourModName;

public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(YourModName), new PatchClass(this));
}
```

### 2. PatchClass.cs — All Logic Goes Here

> **Harmony patch placement (current BaseMod / .NET 10):** `[HarmonyPrefix]` / `[HarmonyPostfix]` on a **different** type than the one passed to `Setup(..., new PatchClass(this))` is often **never applied** (silent failure). Put patches on **`PatchClass`** — use `public partial class PatchClass` and extra files like `PatchClass.Loot.cs` if needed. Types marked **`[HarmonyPatchCategory]`** are fine: they are applied when code calls `ModC.Harmony.PatchCategory(...)`. For ACE methods whose **instance parameter is not `ref`** in core, a prefix using `ref Player __instance` (etc.) may fail to bind; align with the real signature or use a **manual** `ModC.Harmony.Patch` with `(Healer __instance, object[] __args)` when you must rewrite arguments.

> **Critical:** Do NOT use C# primary constructor syntax for PatchClass. `OnWorldOpen` does not
> fire reliably before players issue their first command, and **if the mod is hot-reloaded after
> the world is already up, `OnWorldOpen()` never runs**. So `PatchClass.Settings` can stay null
> unless you also load settings in the constructor or in `Start()`. Use an explicit constructor
> body and/or override `Start()` so settings are always available.

**Option A — Explicit constructor (recommended):**
```csharp
namespace YourModName;

[HarmonyPatch]
public class PatchClass : BasicPatch<Settings>
{
    // Explicit constructor — runs immediately when ACE loads the mod.
    // The null-coalescing fallback uses all defaults defined in Settings.cs,
    // so the mod still works even if Settings.json doesn't exist yet.
    public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName)
    {
        try { Settings ??= SettingsContainer.Settings; }
        catch { Settings ??= new Settings(); }
    }

    // IMPORTANT: Also assign here so hot-reload picks up edits to Settings.json
    public override async Task OnWorldOpen()
    {
        try { Settings = SettingsContainer.Settings; }
        catch { Settings ??= new Settings(); }
    }

    // ── HARMONY PATCHES go here ──────────────────────────────────────────
    // ── COMMANDS go here ─────────────────────────────────────────────────
}
```

**Option B — Primary constructor + Start() (hot-reload safe):**  
If you keep primary constructor syntax, you **must** override `Start()` and set Settings there. `Start()` runs on **every** mod load (cold boot and hot-reload); `OnWorldOpen()` is a **one-shot** ACE event at server startup only.
```csharp
[HarmonyPatch]
public class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    public override void Start()
    {
        base.Start();
        Settings = SettingsContainer.Settings ?? new Settings();
    }

    public override async Task OnWorldOpen()
    {
        Settings = SettingsContainer.Settings ?? new Settings();
        // ... other startup (e.g. load JSON, patch categories)
    }
}
```

### 3. Settings.cs — Configurable Values
```csharp
namespace YourModName;

public class Settings
{
    public bool EnableFeature { get; set; } = true;
    public float Multiplier { get; set; } = 1.5f;
    public Dictionary<string, float> PerItemOverrides { get; set; } = new();
    public List<int> Thresholds { get; set; } = new() { 10, 50, 100 };
}
```
Access anywhere with: `PatchClass.Settings.Multiplier`

---

## Settings & documentation workflow (standard)

From now on, use this workflow for every ACE mod in this repo:

- **Always ship a `Settings.json` template with the mod.**  
  - Place it next to the DLL in the mod output folder.  
  - Keep it small and focused on likely-tuned knobs; rely on C# defaults for everything else.  
  - BaseMod will still auto-create `Settings.json` from `Settings.cs` on first run if the file is missing, but in this repo we prefer to pre-create it so admins can read/tweak settings before first boot.

- **Document settings in two places:**
  1. **Inline JSON comments** in `Settings.json`  
     - Use `//` comments **on the line above** each key.  
     - Each comment should state in plain language: what the setting changes, the expected type/range, and any sentinel values (e.g. `0` disables, `-1` = unlimited).  
     - Example:
       ```jsonc
       // Chance for reinforcements to spawn when a creature dies (0.0–1.0). 0 disables spawns.
       "LandscapeChance": 0.15,
       ```
  2. A **`### Settings` section in the mod's `Readme.md`**  
     - Group settings by feature area (e.g. "Quest XP", "Loot Growth", "Tinkering", "QoL").  
     - For each key, list: name, type, default, and a one–two sentence, player-facing description.  
     - Use this when inline comments would become too long or when behavior depends on multiple keys.

- **Let Settings.cs remain the source of truth.**  
  - All defaults live in `Settings.cs`.  
  - `Settings.json` is a documented override layer; values you omit fall back to the C# defaults.  
  - When you add a new property in `Settings.cs`, also update:
    - The shipped `Settings.json` template with a commented example/default.  
    - The mod's `Readme.md` `Settings` table/section.

- **For nested/advanced settings:**
  - Keep JSON comments high-level and move detailed behavior to the Readme.  
  - For large collections (e.g. loot tables, mutator lists), document the shape and a small example in Readme, and ship a sane, minimally noisy default in JSON.

Following this pattern ensures every mod is self-documenting: admins can open `Settings.json` and immediately understand the knobs, and Readmes provide the deeper context and examples.

### 4. Meta.json
```json
{
  "Name": "YourModName",
  "Author": "YourName",
  "Description": "What this mod does.",
  "Version": "1.0",
  "Enabled": true,
  "HotReload": true,
  "RegisterCommands": true,
  "ACEVersion": "0.0"
}
```

### 5. GlobalUsings.cs
Copy from `references/globalusings.md` if present. Always include `global using ACE.Database;` if you use `DatabaseManager` or `ShardDbContext`.

---

## Correct .csproj Setup

This is the battle-tested configuration. Read all the comments — several of these choices were discovered through hard debugging.

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <!-- This repo targets ACE's current net10 builds -->
    <TargetFramework>net10.0</TargetFramework>
    <NoWarn>0436;1073;8509</NoWarn>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
    <OutputPath>C:\ACE\Mods\$(AssemblyName)</OutputPath>
    <AppendTargetFrameworkToOutputPath>false</AppendTargetFrameworkToOutputPath>
    <AppendRuntimeIdentifierToOutputPath>false</AppendRuntimeIdentifierToOutputPath>
    <CopyLocalLockFileAssemblies>true</CopyLocalLockFileAssemblies>
    <PlatformTarget>x64</PlatformTarget>
    <SatelliteResourceLanguages>en</SatelliteResourceLanguages>
  </PropertyGroup>

  <ItemGroup>
    <!--
      CRITICAL: Do NOT add ExcludeAssets="runtime" here.
      ACE does NOT load ACE.Shared centrally — each mod must bundle its own copy.
      If ACE.Shared.dll is missing from the output folder you get:
        WARN: Missing IHarmonyMod Type YourMod.Mod from YourMod, ...

      Also do NOT use a <ProjectReference> to ACE.Shared — use this NuGet only.
    -->
    <PackageReference Include="ACEmulator.ACE.Shared" Version="1.*" />

    <!--
      Harmony IS loaded centrally by ACE, so ExcludeAssets="runtime" IS correct here.
      Do not bundle Harmony — it will conflict with the server's copy.
    -->
    <PackageReference Include="Lib.Harmony" Version="2.3.3" ExcludeAssets="runtime" />
  </ItemGroup>

  <ItemGroup>
    <!-- Private=False = don't copy to output; server already has these -->
    <Reference Include="ACE.Adapter">
      <HintPath>C:\ACE\Server\ACE.Adapter.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="ACE.Common">
      <HintPath>C:\ACE\Server\ACE.Common.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="ACE.Database">
      <HintPath>C:\ACE\Server\ACE.Database.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="ACE.DatLoader">
      <HintPath>C:\ACE\Server\ACE.DatLoader.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="ACE.Entity">
      <HintPath>C:\ACE\Server\ACE.Entity.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="ACE.Server">
      <HintPath>C:\ACE\Server\ACE.Server.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="Microsoft.EntityFrameworkCore">
      <HintPath>C:\ACE\Server\Microsoft.EntityFrameworkCore.dll</HintPath>
      <Private>False</Private>
    </Reference>
  </ItemGroup>

  <ItemGroup>
    <None Update="Meta.json">
      <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
    </None>
  </ItemGroup>

  <!--
    CRITICAL: Run on ALL builds (not just Release).
    deps.json in the output folder causes "Missing IHarmonyMod Type" at runtime
    even when the DLL itself is perfectly valid.
  -->
  <Target Name="CleanupFiles" AfterTargets="PostBuildEvent">
    <ItemGroup>
      <FilesToDelete Include="$(OutDir)*.deps.json" />
      <FilesToDelete Include="$(OutDir)*runtimeconfig.json" />
      <FilesToDelete Include="$(OutDir)*.pdb" />
      <FilesToDelete Include="$(OutDir)runtimes\**\*.*" />
      <FoldersToDelete Include="$(OutDir)runtimes" />
    </ItemGroup>
    <Delete Files="@(FilesToDelete)" />
    <RemoveDir Directories="@(FoldersToDelete)" />
  </Target>

  <Target Name="ZipOutputPath" AfterTargets="PostBuildEvent" Condition="$(ConfigurationName) == Release">
    <ZipDirectory SourceDirectory="$(OutputPath)" DestinationFile="$(OutputPath)\..\$(ProjectName).zip" Overwrite="true" />
  </Target>
</Project>
```

**Optional — System.Drawing.Common:** If your mod (or a dependency) pulls in `System.Drawing.Common` and you see version conflicts with ACE binaries, pin the package: `<PackageReference Include="System.Drawing.Common" Version="8.0.0" />` so NuGet resolves a compatible patch (e.g. 8.0.8).

---

## Diagnosing "Missing IHarmonyMod Type" at Runtime

This server log warning means ACE found the DLL but couldn't instantiate the mod. Work through these in order:

| Cause | Check | Fix |
|---|---|---|
| `deps.json` in output folder | Look for `YourMod.deps.json` in `C:\ACE\Mods\YourMod\` | Ensure the `CleanupFiles` target runs on all builds, not just Release. Delete manually and restart. |
| `ACE.Shared.dll` missing from output | Check output folder for `ACE.Shared.dll` | Remove `ExcludeAssets="runtime"` from the ACE.Shared PackageReference |
| Conflicting mod loaded | Another mod registers the same command names | Remove or disable the other mod while testing |
| `ProjectReference` to ACE.Shared | Check csproj for `<ProjectReference ... ACE.Shared ...>` | Delete it; use only the NuGet PackageReference |

**The output folder of a correctly built mod should look like a known-working mod (e.g. QuestBonus).** Compare the two side-by-side — the file list should be nearly identical.

---

## Mod folder path

- **ModManager.ModPath** returns the **parent** folder `C:\ACE\Mods`, **not** `C:\ACE\Mods\YourMod`. To get your mod's folder, use `Path.Combine(ModManager.ModPath, "YourModName", ...)`.
- Alternatively, **current mod directory** (where the DLL lives) is `Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location)` — e.g. `C:\ACE\Mods\Loremaster`. Use this when loading sidecar files (JSON, data) next to the DLL.

---

## Per-Player State (Thread-Safe)

When your mod needs to store settings or state for each player (e.g. "is this feature on for player X"), use `ConcurrentDictionary`. This is safe because multiple players can kill creatures simultaneously on different threads.

```csharp
// In your AutoLoot-style class (not PatchClass):
static readonly ConcurrentDictionary<Player, bool> featureEnabled = new();
static readonly ConcurrentDictionary<Player, int> numericSetting  = new();

// Read (with default if not set yet):
bool isOn  = featureEnabled.GetOrAdd(player, false);
int  value = numericSetting.GetOrAdd(player, 50);

// Write:
featureEnabled[player] = true;
numericSetting[player] = 30;
```

Use `Player` as the key within a session. For persistence across restarts, use `player.Guid.Full` (a `uint`) as the key so the check survives reconnects.

---

## Persisting Player Preferences Across Restarts

Store per-character settings in JSON files. Use a lazy-load pattern so the file is only read once per session, even if the player never types your command.

### Pattern

```csharp
// Tracks which characters have been loaded this session (keyed by GUID, not Player)
static readonly ConcurrentDictionary<uint, bool> loadedPlayers = new();

static readonly JsonSerializerOptions JsonOptions = new() { WriteIndented = true };

// Returns the path to a player's prefs file, creating the directory if needed.
// Example: C:\ACE\Mods\YourMod\Data\PlayerData\12345678.json
static string GetPlayerDataPath(Player player)
{
    var dir = Path.Combine(PatchClass.Settings.DataPath, "PlayerData");
    Directory.CreateDirectory(dir);
    return Path.Combine(dir, $"{player.Guid.Full}.json");
}

// Call this at the top of any command or patch that reads player state.
// It is idempotent — safe to call multiple times.
static void EnsureLoaded(Player player)
{
    if (!loadedPlayers.TryAdd(player.Guid.Full, true))
        return;  // already loaded this session

    var path = GetPlayerDataPath(player);
    if (!File.Exists(path))
        return;  // new player — defaults apply

    try
    {
        var prefs = JsonSerializer.Deserialize<MyPlayerPrefs>(File.ReadAllText(path));
        if (prefs == null) return;

        featureEnabled[player] = prefs.FeatureEnabled;
        numericSetting[player] = prefs.NumericSetting;
    }
    catch (Exception ex)
    {
        ModManager.Log($"YourMod: failed to load prefs for {player.Name}: {ex.Message}", ModManager.LogLevel.Warn);
    }
}

// Call this immediately after every toggle so settings survive restarts.
static void SavePrefs(Player player)
{
    try
    {
        var prefs = new MyPlayerPrefs
        {
            FeatureEnabled = featureEnabled.GetOrAdd(player, false),
            NumericSetting = numericSetting.GetOrAdd(player, 50),
        };
        File.WriteAllText(GetPlayerDataPath(player), JsonSerializer.Serialize(prefs, JsonOptions));
    }
    catch (Exception ex)
    {
        ModManager.Log($"YourMod: failed to save prefs for {player.Name}: {ex.Message}", ModManager.LogLevel.Warn);
    }
}
```

### The prefs DTO (a plain C# class — no logic, just data)

```csharp
public class MyPlayerPrefs
{
    public bool FeatureEnabled { get; set; } = false;
    public int  NumericSetting  { get; set; } = 50;
    // Store filenames (not full paths) so saves survive if the server moves files
    public List<string> ActiveProfiles { get; set; } = new();
}
```

### Important notes
- Store file **names**, not full paths, in saved prefs — full paths break if the server moves files.
- Use `player.Guid.Full` (a `uint`) as the key in `loadedPlayers` — stable across reconnects within the same server session.

---

## Moving Items from a Corpse to a Player (Ghost Item Fix)

When auto-looting, you must **remove the item from the corpse** before adding it to the player. Calling only `TryCreateInInventoryWithNetworking` adds it to the player's visual inventory but leaves it in the corpse's internal dictionary — producing a ghost item that appears on the body indefinitely.

**Wrong (causes ghost items):**
```csharp
player.TryCreateInInventoryWithNetworking(item);
```

**Correct:**
```csharp
// Remove from corpse first — this is what makes the ghost disappear
if (!corpse.TryRemoveFromInventory(item.Guid, out var removed))
    continue;  // couldn't remove — skip this item

// Now give the removed copy to the player
player.TryCreateInInventoryWithNetworking(removed);
```

Always use `removed` (the value returned by `TryRemoveFromInventory`), not the original `item`.

---

## Detecting Rare Items

```csharp
var rareId = item.GetProperty(PropertyInt.RareId);
bool isRare = rareId != null && rareId > 0;
```

Tier detection (1–6) via WCID ranges is unreliable without researching `.dat` files. If you need tier-aware behavior, require the player to opt in rather than trying to auto-detect tier.

---

## Detecting Learnable Scrolls

```csharp
// Is this item a scroll with a spell attached that the player hasn't learned?
if (item.WeenieType == WeenieType.Scroll)
{
    var spellId = item.GetProperty(PropertyDataId.Spell);
    if (spellId != null && spellId != 0 && !player.SpellIsKnown((uint)spellId))
    {
        // This scroll is learnable by the player
    }
}
```

---

## VTClassic .utl Profile Limitations

The VTClassic loot rule format can compare one property to a **fixed constant**. It cannot express:
- Ratio comparisons (`value >= N × burden`) — implement these as C# filters instead
- Runtime player state checks (e.g. "does the player know this spell?") — also C#-only

When a loot rule genuinely requires runtime logic, skip the `.utl` file entirely and add a C# pass in your `PostGenerateTreasure` patch:

```csharp
// VendorTrash: loot items worth >= (ratio × burden)
var value   = item.Value ?? 0;
var burden  = item.EncumbranceVal ?? 1;
if (burden <= 0) burden = 1;

if (value >= threshold * burden)
{
    // loot it
}
```

---

## Getting the Player from a GenerateTreasure Postfix

`GenerateTreasure` is called on a `Creature`, not a `Player`. Use `TryGetPetOwnerOrAttacker()` to resolve the killer to a player (handles pet kills transparently):

```csharp
[HarmonyPostfix]
[HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure),
    new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) })]
public static void PostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse,
    ref Creature __instance, ref List<WorldObject> __result)
{
    if (killer.TryGetPetOwnerOrAttacker() is not Player player)
        return;  // killed by a non-player (monster, NPC, etc.) — skip

    // player is now the Player who gets the loot
}
```

---

## Querying Offline Character Quest Data

Quest data for offline characters lives in `CharacterPropertiesQuestRegistry` — NOT on `Biota`. Several seemingly obvious APIs don't exist or return the wrong type.

**What does NOT work:**
- `GetBiota()` — returns an entity model with no quest navigation properties
- `context.BiotaPropertiesQuestRegistry` — this table/property does not exist
- `DatabaseManager.Shard.BaseDatabase.GetCharacterQuests()` — method does not exist

**What DOES work:**
```csharp
// In GlobalUsings.cs:
global using ACE.Database;
global using ACE.Database.Models.Shard;

// Query offline characters' quests:
var offlineCharacterIds = PlayerManager.GetAllOffline()
    .Where(p => p.Account?.AccountId == accountId)
    .Select(p => p.Guid.Full)
    .ToHashSet();

if (offlineCharacterIds.Count > 0)
{
    using var context = new ShardDbContext();
    var offlineQuests = context.CharacterPropertiesQuestRegistry
        .Where(q => offlineCharacterIds.Contains(q.CharacterId) && q.NumTimesCompleted > 0)
        .Select(q => q.QuestName)
        .ToList();
    foreach (var name in offlineQuests)
        solvedQuestNames.Add(name);
}
```

**Key schema facts:**
- Table: `CharacterPropertiesQuestRegistry`
- Columns: `CharacterId` (uint), `QuestName` (string), `NumTimesCompleted` (int)
- Online players: use `player.QuestManager.Quests` directly — no DB query needed
- Account-wide quest union: query all character IDs for that `AccountId`, merge quest name sets

---

## Harmony Patch Patterns

### Key Rules
- The patch class must have `[HarmonyPatch]` on it
- Each patch method must be `public static`
- `__instance` = the object the method was called on
- `ref` lets you modify values in Prefix; `__result` is the return value in Postfix
- `__state` passes data from a Prefix to its matching Postfix

### Postfix — Run code AFTER (most common)
```csharp
[HarmonyPostfix]
[HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
public static void PostPlayerEnterWorld(ref Player __instance)
{
    __instance.SendMessage($"Welcome back, {__instance.Name}!");
}
```

### Prefix — Run code BEFORE, optionally skip original
```csharp
// return true  → run original after this
// return false → skip original (set __result yourself)
[HarmonyPrefix]
[HarmonyPatch(typeof(WorldObject), nameof(WorldObject.GetWeaponCriticalChance),
    new Type[] { typeof(WorldObject), typeof(Creature), typeof(CreatureSkill), typeof(Creature) })]
public static bool PreGetWeaponCritChance(ref float __result, Creature target)
{
    if (target is Player) return true;
    __result = PatchClass.Settings.CritChance;
    return false;
}
```

### Prefix + Postfix sharing state
```csharp
[HarmonyPrefix]
[HarmonyPatch(typeof(QuestManager), nameof(QuestManager.Update), new Type[] { typeof(string) })]
public static void PreUpdate(string questFormat, QuestManager __instance, ref int __state)
{
    __state = __instance.GetCurrentSolves(questFormat);
}

[HarmonyPostfix]
[HarmonyPatch(typeof(QuestManager), nameof(QuestManager.Update), new Type[] { typeof(string) })]
public static void PostUpdate(string questFormat, QuestManager __instance, int __state)
{
    var newSolves = __instance.GetCurrentSolves(questFormat);
    if (__state == 0 && newSolves > 0)
        ModManager.Log($"First solve: {questFormat}");
}
```

### Targeting overloaded methods
```csharp
[HarmonyPatch(typeof(Player), nameof(Player.GrantXP),
    new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
```

### Modifying a parameter value
```csharp
[HarmonyPrefix]
[HarmonyPatch(typeof(Player), nameof(Player.GrantXP),
    new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
public static void PreGrantXP(ref long amount, Player __instance)
{
    amount = (long)(amount * __instance.QuestBonus());
}
```

---

## Command Pattern

```csharp
[CommandHandler("mycommand", AccessLevel.Player, CommandHandlerFlag.RequiresWorld,
    "Description shown in /help", "Usage: /mycommand [args]")]
public static void HandleMyCommand(Session session, params string[] parameters)
{
    var player = session.Player;
    player.SendMessage("Hello!");
    if (parameters.Length > 0 && int.TryParse(parameters[0], out int n))
        player.SendMessage($"Got: {n}");
}
```

**AccessLevel**: `Player` → `Advocate` → `Sentinel` → `Envoy` → `Developer` → `Admin`  
**CommandHandlerFlag**: `None` (works from server console too), `RequiresWorld` (must be in-game)

**Warning:** Command names are global across all loaded mods. Two mods registering `/qb` will conflict — remove one or rename your commands.

**Safety:** Prefer null-safe player resolution: `if (session?.Player is not Player p) return;` then use `p`. This guards against race-y server state when commands run during load/unload or from console.

---

## FakeProperty System

```csharp
player.SetProperty(FakeFloat.QuestBonus, 1.25);
double? bonus = player.GetProperty(FakeFloat.QuestBonus);
player.RemoveProperty(FakeFloat.QuestBonus);

// Custom properties for your own mod — use IDs above 40000:
var myProp = (PropertyFloat)40100;
player.SetProperty(myProp, 99.5);
```

Pre-defined values in ACE.Shared (don't redefine):
- `FakeBool`: `Ironman`, `Hardcore`, `Quarantined`, `Permanent`, `GrowthItem`
- `FakeInt`: `HardcoreLives`, `GrowthTier`, `ComboKill`
- `FakeFloat`: `QuestBonus`, `TimestampLastKill`, `ItemXpBoost`
- `FakeString`: `IronmanPlan`

See `references/fakeprops.md` for the full list.

---

## Particle Effects and Visual Auras on NPCs

### Critical: DefaultScriptId does NOT render on animated humanoid creatures

`WorldObject.DefaultScriptId` (maps to `PropertyDataId.PhysicsScript` / DID type 10) controls a looping particle script baked into the `CreateObject` physics packet. It works well on **static objects** (portals, lifestones, forges) but **does not visually render on animated humanoid NPC/creature models**.

**Why:** The AC client resolves script particle emitter nodes against the object's `SetupId`. Humanoid NPC setups lack the emitter node types that portal/restriction scripts target, so the script plays at the invisible physics capsule rather than the visible model. Database confirms: `DefaultScriptId` is only set in weenie data for `WeenieType.Portal` (31) and `WeenieType.LifeStone` (22) — never on `WeenieType.Creature` (10).

**Also does not work on humanoid NPCs:**
- `GameMessageScript` broadcast (one-shot) with portal/restriction scripts — `PlayScript.RestrictionEffectGold` (154), `.RestrictionEffectBlue` (152), `.RestrictionEffectGreen` (153), `PlayScript.ShieldUpGreen` (49), `PlayScript.SpecialStateGreen` (133)
- Setting `DefaultScriptId` on equipped items in `TrinketOne` slot — no physics attachment point
- Setting `DefaultScriptId` on equipped items in `NeckWear` slot — `TryEquipObject` returns True but script doesn't render

**What DOES work:** `PlayScript.RestrictionEffect*` values loop correctly as `DefaultScriptId` on **static WorldObjects** (portals, lifestones). Scripts are baked into the `CreateObject` packet via `PhysicsDescriptionFlag.DefaultScript` (0x2000).

### Persistent Aura on a Quest-Giver NPC: Beacon Pattern

Since you can't render a looping script directly on a humanoid NPC, spawn an ephemeral ethereal static object (a "beacon") at the NPC's location. Use **WCID 36577** (`ace36577-aura`) — a purpose-built invisible, ethereal WorldObject with an aura setup file. Static objects DO render `DefaultScriptId`.

The beacon must be spawned via `ActionChain` with a delay because `Creature.GenerateWieldList()` (where you detect quest givers) fires before `CurrentLandblock` is set on the creature.

```csharp
// Detect quest givers in GenerateWieldList postfix:
const uint AuraBeaconWcid = 36577; // ace36577-aura — invisible, ethereal, aura setup

[HarmonyPostfix]
[HarmonyPatch(typeof(Creature), nameof(Creature.GenerateWieldList))]
public static void PostGenerateWieldList(Creature __instance)
{
    if (__instance.WeenieType != WeenieType.Creature) return;
    if (!IsQuestGiver(__instance)) return;

    // CurrentLandblock is null here — defer until creature is on the landblock
    var chain = new ActionChain();
    chain.AddDelaySeconds(1.0);
    chain.AddAction(__instance, () =>
    {
        if (__instance.CurrentLandblock == null) return;

        var beacon = WorldObjectFactory.CreateNewWorldObject(AuraBeaconWcid);
        if (beacon == null) return;

        beacon.DefaultScriptId        = Cfg.ScriptId;   // e.g. 154 = RestrictionEffectGold
        beacon.DefaultScriptIntensity = Cfg.ScriptIntensity;
        beacon.Ethereal               = true;            // no collision, no interaction
        beacon.IgnoreCollisions       = true;
        beacon.Location               = new Position(__instance.Location);

        LandblockManager.AddObject(beacon);
    });
    chain.EnqueueChain();
}

// IsQuestGiver: use weenie cache, NOT creature.Biota (empty for dynamic spawns)
static bool IsQuestGiver(Creature creature)
{
    var weenie = DatabaseManager.World.GetCachedWeenie(creature.WeenieClassId);
    if (weenie?.PropertiesEmote == null) return false;
    return weenie.PropertiesEmote.Any(e =>
        e.PropertiesEmoteAction?.Any(a =>
            a.Type == (uint)EmoteType.StampQuest ||
            a.Type == (uint)EmoteType.InqQuest) == true);
}
```

**Key notes:**
- WCID 36577 has `Ethereal=true` and `Stuck=true` pre-set in its weenie — players cannot interact with or move it
- The beacon is ephemeral (not saved to DB) — it disappears on server restart and re-spawns when the NPC re-spawns via `GenerateWieldList`
- Quest givers are typically stationary and immortal, so the beacon not following movement is acceptable
- `EmoteType.StampQuest = 22` (NPC gives a quest), `EmoteType.InqQuest = 21` (NPC checks quest status) — check the weenie cache, not `creature.Biota.PropertiesEmote` (which is empty for dynamically spawned creatures)

---

## Common ACE Operations

### Grant XP
```csharp
player.GrantXP(1_000_000, XpType.Quest, ShareType.None);
```

---

## Usage XP from Item Mana Drain (ChallengeModes / usage-skills)

Some skills should gain “usage/proficiency” progress from **equipped item mana drain** (e.g. items with “Mana Cost: 1 point per 20 seconds”), not only from spellcasting.

### Key findings (ACE build differences)
- In some ACE builds, `CreatureSkill` does **not** expose a writable `Experience`/`Proficiency` property publicly (you may only see `ExperienceSpent` / `ExperienceLeft`).
- Awarding via `Proficiency.OnSuccessUse(...)` can be **throttled** by `PropertiesSkill.LastUsedTime` and `PropertiesSkill.ResistanceAtLastCheck`, resulting in “ticks once then never again” unless those values allow the next award.

### Practical pattern
- **Detect actual mana drain** by sampling equipped items’ `ItemCurMana` and summing decreases over time.
- Convert drained mana into “difficulty/pp” using a per-mana multiplier.
- To make passive drain award repeatedly, set `PropertiesSkill.LastUsedTime = 0` and `PropertiesSkill.ResistanceAtLastCheck = 0` before invoking `Proficiency.OnSuccessUse(player, creatureSkill, difficulty)`.
- If you have a mod that blocks `HandleActionRaiseSkill` for manual XP spending (e.g. ChallengeModes usage-based skills), use a **thread-local depth counter** (not a bool) to bypass the block during internal awards.

### Create and give an item by WCID
```csharp
var item = WorldObjectFactory.CreateNewWorldObject(273); // 273 = Pyreal
if (item != null)
    player.TryAddToInventory(item);
```

### Server broadcast
```csharp
foreach (var p in PlayerManager.GetAllOnline())
    p.SendMessage("[Server] Announcement!", ChatMessageType.Broadcast);
```

### Delayed action
```csharp
var chain = new ActionChain();
chain.AddDelaySeconds(2.0);
chain.AddAction(player, () => player.SendMessage("2 seconds later!"));
chain.EnqueueChain();
```

### Get/Set/Remove properties
```csharp
int? armor = wo.GetProperty(PropertyInt.ArmorLevel);
wo.SetProperty(PropertyInt.ArmorLevel, 500);
wo.RemoveProperty(PropertyBool.Attackable);
```

### Logging
```csharp
ModManager.Log("Info");
ModManager.Log("Warning!", ModManager.LogLevel.Warn);
ModManager.Log("Error!", ModManager.LogLevel.Error);
```

---

## ACE.Shared Helper Extensions

### Player
```csharp
player.SendMessage("Text");
player.TeleportThreadSafe(position);
player.QuarantinePlayer("0xA9B40019 [coords]");
player.PermaDeath();
player.TryAdvanceSkill(Skill.WarMagic);
player.PlaySound(Sound.ReceiveItem);
```

### Creature
```csharp
creature.PercentHealth();
creature.TryDamageDirect(50f, out uint taken, DamageType.Fire);
creature.ScaleProperty(PropertyInt.ArmorLevel, 1.5f);
creature.SetBonus(Skill.WarMagic, 50);
creature.SetBonus(PropertyAttribute.Strength, 10);
```

### WorldObject / Landblock
```csharp
wo.PlayAnimation(PlayScript.AttackSlash1);
wo.MoveInFrontOf(player);
landblock.GetPlayers();
landblock.GetCreatures();
landblock.RespawnCreatures();
```

---

## Category Patches (Opt-in Features)

```csharp
[HarmonyPatchCategory("XpBoost")]
[HarmonyPatch]
public class XpBoostPatch
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP),
        new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreGrantXP(ref long amount) { ... }
}

public override async Task OnWorldOpen()
{
    Settings = SettingsContainer.Settings;
    if (Settings.EnableXpBoost)
        Mod.Harmony.PatchCategory("XpBoost");
}
```

---

## Workflow Checklist

1. **Create source folder separately** from `C:\ACE\Mods\` — never mix source and output.
2. **Start from the correct `.csproj`** — copy the template above verbatim, then adjust paths and assembly name.
3. **Verify output folder** matches a working mod (like QuestBonus) — same DLLs should be present.
4. **Find the ACE method to hook** — search ACE GitHub. `Player.cs` and `Creature.cs` are most common.
5. **Choose Prefix or Postfix** — Postfix to add behavior, Prefix to intercept/modify inputs.
6. **Put configurable values in Settings** — anything a server admin might tune.
7. **Test with hot-reload** — `/mod f [modname]` in-game after rebuild.
8. **If you get `Missing IHarmonyMod Type`** — check for `deps.json`, check `ACE.Shared.dll` is present, check for command name conflicts with other loaded mods.

---

## Common Mistakes

| Problem | Fix |
|---|---|
| `Missing IHarmonyMod Type` | Delete `deps.json` from output; ensure `ACE.Shared.dll` is bundled; remove conflicting mods |
| Patch not firing | Verify `[HarmonyPatch]` is on the class AND the method name/types exactly match |
| `BiotaPropertiesQuestRegistry` not found | Wrong table — quest data is in `CharacterPropertiesQuestRegistry` |
| `GetCharacterQuests()` not found | This method doesn't exist — use `ShardDbContext` directly |
| `DatabaseManager` not resolving | Add `global using ACE.Database;` to `GlobalUsings.cs` |
| Can't access private ACE member | `AccessTools.Field(typeof(ClassName), "fieldName").GetValue(instance)` |
| Settings not updating on hot-reload | Assign `Settings = SettingsContainer.Settings` in `OnWorldOpen()` **and** in constructor or `Start()` |
| Wrong overload patched | Add `new Type[] { typeof(X), typeof(Y) }` as third arg to `[HarmonyPatch]` |
| Two mods, same command name | Commands are global — remove or disable the conflicting mod |
| `ACE.Shared.dll` version conflict | Don't use `ExcludeAssets="runtime"` on ACE.Shared; don't use ProjectReference |
| `PatchClass.Settings` is null on first command | `OnWorldOpen` doesn't run on hot-reload. Use explicit ctor with `Settings ??= SettingsContainer.Settings` or override `Start()` and set Settings there — do NOT rely on OnWorldOpen only |
| Ghost items left on corpse after auto-loot | Call `corpse.TryRemoveFromInventory(item.Guid, out var removed)` first, then `player.TryCreateInInventoryWithNetworking(removed)`. Never pass the original `item` reference |
| `ModManager.ModPath` points to wrong folder | `ModManager.ModPath` returns `C:\ACE\Mods` (the parent), not your mod's folder. Append your mod name: `Path.Combine(ModManager.ModPath, "YourModName", ...)` or use `Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location)` |
| Loot rule needs ratio/runtime check | VTClassic `.utl` can only compare one property to a fixed constant — implement ratio or player-state checks as C# filters in your patch, not in a `.utl` file |
| Can't get Player from GenerateTreasure | Use `killer.TryGetPetOwnerOrAttacker() is not Player player` — handles both direct kills and pet kills |
| Quest-item perk chat missing when looting into a side pack | Postfix only **`Player.TryAddToInventory`** or wrong `__instance` type when ACE adds to a **nested container** | Postfix **`Container.TryAddToInventory`** (5 params) and resolve looter with **`Container` chain → `Player`** (pattern: `Overtinked/ContainerRootPlayer.cs`) |

---

## Reference Files

- `references/mod-examples.md` — real annotated source from sample mods
- `references/globalusings.md` — GlobalUsings.cs to copy into new mods
- `references/fakeprops.md` — all FakeProperty values from ACE.Shared
- `references/ace-namespaces.md` — ACE class/method quick reference

## Key Links
- ACE.BaseMod: https://github.com/aquafir/ACE.BaseMod/wiki/Getting-Started
- Harmony docs: https://harmony.pardeike.net/articles/intro.html
- ACE wiki: https://github.com/ACEmulator/ACE/wiki

---

## Patterns from ACEmulator-Mods repo

When working in the **ACEmulator-Mods** repository:

- **Documentation loop:** When we discover a durable new pattern/gotcha, invoke `/doc` to (a) write a paste-ready “Findings” summary and (b) update this `ace-mod` skill so future work benefits.
- **Build list:** Discover all gameplay `.csproj` files under the repo (e.g. `AethericWeaver`, `ChallengeModes`, `AureatePath`, `AutoLoot`, `EmpyreanAlteration`, `Gemcrafter`, `LeyLineLedger`, `Loremaster`, `Numbersmith`, `Overtinked`, `QOL`, `Swarmed`). **QOL** also owns **pet** Harmony features (moved from the retired EmpyreanEchoes mod): `EnablePetAttackSelected`, `EnablePetMessageDamage`, `EnablePetStow`, `EnableSummonCreatureAsPet`, `EnablePetSummonMultiple`, `EnablePetEx`, `EnablePetExShareDamage` (share-damage patches apply only when `PetEx` is enabled). Healing-kit Swiftmend: `EnableSwiftmend`. Use `/ace-build` or build each mod in its own directory with `dotnet build`. Add `AceModQa` / `tools/*` only if the user wants QA or tooling builds.
- **Settings + hot-reload:** Prefer loading settings in both **Start()** and **OnWorldOpen()** so that after a hot-reload (when OnWorldOpen never runs), Settings is still set. Use `Settings = SettingsContainer.Settings ?? new Settings();` in both.
- **Nullable and safety:** Use nullable reference types and guard command handlers with `if (session?.Player is not Player p) return;` so code is safe during load/unload or console-invoked commands.
- **System.Drawing.Common:** If a mod or dependency needs it, pin `System.Drawing.Common` (e.g. `Version="8.0.0"`) to avoid conflicts with ACE server binaries.
- **ACE.Shared + layout:** Gameplay mods here target **`net10.0`** and usually reference the local **`ACE.Shared` project** (`ProjectReference` to `..\..\ACE.Shared\ACE.Shared.csproj`) alongside NuGet `ACEmulator.ACE.Shared` / server DLL `Reference` entries—**copy an existing mod’s `.csproj`** in this repo rather than assuming NuGet-only ACE.Shared (the generic template earlier in this skill favors NuGet when `ACE.Shared` is not on disk).
- **No `EmpyreanEchoes` project:** The **EmpyreanEchoes** mod folder was **removed**. Behavior split across **EmpyreanAlteration** (mutator pipeline, loot hooks, fake-property features, `LootGrowthItem`, `ItemLevelUpGrowth`, Slayer/ShinyPet mutators), **Swarmed** (CreatureEx, call-for-help only—**no** `ProjectReference` to EmpyreanAlteration), **QOL** (pet Harmony toggles), **ChallengeModes** (`BonusStatsEnabled`, ironman/hardcore), **Numbersmith** / **Loremaster** / **AethericWeaver** (relocated category patches—see each mod’s `Settings.cs` comments). Root **README.md** summarizes the map; avoid new docs that tell operators to install EmpyreanEchoes.

### EmpyreanAlteration (mutators & features)

- **PatchClass:** Uses `BasicPatch<Settings>` with **`new static Settings Settings`**, **`RefreshAll()`** on `Start` / `OnStartSuccess` / `OnWorldOpen`, **`MutatorHooks.SetupMutators` / `ShutdownMutators`**, category patching for **`AlterationFeature`** (`Settings.Features`) and optional **`ItemLevelUpGrowth`**. Match this lifecycle when adding EA features.
- **Mutator classes:** All live under **`EmpyreanAlteration.Mutators`** (public or internal class name = JSON **`Mutation`** string, e.g. `"Slayer"`, `"LootGrowthItem"`). **`MutatorHelpers`** resolves `EmpyreanAlteration.Mutators.{Mutation}` across loaded assemblies—**no secondary namespace**; servers need **only** EmpyreanAlteration enabled for those mutators (not Swarmed).
- **Loot vs Overtinked:** **`LootGrowthItem`** sets **`FakeBool.GrowthItem`** on drops; Overtinked quest init skips those items to avoid double configuration.
- **LINQ / extensions:** If **`ToHashSet()`** is ambiguous (`ACE.Database.ShardDatabaseOfflineTools` vs `System.Linq.Enumerable`), use **`new HashSet<T>(collection)`**. If **`TryGetRandom` on arrays** clashes with **`ACE.Shared.Helpers.RandomExtensions`**, call **`AugmentHelper.TryGetRandom(array, out value)`** (static-style) from **EmpyreanAlteration**.

### Cross-mod Harmony categories (relocated from old EmpyreanEchoes)

- **Loremaster** toggles **`EquipPostCreation`** and **`OverrideCheckUseRequirements`**; implementations and `[HarmonyPatchCategory]` types live in **EmpyreanAlteration**—Loremaster calls `Harmony.PatchCategory` / `UnpatchCategory` by **class name string** when its settings enable those flags.
- **Numbersmith** toggles **`EnableLifeMagicElementalMod`**, **`EnableDamageOverTimeConversion`** (same idea: patch types may live in Numbersmith; categories align with historical names—check each mod).
- **AureatePath** skill/attribute augments that depend on **`Creature.GetBonus`** require **ChallengeModes** **`BonusStatsEnabled`**.

### Quest item tinkering & leveling (Overtinked)

- **Split:** **Overtinked** owns quest-time init, item XP curve patches, and `OnItemLevelUp` growth. **Loot-time** item XP / pre-imbue for mutator pipeline drops is in **EmpyreanAlteration** (`LootGrowthItem` mutator via `MutatorHooks` on `LootGenerationFactory.CreateAndMutateWcid`). All mutator implementations (including `Slayer`, `ShinyPet`) live in **EmpyreanAlteration.Mutators** so servers do not need **Swarmed** for those features. **Swarmed** is only CreatureEx / call-for-help gameplay.
- **Where to edit what (Overtinked):**
  - `Overtinked/ItemLevelingEngine.cs`: per-level outcomes (imbues, salvage-style bonuses, fallback behavior) and aggregated growth accounting.
  - `Overtinked/SpellGrowthHelper.cs`: spell/cantrip pools, spell-line rules (no downgrades), and add/upgrade behavior.
  - `Overtinked/OvertinkedItemLevelingHarmony.cs`: gated by `EnableItemLevelingHooks` — **`Container.TryAddToInventory`** postfix + root-`Player` resolution for quest init/chat on nested packs, item XP curve, `OnItemLevelUp` (no loot factory postfix here).
  - `Overtinked/PatchClass.cs`: recipe/tinkering helpers; item growth logic (`ApplyCatchUpGrowth`, quest init) called from categorized patches.
- **Quest item detection (current heuristic):**
  - Quest-growth items are treated as “equippable reward items with **no default workmanship**” (workmanship \(= 0\)), rather than relying on `Value == 0`.
  - This avoids needing huge WCID allowlists and handles many NPC reward patterns.
- **Loot growth initialization:** Use **EmpyreanAlteration** `LootGrowthItem` (`EnableLootItemLeveling` / `EnableLootItemPreImbue` in EA `Settings.json`) so loot factory mutators apply before inventory; avoid enabling both that and a duplicate loot init elsewhere.
- **Level-up handling hook:** Use a Prefix on `Player.OnItemLevelUp(WorldObject item, int prevItemLevel)` to apply Overtinked growth for both quest and loot items.
- **Catch-up & aggregation (important):**
  - XP can jump multiple levels at once, so growth must be applied for **every missed level**.
  - For big jumps, suppress per-level spam and send **one aggregated summary** (imbues, tinkers, spells/cantrips, fallback stats).
  - Use a “last applied level” custom `PropertyInt` (IDs > 40000) to avoid bricking items if a prior run missed applying effects.
- **Spell growth correctness:**
  - Never add a lower-tier spell if a higher-tier exists in the same line (e.g. do not add *Blood Drinker I* if the item already has *Blood Drinker VI*).
  - Cantrips remain separate and may coexist with normal buffs, as intended.
- **Guaranteed-per-level outcome:** When an outcome roll is a no-op, re-roll a few times (capped) before falling back so “leveled up but got nothing” is extremely rare.
- **Quest-item perk chat:** Overtinked postfixes **`Container.TryAddToInventory`** and resolves the root **`Player`** via the container chain so loot into nested packs gets `InitializeQuestWorldObject` with notify (see `Overtinked/ContainerRootPlayer.cs`). Factory-only paths without ever entering a player-owned container remain edge cases.
- **Why `Player.TryAddToInventory` alone is wrong for “loot into pack” chat:** ACE often calls **`container.TryAddToInventory(...)`** on a **nested pack** (`this` is a `Container`, not `Player`). A postfix that only binds `Player` as `__instance` never runs for that receiver—or mis-binds. Patch **`typeof(Container)`** with the full **5-parameter** signature `(WorldObject, out Container, int, bool, bool)` and walk **`WorldObject.Container`** until you hit a **`Player`** (see `Overtinked/ContainerRootPlayer.cs`).
- **Cleaving / Nether Rending combat (custom imbues):** `Overtinked/CleavingNetherImbueCombat.cs` postfixes **`Player.DamageTarget(Creature, WorldObject)`** under the same **`RecipeManagerCategory`** as **`BleedImbueCombat`** (so it respects `EnableRecipeManagerPatch`). Cleaving applies splash **`TakeDamage`** to nearby **`Creature`**s (not another `DamageTarget` call); use a **`[ThreadStatic]`** guard so splash damage does not re-enter cleave logic. Nether adds **`DamageType.Nether`** on the **primary** target only. Config: **`CleavingImbueCombatConfig`** / **`NetherRendingImbueCombatConfig`** in `NewImbueConfig.cs` + `Settings.json`. For candidates in the same landblock, **`Landblock.GetWorldObjectsForPhysicsHandling()`** returns **`ICollection<WorldObject>`** (iterate and filter by distance / `Creature` / `Attackable`).

### Loot-generated item leveling & pre-imbues (EmpyreanAlteration vs Overtinked)

- **Overtinked** owns quest-time item XP init (inventory hook) and all item XP curve / level-up growth behavior when `EnableItemLevelingHooks` is on.
- **EmpyreanAlteration** owns the **LootGrowthItem** mutator (`EnableLootItemLeveling`, `EnableLootItemPreImbue`) on the loot factory path. Keep Overtinked from re-initializing the same drops (it no longer patches `CreateAndMutateWcid` for XP); tune loot caps in EA settings (`LootItemMaxLevelMin` / `LootItemMaxLevelMax`, etc.).

### Production safety (null, LINQ, reflection, settings)

Findings from cross-mod review and fixes in this repo — apply when writing patches, commands, and JSON-driven settings.

| Area | Pitfall | Fix |
|---|---|---|
| **Settings.json** | `Dictionary<K, List<T>>` values or nested lists deserialize as **null**; LINQ on null throws. | Skip when `value is null` or `Count == 0`; null-coalesce collections before `OrderBy` / `foreach`. |
| **DTO list fields** | e.g. `List<SpellId> Spells` on a tier row can be null. | `(tier.Spells ?? Enumerable.Empty<SpellId>())` (or build empty `List<uint>`) before `Select`. |
| **LINQ endpoints** | `FirstOrDefault` / `LastOrDefault` on **empty** sequence of **reference** types → null; **struct** → default (still risky if you chain `.Member` without intent). | After non-empty guard, prefer `Min`/`Max` on a known key (e.g. tier index) or materialize then index. |
| **ACE / mod APIs** | Methods like `Spawn()` return **null**; `foreach` on null throws. | `if (spawns is null) return;` or `foreach (x in spawns ?? Array.Empty<...>())`. |
| **Empty lookups** | `dict.OrderBy(...).FirstOrDefault()` on an **empty** dictionary → `default(KeyValuePair<,>)`; using `.Key`/`.Value` can be wrong for reference keys. | If `dict.Count == 0`, bail with a player message; optional defensive check on key before using distance/display. |
| **Shared ACE lists** | e.g. `RecipeManager.TinkeringDifficulty.Last()` on **empty** list → throws. | `if (list.Count == 0) { log; return; }` before `Last()` / indexing. |
| **Divisors** | `Health.MaxValue` (or similar) can be **0** during edge initialization → divide-by-zero in derived properties. | `baseDivisor = Math.Max(1u, vital.MaxValue)` (match uint/int types). |
| **Reflection** | `MethodInfo.Invoke` failures surface as **`TargetInvocationException`**; real cause is **`InnerException`**. | `catch (TargetInvocationException ex)` → log `ex.InnerException ?? ex` (ModManager); return false / skip path as appropriate. |
| **Commands** | `session.Player` can be null (timing, console). | Immediately `if (player is null) return;` before any `GetProperty` / `SendMessage`. |
| **Static Settings** | `PatchClass.Settings` or `Settings.Items` may be null if misconfigured. | `PatchClass.Settings?.Items?.Where(...).FirstOrDefault()` so `.Where` never runs on null. |
| **Hot-path config** | `settings.SubSection ?? new SubSection()` **allocates every call**. | `private static readonly SubSection DefaultSub = new();` and `?? DefaultSub` **only if** nothing in the pipeline mutates that shared instance. |
| **Player messages** | C# **`{value:P2}`** already formats as a percent with a **%** sign. | Do not append an extra `"%"` in the same string. |
| **Dual settings fields** | Two statics (`Settings` + `NotificationDefaults`) updated on file reload can drift or look “non-atomic” to readers. | Single source of truth: e.g. `internal static Settings NotificationDefaults => Settings;` and assign **`Settings` only** on reload. |
| **`ToHashSet()` ambiguous (CS0121)** | `ACE.Database` adds an extension with the same shape as **`Enumerable.ToHashSet`**. | Prefer **`new HashSet<T>(source)`** or **`System.Linq.Enumerable.ToHashSet(source)`** with explicit qualification. |
| **`TryGetRandom` on `T[]` ambiguous** | **`EmpyreanAlteration.AugmentHelper`** vs **`ACE.Shared` `RandomExtensions`** both extend arrays. | Call **`AugmentHelper.TryGetRandom(array, out var x)`** as a static method invocation (or pick one extension via `using` discipline). |

**EmpyreanAlteration feature toggles:** Types use `[HarmonyPatchCategory(nameof(AlterationFeature.X))]`; `EmpyreanAlteration/PatchClass.cs` calls `Harmony.PatchCategory(feature.ToString())` only for entries in **`Settings.Features`**. Incomplete or experimental behavior should either stay **out** of the default feature list, match comments to shipped behavior, or add an explicit settings gate — there is no separate `[ActivePatch]` attribute in this repo’s mods.
