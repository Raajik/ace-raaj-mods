---
name: ace-mod
description: Expert ACE mod development using ACE.BaseMod and Harmony. Use when building or modifying ACE mods in this repo or when the user invokes /ace-mod.
---

## Co-active skill: mcp2cli

If the task involves **MCP servers**, **OpenAPI/REST**, **GraphQL**, or **CLI/skill generation for APIs**, read `.cursor/skills/mcp2cli/SKILL.md` and prefer `uvx mcp2cli` per that file.

# ACE Mod Development (compact)

Expert ACE + **ACE.BaseMod** + **Harmony** mods: separate class libraries hot-loaded from `Mods/`; **do not edit ACE source**.

## Layout

- **Output:** `C:\ACE\Mods\YourMod\` — DLL, `ACE.Shared.dll`, `Meta.json`, `Settings.json` (ship a template in this repo).
- **Source:** own folder; `OutputPath` → `C:\ACE\Mods\$(AssemblyName)`; never put `.cs` in the output folder.

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
- **Avoid primary constructors** on PatchClass unless you also **`override Start()`** and assign `Settings = SettingsContainer.Settings ?? new Settings()`. **`OnWorldOpen()`** does not run after **hot-reload** when the world is already up — load settings in **ctor** and/or **`Start()`**, not only `OnWorldOpen()`.
- Instance parameters must match ACE signatures (`ref` only where ACE uses it).

## Settings

- **`Settings.cs`** = source of truth for defaults.
- Shipped **`Settings.json`**: **documentation band** (all `"// Key"` strings in order) then **values band** (same keys without `//`). See **`QOL/Settings.json`** + **`QOL/Settings.cs`** for `[JsonPropertyName("// …")]`.
- Update **Readme `### Settings`** when operators need more than JSON docs.

## .csproj essentials

Copy an existing gameplay mod in this repo (e.g. **Xenology**, **Loremaster**). Invariants:

- `net10.0`, `OutputPath` → `C:\ACE\Mods\$(AssemblyName)`, `CopyLocalLockFileAssemblies` true.
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

- `ModManager.ModPath` = parent `C:\ACE\Mods` — append `YourMod` for data under Mods.
- Or `Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location)` for files next to the DLL.

## Harmony quick reference

- Class has `[HarmonyPatch]`; methods `public static`.
- Postfix: `__result` / `ref` returns; Prefix: return `false` to skip original.
- Overloads: third argument `new Type[] { typeof(...) }` — **attribute args must be compile-time constants** (no `typeof(bool).MakeByRefType()` in attributes; omit param list if single overload, or use `AccessTools.Method` manual patch).
- **`SpellProjectile.CalculateDamage`:** single overload → `[HarmonyPatch(typeof(SpellProjectile), nameof(SpellProjectile.CalculateDamage))]`; postfix includes `ref float? __result` and matches **BetterSupportSkills** parameter order (`__instance`, `source`, `target`, ref bools, `__result`).

## Repo patterns (short)

- **`/ace-build`:** build each mod’s `.csproj` under the repo root.
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

### Xenology-style (loot + combat)

- **`Creature.GenerateTreasure`** is **private** — patch `typeof(Creature), "GenerateTreasure", new[] { typeof(DamageHistoryInfo), typeof(Corpse) }`.
- **`DeathTreasure`** comes from **`DeathTreasureType`** → `DatabaseManager.World.GetCachedDeathTreasure`. To “bump tier,” **prefix** can set **`PropertyDataId.DeathTreasureType`**, then **postfix** restore after other postfixes (lower Harmony priority = runs later). **`GetAllTreasureDeath()`** for resolving another **`TreasureDeath`** row by tier.
- **`Creature.Die`** runs synchronously before the **delayed** `CreateCorpse` chain — **`PostDie`** can increment lifetime kills **before** `GenerateTreasure`; don’t use `+1` if you already mean “this kill included.”
- Spell damage: postfix **`SpellProjectile.CalculateDamage`** for war/void/life projectile damage (not only **`DamageEvent.CalculateDamage`**).

### Loremaster trophy burden XP

- **`TrophyBurdenXp`:** optional independent rolls (**Quality** 2×, **Pristine** 3×, stack 6×); **`ThreadSafeRandom.Next(0.0f, 1.0f)`** vs configured chances; flavor prefixes on **chat only** (same item).

## Compact player chat

- Prefer **one** `SendMessage` per player-facing outcome; **`[ModName]`** prefix once; avoid duplicate lines for the same event.
- **`{x:P2}`** already prints a **percent sign** — do not append an extra `"%"`.
- Bonus tiers (Quality / Pristine / “exceptional specimen”) = **message flavor**, not new items; keep text **short and readable** (e.g. item name + XP + one context clause).

## High-value snippets

**Player from kill loot:** `killer.TryGetPetOwnerOrAttacker() as Player` (pets).

**Ghost items:** `corpse.TryRemoveFromInventory(guid, out var removed)` then give **`removed`**, not the old reference.

**Offline quests:** table **`CharacterPropertiesQuestRegistry`** (`CharacterId`, `QuestName`, `NumTimesCompleted`) via **`ShardDbContext`** — not `BiotaPropertiesQuestRegistry`.

**Commands:** `if (session?.Player is not Player p) return;` — names are **global** across mods.

**FakeProperty / custom ints:** use IDs **> 40000**; see ACE.Shared **`FakeBool`/`FakeFloat`/…**. Cross-mod shared floats (e.g. enlightenment pool **11012**) must use the **same** ID in every mod that reads/writes it — see **§ AureatePath + Loremaster + ChallengeModes** above.

**Particle on humanoids:** **`DefaultScriptId`** does not loop visibly on humanoid setups; use **beacon** static (e.g. WCID **36577**) + **`ActionChain`** delay after **`GenerateWieldList`** — details in ACE wiki / mod examples.

## Production safety (condensed)

Null-coalesce collections before LINQ; guard **`FirstOrDefault`** on empty sequences; **`ToHashSet()`** ambiguity → `new HashSet<T>(source)`; reflection → log **`InnerException`**; empty **`RecipeManager`** lists before **`Last()`**; safe divide with **`Math.Max(1, divisor)`**.

## Workflow checklist

1. Copy `.csproj` from a working mod in this repo.  
2. Verify output folder matches a known-good mod (DLL set).  
3. Hook ACE method with exact signature.  
4. Settings in ctor + `Start()` + `OnWorldOpen()`.  
5. Ship `Settings.json` two-band template.  
6. Hot-reload: `/mod f [name]` after rebuild.

## Links

- [ACE.BaseMod wiki](https://github.com/aquafir/ACE.BaseMod/wiki/Getting-Started)  
- [Harmony](https://harmony.pardeike.net/articles/intro.html)  
- [ACE wiki](https://github.com/ACEmulator/ACE/wiki)

## /doc

Durable findings → short **Findings** + **small** additive edits to this file (see `.cursor/skills/doc/SKILL.md`). Prefer new bullets over long new sections; link out if a topic needs a full page.
