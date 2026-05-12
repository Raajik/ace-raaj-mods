---
name: ace-mod
description: Expert ACE mod development using ACE.BaseMod and Harmony. Use when building or modifying ACE mods in this repo or when the user invokes /ace-mod.
---

## Co-active skill: mcp2cli

If the task involves **MCP servers**, **OpenAPI/REST**, **GraphQL**, or **CLI/skill generation for APIs**, read `.cursor/skills/mcp2cli/SKILL.md` and prefer `uvx mcp2cli` per that file.

# ACE Mod Development (compact)

Expert ACE + **ACE.BaseMod** + **Harmony** mods: separate class libraries hot-loaded from `Mods/`; **do not edit ACE source**.

## Layout

- **Build output:** `A:\ai\projects\ace-raaj-mods\build\$(AssemblyName)\` — DLL, `ACE.Shared.dll`, `Meta.json`, `Settings.json`.
- **Deploy:** `scripts/deploy-void-test.sh` or `scripts/deploy-wb-test.sh` copy from `build/` to target server `Mods/`.
- **Source:** own folder; `OutputPath` → `build\$(AssemblyName)` in every `.csproj`; never put `.cs` in the output folder.
- **Server target (for reference):** `C:\ACE\Mods\YourMod\` after deployment.

## Mod entry

```csharp
public class Mod : BasicMod
{
    public Mod() : base() => Setup(nameof(YourMod), new PatchClass(this));
}
```

> **Pitfall: `nameof(Mod)` → `"Mod"`** — `nameof()` resolves at compile time to the class name, not the mod name. `Setup(nameof(Mod), ...)` sets `ModPath = C:\ACE\Mods\Mod\` (nonexistent), causing `Container.ModAssembly` to NRE, which the framework logs as `Failed to start. Unpatching com.ACE.ACEmulator.Mod: Object reference not set`. Always pass the **assembly/folder name**: `nameof(YourMod)` where `YourMod` matches `$(AssemblyName)` in the `.csproj`.

## PatchClass (critical)

- Put `[HarmonyPrefix]` / `[HarmonyPostfix]` on **`PatchClass`** (often `partial` across files). Patches on a **different** type than `Setup(..., new PatchClass(this))` may **never apply** (silent). `[HarmonyPatchCategory]` types apply when `Harmony.PatchCategory(...)` runs.
- **Partial PatchClass MUST share a namespace.** `Windblown.PatchClass` and `Windblown.Weenies.PatchClass` are **two distinct types** to the C# compiler — `partial` only joins same-namespace declarations. Build is clean, mod loads, registry / state initializes, **but the [HarmonyPatch] attributes on the orphan never auto-attach**, so prefixes silently never fire. Symptom: your mod looks alive but vanilla behavior persists. Fix: every cross-file partial must use the **same root namespace** as the type instantiated by `Mod.cs`. (Found via Windblown drudge charm runtime injection, 2026-05-04.)
- **Avoid primary constructors** on PatchClass unless you also **`override Start()`** and assign `Settings = SettingsContainer.Settings ?? new Settings()`. **`OnWorldOpen()`** does not run after **hot-reload** when the world is already up — load settings in **ctor** and/or **`Start()`**, not only `OnWorldOpen()`.
- Instance parameters must match ACE signatures (`ref` only where ACE uses it).

## Settings

- **`Settings.cs`** = source of truth for defaults.
- Shipped **`Settings.json`**: **documentation band** (all `"// Key"` strings in order) then **values band** (same keys without `//`). See **`QOL/Settings.json`** + **`QOL/Settings.cs`** for `[JsonPropertyName("// …")]`.
- Update **Readme `### Settings`** when operators need more than JSON docs.

## .csproj essentials

Copy an existing gameplay mod in this repo (e.g. **Swarmed**, **Loremaster**). Invariants:

- `net10.0`, `OutputPath` → `build\$(AssemblyName)`, `CopyLocalLockFileAssemblies` true.
- **`ACEmulator.ACE.Shared`** — **no** `ExcludeAssets="runtime"` (each mod bundles `ACE.Shared.dll`).
- **`Lib.Harmony`** — **with** `ExcludeAssets="runtime"` (server provides Harmony).
- ACE server DLLs: `Reference` + `Private=False`.
- **Post-build:** delete `*.deps.json`, `*.runtimeconfig.json`, `*.pdb`, `runtimes\` from output (deps.json causes **Missing IHarmonyMod Type**).
- This repo often uses a **ProjectReference** to local **`ACE.Shared`** plus NuGet — mirror a sibling mod’s `.csproj`.

## Missing IHarmonyMod Type

| Issue | Fix |
|---|---|
| `deps.json` in mod folder | Remove; ensure CleanupFiles runs on **all** configs |
| No `ACE.Shared.dll` in output | Fix ACE.Shared package (do not exclude runtime) |
| csproj unlike a working mod | Copy `.csproj` from a sibling mod in this repo (NuGet + optional local `ACE.Shared` project — match what already builds) |

## Mod paths

- `ModManager.ModPath` = parent `C:\ACE\Mods` — good for resolving deployed mod folders and bundled read-only assets.
- `Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location)` = folder beside the DLL — good for bundled assets and settings, **not** runtime persistence.
- For writable runtime state, prefer `Path.Combine(<ACE.Server dir>, "ModData", "<ModName>", ...)` with legacy read fallback from old mod-folder paths.

## Harmony quick reference

- Class has `[HarmonyPatch]`; methods `public static`.
- Postfix: `__result` / `ref` returns; Prefix: return `false` to skip original.
- Overloads: third argument `new Type[] { typeof(...) }` — **attribute args must be compile-time constants** (no `typeof(bool).MakeByRefType()` in attributes; omit param list if single overload, or use `AccessTools.Method` manual patch).
- **`SpellProjectile.CalculateDamage`:** single overload → `[HarmonyPatch(typeof(SpellProjectile), nameof(SpellProjectile.CalculateDamage))]`; postfix includes `ref float? __result` and matches **BetterSupportSkills** parameter order (`__instance`, `source`, `target`, ref bools, `__result`).

## Repo patterns (short)

- **`/ace-build`:** build each mod’s `.csproj` under the repo root.
- **Windblown — runtime weenie injection (no SQL).** `Windblown/` Harmony-prefixes `WorldDatabaseWithEntityCache.GetCachedWeenie(uint|string)` to serve in-memory `ACE.Entity.Models.Weenie` POCOs built from `Content/Weenies/*.json` at `Start()`. Each JSON entry can `BaseWcid` clone a vanilla weenie + override property dictionaries by enum name (`Name`, `MaxStackSize`, `IconUnderlay`, ...). Registry-first base resolution lets dependent tiers inherit the already-injected base in this pass instead of vanilla. **Means hot-reload edits to JSON change in-game items without DB writes, server restart, or dump/restore.** Pattern proven on Bloodletter Drudge Charm tier line (24835 + custom **850300–850303**). Use this for any new tiered/cloned trophy line; only fall back to SQL for things that genuinely need DB rows (landblock_instance, points_of_interest, vendor stock that vanilla servers populate). See `Windblown/Readme.md`.
- **Windblown — emote mirror for cross-WCID NPC acceptance.** Vanilla NPCs key Give/Refuse emote chains by exact `item.WeenieClassId`. To make a cloned tier WCID accept on every NPC that already accepts the source, postfix `WorldObject.HasGiveOrRefuseEmoteForItem`: when `__result == false` and the item's WCID has a registered `MirrorEmoteFromWcid`, retry `EmoteManager.GetEmoteSet(category, null, null, sourceWcid)` on the same NPC, then `Clone()` the resulting `PropertiesEmote` with `WeenieClassId = item.WeenieClassId`. Downstream patches (e.g. BSS `PreExecuteEmoteSet` bulk turn-in) match correctly off the cloned WCID; no per-NPC weenie modification required. See `Windblown/Weenies/EmoteMirrorPatches.cs`.
- **LeyLineLedger + AutoLoot peas:** `Shared/PeaPyrealWcids.cs`, `AceRaajMods.Shared`, `GetPyrealValue` — see mods’ Readmes; coins use stack `Value` as total (don’t double-multiply stack size).
- **EmpyreanAlteration:** mutators in `EmpyreanAlteration.Mutators`; `Harmony.PatchCategory` for `Settings.Features`; **`LootGrowthItem`** sets item XP at loot-generation time (postfix `CreateAndMutateWcid`) — no quest pickup-time init (`QuestItemLevelingConfiguration` removed); geometric XP curve patches are in `QuestItemGrowthHarmony.Category` (applied when `EnableLootItemLeveling`); **critical**: `QuestItemGrowthHarmony` class must contain `TargetMethodContainerTryAddToInventory` — a stray `}` will split the class and silently break the entire Harmony category; `EnableQuestItemLeveling`/`QuestItemMaxLevelMin/Max` settings are **removed** — do not re-add references to them.
- **Overtinked:** tinkering only (`RecipeManager` verify/mutate/handle recipe, custom imbues, salvage rules) — no inventory growth hooks.
- **Loremaster ↔ EmpyreanAlteration:** some categories patched by class name from Loremaster settings.
- **No EmpyreanEchoes** — split across EA, Swarmed, QOL, ChallengeModes, etc.
- **Swarmed — Buddy spawns + global creature variation:**
  - **BuddySpawns:** Background timer (30s) checks active landblocks. After idle threshold (no kills, default 2min), living creatures roll chance (25%) to spawn a buddy within radius (10m). Threshold doubles each round (2×), capped at max (30min). Cap per landblock (10). Reset on any death. See `Swarmed/Features/BuddySpawns.cs`.
  - **CreatureVariation:** Apply ±8–21% variation to **ALL** creature spawns (health, stamina, mana, scale, damage rating, level). **Must use deferred `ActionChain` (e.g., 0.5s delay)** — modifying vitals during `WorldObjectFactory.CreateWorldObject` causes `AddWorldObjectInternal` rejections. See `Swarmed/Features/CreatureVariation.cs`.
  - **Wild CreatureEx:** Independent factory chance (1% landscape / 0.5% dungeon) for random champion replacement, separate from admin `CreatureChance`. See `Swarmed/Features/CreatureExSpawn.cs`.

### AureatePath + Loremaster + ChallengeModes (enlightenment pool, `/cm quit`, QB gate)

- **FakeFloat 11012 (keep in sync):** Loremaster `LMFloat.EnlightenmentPoolBonus`, AureatePath `SharedXpPoolIds.EnlightenmentPoolBonus`, ChallengeModes `CmFloat.EnlightenmentPoolBonus` — **same ID** on all three mods that participate.
- **Pool math:** Each contributing event adds **character level ÷ 10000** to the float; sources: **AureatePath** (`PreRemoveAbility` captures level → `PreAddPerks` applies increment) and **ChallengeModes** `/cm quit` (`CmQuit.Apply` before strips).
- **Loremaster:** `UseEnlightenmentPoolForXpMultiplier` — when **true**, enlight factor **(1 + pool)** via `GetEnlightenmentMultiplierFactor`; when **false**, use `EnlightenmentBonusPercentPer × enlightenment` linear term.
- **ChallengeModes:** `/cm quit` → optional `Confirmation_CmQuit` → `CmQuit.Apply` → `PatchClass.DisableAllChallengeModesForQuit`; `CmCommands.RefreshChallengeRadar` is **internal** for shared use; `CmQuit*` booleans in `Settings` mirror enlight-style strips (level/attributes/skills/lum/society/aetheria, unequip).
- **High-enlight QB (AureatePath only):** `VerifyEnlightenmentEligibility` may require minimum **`FakeFloat.QuestBonus`** for enlightenments after **50** completed (defaults: base **5000** + **100** per step for 51st, 52nd, …). Tunables: `EnableHighEnlightenmentQuestBonusRequirement`, `HighEnlightenmentQuestBonusFromCompletedCount`, `HighEnlightenmentQuestBonusBase`, `HighEnlightenmentQuestBonusPerStep`.

### Swarmed-style (loot + combat)

- **`Creature.GenerateTreasure`** is **private** — patch `typeof(Creature), "GenerateTreasure", new[] { typeof(DamageHistoryInfo), typeof(Corpse) }`.
- **`DeathTreasure`** comes from **`DeathTreasureType`** → `DatabaseManager.World.GetCachedDeathTreasure`. To “bump tier,” **prefix** can set **`PropertyDataId.DeathTreasureType`**, then **postfix** restore after other postfixes (lower Harmony priority = runs later). **`GetAllTreasureDeath()`** for resolving another **`TreasureDeath`** row by tier.
- **`Creature.Die`** runs synchronously before the **delayed** `CreateCorpse` chain — **`PostDie`** can increment lifetime kills **before** `GenerateTreasure`; don’t use `+1` if you already mean “this kill included.”
- Spell damage: postfix **`SpellProjectile.CalculateDamage`** for war/void/life projectile damage (not only **`DamageEvent.CalculateDamage`**).

### Loremaster trophy burden XP

- **`TrophyBurdenXp`:** Harmony **prefix/postfix on `Player.GiveObjectToNPC`** (after NPC emotes) so **`CoinValue` delta** can include pyreals from turn-in. Per trophy **unit**, independent rolls (**Quality** 2×, **Pristine** 3×; both on one unit = **Perfect** 6×); XP sums `perUnitBase × mult`; chat: `You receive {XP} XP[ and {delta} pyreals] from turning in {list}. (~% of level to next — roll summary){burden}.` with tier lines like `Quality {Name} (x3)`; **`TrophyLog.jsonl`** includes `pyrealDelta`.

## Compact player chat

- Prefer **one** `SendMessage` per player-facing outcome; **`[ModName]`** prefix once; avoid duplicate lines for the same event.
- **`{x:P2}`** already prints a **percent sign** — do not append an extra `"%"`.
- Bonus tiers (Quality / Pristine / Perfect) = **message flavor**, not new items; keep text **short and readable** (e.g. item name + XP + one context clause).

## High-value snippets

**Player from kill loot:** `killer.TryGetPetOwnerOrAttacker() as Player` (pets).

**Ghost items:** `corpse.TryRemoveFromInventory(guid, out var removed)` then give **`removed`**, not the old reference.

**Offline quests:** table **`CharacterPropertiesQuestRegistry`** (`CharacterId`, `QuestName`, `NumTimesCompleted`) via **`ShardDbContext`** — not `BiotaPropertiesQuestRegistry`.

**Commands:** `if (session?.Player is not Player p) return;` — names are **global** across mods.

**FakeProperty / custom ints:** use IDs **> 40000**; see ACE.Shared **`FakeBool`/`FakeFloat`/…**. Cross-mod shared floats (e.g. enlightenment pool **11012**) must use the **same** ID in every mod that reads/writes it — see **§ AureatePath + Loremaster + ChallengeModes** above.

**Particle on humanoids:** **`DefaultScriptId`** does not loop visibly on humanoid setups; use **beacon** static (e.g. WCID **36577**) + **`ActionChain`** delay after **`GenerateWieldList`** — details in ACE wiki / mod examples.

## Antipatterns & Gotchas

| Issue | Symptom | Fix |
|-------|---------|-----|
| **JIT inlining defeats Harmony prefix** | Prefix fires for some callers but not others (e.g. `ExecuteEmoteSet` vs `EmoteManager.Enqueue`) | Patch one level deeper — the inner method that the JIT can't inline |
| **`[ThreadStatic]` prefix→postfix state** | Stale state from previous call pollutes next invocation | Reset at **start** of prefix before any logic |
| **Static `HashSet<T>` not thread-safe** | Concurrent access races, crashes, or silent corruption | Use `ConcurrentDictionary<T, byte>` with `TryAdd`/`TryRemove`/`ContainsKey` |
| **`nameof(Mod)` → `"Mod"`** | `Setup(nameof(Mod), ...)` sets `ModPath` to nonexistent `C:\ACE\Mods\Mod\` | Always pass **assembly/folder name**: `nameof(YourMod)` matching `$(AssemblyName)` |
| **Cross-file partial PatchClass** | Orphan Harmony types never auto-attach (silent) | Every partial must share the **same root namespace** as the type in `Mod.cs` |
| **Primary constructors on PatchClass** | `Settings` not assigned before patches fire | Assign `Settings = SettingsContainer.Settings ?? new Settings()` in ctor or `Start()` — not only `OnWorldOpen()` |
| **`ACE.Common.ThreadSafeRandom.Next(min, max)`** | `IndexOutOfRangeException` using `array.Length` as max | Always use `Length - 1` (bounds are **inclusive** on both ends) |
| **`Assembly.Location` empty string** | Server loads DLLs from `C:\ACE\Server\` working dir | Fallback: `Path.Combine(ModManager.ModPath, "ModName")` |
| **Patch `base virtual`, not `override`** | Patch silently does nothing (e.g. `Creature.Heartbeat` is override) | Patch `WorldObject.Heartbeat` (base virtual) instead |
| **New Harmony patches on existing PatchClass** | Added after initial compilation — `PatchAllUncategorized()` silently ignores them | Use **manual `Harmony.Patch()`** for patches added post-compile, or add them before the first `PatchAllUncategorized()` call |

## Cross-Mod Shared Properties

| Property | Meaning | Used By |
|----------|---------|---------|
| `FakeFloat 11012` | EnlightenmentPoolBonus | AureatePath / Loremaster / ChallengeModes |
| `FakeInt 40113` | BuddySpawn tag | Swarmed |
| `FakeInt 10029` | CreatureExType | Swarmed |
| `FakeBool 40100` | GrowthItem | EmpyreanAlteration |
| `FakeBool 40130` | IsAwakened | EmpyreanAlteration |
| `FakeInt 40131` | AwakenedTier | EmpyreanAlteration |
| `FakeInt 40132` | PreImbuedCount | EmpyreanAlteration |
| `FakeInt 40133` | Overtinked custom imbue bitmask | Overtinked |
| `FakeInt 40134` | Shatter debuff stack count on creature | Overtinked |
| `FakeInt 40135` | Shatter broken (max stacks) on creature | Overtinked |
| `FakeString 11033` | OriginalName | EmpyreanAlteration |
| `FakeString 11034` | ProfileName | EmpyreanAlteration |
| `FakeBool 12001` | Event announcement opt-out | WorldEvents |

## Monetary Rewards → LLL Bank Interop (per AGENTS.md §8.7)

Whenever a Harmony patch grants a monetary/pyreal reward, **must** use `LeyLineLedgerBankInterop.DepositToBank`. Do **not** give trade notes or physical pyreal items — they clutter inventory and bypass LLL's banking system. Works whether LLL is loaded or not (falls back to PropertyInt64 biota write).

## Salvage Bank PropertyInt64 slots (per AGENTS.md §8.7a)

Material bank slots for stack salvage WCIDs **20981–21089** are **`SalvageBank.FirstMaterialBankPropertyId + DepositRules row index`** unless the row sets **`BankProperty`** — see `LeyLineLedger.BankSalvage.ResolveMaterialBankProperty`. **Do not** assume **`FirstMaterialBankPropertyId + (WCID − 20981)`** unless every rule row stays strictly WCID-sequential.

BetterSupportSkills credits units via **`Shared/LeyLineLedgerSalvageBankInterop`** + **`LeyLineLedgerBankInterop.IncBanked`**. LeyLineLedger runs **`MaybeMergeLegacyWcidOffsetSalvageBank`** on login and at `/bank salvage` to fold any pre-fix stray legacy-slot balance into the resolved slot.

## Deploy Workflow (see AGENTS.md §5 for full details)

| Step | Command | Target |
|------|---------|--------|
| Build all | `dotnet build ModName/ModName.csproj` | `A:\ai\projects\ace-raaj-mods\build\$(AssemblyName)\` |
| Deploy to void-test | `bash scripts/deploy-void-test.sh` | `A:\void-test\Mods\` + `void-test_world` SQL |
| Deploy to wb test | `bash scripts/deploy-wb-test.sh` | `C:\ACE\Mods\` + `ace_world` SQL |
| World clone (void→wb) | `bash scripts/sync-world-void-test-to-wb-test.sh` | backs up shard, replaces world DB |
| Push live | Manual (requires explicit user permission) | `C:\ACE-WB\` |

**Never deploy ValheelContent.** See AGENTS.md §3.

Null-coalesce collections before LINQ; guard **`FirstOrDefault`** on empty sequences; **`ToHashSet()`** ambiguity → `new HashSet<T>(source)`; reflection → log **`InnerException`**; empty **`RecipeManager`** lists before **`Last()`**; safe divide with **`Math.Max(1, divisor)`**.

## SQL Content Deployment

- **SQL does NOT auto-deploy on build.** The `.csproj` copies only DLL + JSON to `build/`. SQL files in `Content/SQL/` are applied by deploy scripts.
- **Automated deploy (preferred):** `bash scripts/deploy-void-test.sh` (→ `void-test_world`) or `bash scripts/deploy-wb-test.sh` (→ `ace_world`). These run `Apply-RepoModSqlToMysql.ps1` to apply all `Content/SQL/*.sql` files sorted by path. See AGENTS.md §5 for env vars and flags.
- **Manual SQL (ad-hoc):** Execute against target MySQL database directly. Requires server restart for weenie cache reload.
- **ACE caches weenies at startup.** Changes to any weenie table require a **server restart**. No hot-reload for weenie data.
- **Vanilla vendor stock fix heuristic:** Before changing BetterLootControl for a vendor, inspect `MerchandiseItemTypes`. If the vendor is **not** an equipment vendor (for example **Misc / Writable / PromissoryNote** like Bestowers' Guild reps `9615 / 9616 / 9617`), stock additions can usually stay a narrow SQL `weenie_properties_create_list` patch with **no** rotation-code change.
- **Use `INSERT ... ON DUPLICATE KEY UPDATE` for idempotent SQL.** `weenie_properties_int` has a `UNIQUE KEY` on `(object_Id, type)`. A plain `UPDATE` silently does nothing if the row is absent. Prefer:
  ```sql
  INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (42516, 94, 128)
  ON DUPLICATE KEY UPDATE value = 128;
  ```
- **Verify DB state after applying SQL.** Query the database to confirm changes took effect:
  ```sql
  SELECT type, value FROM weenie_properties_int WHERE object_Id = 850200 AND type = 94;
  ```

## Workflow checklist

1. Copy `.csproj` from a working mod in this repo.  
2. Verify output folder matches a known-good mod (DLL set).  
3. Hook ACE method with exact signature.  
4. Settings in ctor + `Start()` + `OnWorldOpen()`.  
5. Ship `Settings.json` two-band template.  
6. Apply SQL via deploy script (`scripts/deploy-void-test.sh` or `scripts/deploy-wb-test.sh`) if the mod includes weenie changes. For ad-hoc SQL, run against target database manually (see AGENTS.md §5).  
7. Restart the server for weenie changes to take effect.  
8. Hot-reload: `/mod f [name]` after rebuild (C# changes only; not weenie data).
9. **Verify with `/ci <wcid>` (in-inventory spawn), not `/create <wcid>`** — operators use `/ci`, and `/ci` calls `WorldObjectFactory.CreateNewWorldObject` which respects `PropertyInt.StackSize` (default-spawn count) on the weenie. A weenie cloning from a base with `StackSize=40` will make `/ci` produce 40-stacks. Override `"StackSize": 1` in the override block when you want admin-spawned singletons.

## Investigation Order (per AGENTS.md §7.2)

Before guessing ACE behavior:
1. **Wiki first** — `A:\obsidian\jeremy\wiki\index.md` and topic pages. We have already solved problems and researched mechanics.
2. **`.references/`** — Pinned ACE source snapshots for stable line citations.
3. **`graphify query` / `rg`** — For this repo's mods. Read `A:/obsidian/jeremy/raw/graphify-out/GRAPH_REPORT.md` first.
4. **ACE source enums** — Read `ACE.Entity.Enum.*.cs` in `.references/` for exact values (WeenieType, PropertyInt, EmoteCategory, etc.). **Never guess enum values.**

## Links

- [ACE.BaseMod wiki](https://github.com/aquafir/ACE.BaseMod/wiki/Getting-Started)  
- [Harmony](https://harmony.pardeike.net/articles/intro.html)  
- [ACE wiki](https://github.com/ACEmulator/ACE/wiki)  
- [Wiki index](file:///mnt/a/obsidian/jeremy/wiki/index.md)  
- [AGENTS.md](file:///mnt/a/ai/projects/ace-raaj-mods/AGENTS.md) — full project conventions and deploy procedures
- [ace-raaj-mods Patterns](file:///mnt/a/obsidian/jeremy/wiki/ace-raaj-mods%20Patterns.md) — reflection bridges, cross-platform build, verbose results, bidirectional UX
- [ace-raaj-mods Conventions](file:///mnt/a/obsidian/jeremy/wiki/ace-raaj-mods%20Conventions.md) — ThreadSafeRandom bounds, property-getter patches, Assembly.Location gotcha, push-live weenie SQL

## Cross-Mod Bridges — Canonical Pattern

**For NEW bridges, use `Shared/ReflectionBridge.cs` + `Shared/BridgeTemplate.cs`.**

Existing bridges (`LeyLineLedgerBankInterop`, etc.) were written before the helper existed and use raw reflection inline. Don't rewrite them — but don't write new ones that way either.

### How to add a new bridge

1. **Copy `Shared/BridgeTemplate.cs`** into your mod's project (or into a new file in `Shared/`).
2. **Fill in the three `ReflectionBridge` constructor args:** target assembly name, target type FullName, method name, parameter types.
3. **Write public API methods** that call `_bridge.TryInvoke(...)` or `_bridge.TryInvokeVoid(...)` with a fallback when the bridge returns false.
4. **Add the compile include** to your mod's `.csproj` if it doesn't already have it:
   ```xml
   <Compile Include="..\Shared\ReflectionBridge.cs" Link="Shared\ReflectionBridge.cs" />
   ```
5. **Log prefix** is automatic: `[CallerMod→TargetMod]` via `Assembly.GetCallingAssembly()`.

### Why not public APIs / interfaces?

`Shared/` files are compiled into each consuming mod's assembly via `<Compile Include>`. This means static fields on Shared types are **per-assembly** — QOL's `AceRaajMods.Shared.X` and Windblown's `AceRaajMods.Shared.X` are different CLR types. Delegate-registration patterns fail because LLL sets the delegate on its own copy, and consumers read from theirs.

Reflection bridges are the correct solution for this architecture: they scan loaded assemblies by name string, bypassing CLR type identity entirely, and they gracefully degrade when the target mod isn't deployed.

## /doc

Durable findings → short **Findings** + **small** additive edits to this file (see `.cursor/skills/doc/SKILL.md`). Prefer new bullets over long new sections; link out if a topic needs a full page.
