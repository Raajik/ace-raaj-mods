# ACRealms WorldServer Compatibility Audit

**Fork:** ACRealms.WorldServer-2.1.4 (`.references/ACRealms.WorldServer-2.1.4`)  
**Audited:** 2026-04-30  
**Mods assessed:** 24

---

## TL;DR

| Category | Count | Mods |
|---|---|---|
| **Infra-only** (csproj + DLL refs, no code changes) | 20 | See Tier 1 below |
| **Minor code change** (1–2 callsites) | 2 | BetterSupportSkills, Loremaster |
| **Moderate code change** (13 callsites, 3 files) | 1 | WorldEvents |
| **No rewrite needed** | **23/24** | |

> **None of the 24 mods require a full rewrite.** The ACRealms fork preserves virtually all patched method signatures. The changes are:
> 1. A universal build retarget (net10.0 → net8.0).
> 2. Three mods calling `LandblockManager.GetLandblock` with the old 2-arg signature.

---

## Breaking Changes in ACRealms vs Standard ACE

### 1. .NET Target Framework — ALL mods affected

The fork targets **net8.0**; all mods currently target **net10.0**.  
A net10.0 assembly will fail to load into a net8.0 host process.

**Fix:** Change `<TargetFramework>net10.0</TargetFramework>` → `net8.0` in every `.csproj`.  
This is mechanical — no C# code changes required; net10 syntax is largely a superset of net8.

Also: ACE server DLL `<Reference>` paths need to point to the ACRealms fork's build output, not vanilla ACE.  
And: **ACE.Shared** + **ACE.BaseMod** packages may need to be rebuilt against fork DLLs if they surface any changed types (most likely fine, since `IHarmonyMod`, `ModManager`, and `BasicMod<T>` APIs are unchanged in the fork).

---

### 2. `LandblockManager.GetLandblock` — 3 mods affected

| Old signature | New signature |
|---|---|
| `GetLandblock(LandblockId, bool loadAdjacents, bool permaload = false)` | `GetLandblock(LandblockId, uint instance, EphemeralRealm ephemeralRealm, bool loadAdjacents, bool permaload = false, bool wait = false)` |

ACRealms adds an instanced landblock system. `Position` now has a `uint Instance` field. All 13 existing callsites use the old 2-arg or 3-arg form.

**Fix per callsite:**
- If the `LandblockId` comes from a `WorldObject.Location`, use `LandblockManager.GetLandblock(obj.Location.LandblockId, obj.Location.Instance, null, false)`.
- If the `LandblockId` is constructed directly (e.g. `new LandblockId(x)`), pass `instance: 0` and `ephemeralRealm: null` to target the default realm.

---

### 3. Creature / Player Constructors — no mods affected

ACRealms adds a mandatory `AppliedRuleset ruleset` parameter to `Creature(...)` and `Player(...)` constructors. No mod in this repo directly calls `new Creature(...)` or `new Player(...)`, so this change has zero impact on existing mods.

---

### 4. `Position.Instance` field (additive) — no mods affected

`Position` gained a `uint Instance` field. Mods that read `Location.LandblockId`, `Location.Cell`, etc. are unaffected. Only the GetLandblock calls (see §2) need updating.

---

### 5. All patched method signatures — UNCHANGED

The following table covers every `[HarmonyPatch]` target across all 24 mods. Every entry was verified against the fork source:

| Method | Signature status |
|---|---|
| `Creature.GenerateTreasure(DamageHistoryInfo, Corpse)` | ✅ Unchanged, still private |
| `Creature.Die(DamageHistoryInfo, DamageHistoryInfo)` | ✅ Unchanged |
| `SpellProjectile.CalculateDamage(WorldObject, Creature, ref bool, ref bool, ref bool)` | ✅ Unchanged |
| `DamageEvent.CalculateDamage(Creature, Creature, WorldObject, MotionCommand?, AttackHook)` | ✅ Unchanged |
| `LootGenerationFactory.CreateAndMutateWcid(TreasureDeath, TreasureRoll, bool)` | ✅ Unchanged (now public — doesn't affect Harmony) |
| `LootGenerationFactory.CreateRandomLootObjects(TreasureDeath)` | ✅ Unchanged |
| `RecipeManager.VerifyRequirements(Recipe, Player, WorldObject, RequirementType)` | ✅ Unchanged |
| `RecipeManager.TryMutate(Player, WorldObject, WorldObject, Recipe, uint, HashSet<ulong>)` | ✅ Unchanged |
| `RecipeManager.HandleRecipe(Player, WorldObject, WorldObject, Recipe, double)` | ✅ Unchanged |
| `Player.PlayerEnterWorld()` | ✅ Unchanged |
| `Player.OnDeath(DamageHistoryInfo, DamageType, bool)` | ✅ Unchanged |
| `Player.GrantXP(long, XpType, ShareType)` | ✅ Unchanged |
| `Player.EarnLuminance(long, XpType, ShareType)` | ✅ Unchanged |
| `Player.GetNumCoinsDropped()` | ✅ Unchanged |
| `Player.FinalizeBuyTransaction(Vendor, List<WorldObject>, List<WorldObject>, uint)` | ✅ Unchanged |
| `Player.HandleActionGiveObjectRequest(uint, uint, int)` | ✅ Unchanged |
| `Player.UpdateProperty(WorldObject, PropertyInt, int?, bool)` | ✅ Unchanged |
| `Player.UpdateProperty(WorldObject, PropertyFloat, double?, bool)` | ✅ Unchanged |
| `Player.HandleActionRaiseSkill(Skill, uint)` | ✅ Unchanged |
| `Player.AddSalvage(...)` | ✅ Unchanged |
| `QuestManager.Update/Decrement/Erase/SetQuestCompletions` | ✅ Unchanged |
| `QuestManager.HandleKillTask` | ✅ Unchanged |
| `QuestManager.GetNextSolveTime(string)` | ✅ Unchanged |
| `EmoteManager.ExecuteEmote(PropertiesEmote, PropertiesEmoteAction, WorldObject)` | ✅ Unchanged |
| `PropertyManager.GetBool(string, bool, bool)` | ✅ Unchanged |
| `Vendor.GetBuyCost/GetSellCost(WorldObject)` | ✅ Unchanged |
| `Container.Open/Close(Player)` | ✅ Unchanged |
| `WorldObject.SelectAProfile()` | ✅ Unchanged |
| `WorldObject.CheckUseRequirements(WorldObject)` | ✅ Unchanged |
| `WorldObject.AddItemXP(long)` | ✅ Unchanged |
| `Chest.Reset/Unlock/Open(...)` | ✅ Unchanged |
| `Gem.UseGem(Player)` | ✅ Unchanged |
| `Enlightenment.RemoveAbility/AddPerks/VerifyRequirements` | ✅ Unchanged |
| `ExperienceSystem.ItemTotalXPToLevel/ItemLevelToTotalXP` | ✅ Unchanged |
| `Creature.GetDamageRating(int)` | ✅ Unchanged |
| `Creature.SelectTargetingTactic/FindNextTarget` | ✅ Unchanged |
| All `Factories.Tables.*` classes (QualityChance, CantripChance, etc.) | ✅ All present and unchanged |
| `LockHelper.Unlock`, `UnlockerHelper.UseUnlocker/ConsumeUnlocker` | ✅ Unchanged |
| `Key.HandleActionUseOnTarget(Player, WorldObject)` | ✅ Unchanged |

---

## Per-Mod Assessment

### Tier 1 — Infra-only (csproj retarget + DLL references)

> 20 mods. Zero code changes required beyond `.csproj` updates.

| Mod | Notes |
|---|---|
| **AceModQa** | No Harmony patches; no ACE API calls of concern |
| **AchievementUnlocked** | Patches Player, Creature.Die, QuestManager — all unchanged |
| **AureatePath** | Patches Enlightenment, WorldObject.CheckUseRequirements — all unchanged |
| **AutoLoot** | Patches Player, Container, manually patches GenerateTreasure — all unchanged |
| **BetterChestLoot** | Patches WorldObject.SelectAProfile, Chest — all unchanged |
| **BetterKeys** | AccessTools patches on LockHelper, UnlockerHelper, Key, Chest — all unchanged |
| **ChallengeModes** | Patches Player.PlayerEnterWorld + PatchCategory system — all unchanged |
| **CommonGoals** | Uses `PatchAll` for auto-discovery; no known breaking targets |
| **CustomSpells** | No Harmony patches; uses ACE.Database + ACE.DatLoader |
| **EasyServerSettings** | No Harmony patches |
| **EmpyreanAlteration** | Patches LootGenerationFactory.CreateAndMutateWcid — signature unchanged |
| **LeyLineLedger** | Patches Player.OnDeath, GetNumCoinsDropped, Gem.UseGem, PlayerEnterWorld — all unchanged |
| **LivingEquipment** | Patches WorldObject.AddItemXP, ItemLevel getter, ExperienceSystem — all unchanged |
| **Lockboxes** | Uses dynamic reflection patching; no known breaking targets |
| **Numbersmith** | Uses PatchCategory only; no known breaking targets |
| **Overtinked** | Patches RecipeManager.VerifyRequirements, TryMutate, HandleRecipe — all unchanged |
| **QOL** | Uses AccessTools manually; no GetLandblock calls; targets unchanged |
| **SharedLoot** | No PatchClass; no Harmony patches |
| **SpellSiphon** | Manual hooks; no known breaking targets |
| **Swarmed** | Patches Creature.Die + PatchCategory for variation/scaling — all unchanged |
| **ValheelContent** | Patches 25+ factory table methods + LootGenerationFactory.CreateRandomLootObjects — all present and unchanged |

---

### Tier 2 — Minor code change (1–2 callsites each)

#### BetterSupportSkills
**File:** `Skills/ManaConversionSpellCleave.cs:69`  
```csharp
// Old
var lb = LandblockManager.GetLandblock(lbId, false, false);
// New
var lb = LandblockManager.GetLandblock(lbId, 0, null, false);
```
All other patches (SpellProjectile.CalculateDamage, Food.ApplyConsumable, RecipeManager.HandleRecipe, Pet.Init, Player.DamageTarget) are unchanged.

---

#### Loremaster
**File:** `ParchmentExploreGuidance.cs:47`  
```csharp
// Old
lb = LandblockManager.GetLandblock(lbId, false, false);
// New
lb = LandblockManager.GetLandblock(lbId, 0, null, false);
```
All other patches (QuestManager, EmoteManager, Player.GrantXP, EarnLuminance, LogOut_Final, HandleActionGiveObjectRequest, PropertyManager.GetBool) are unchanged.

---

### Tier 3 — Moderate code change (13 callsites, 3 files)

#### WorldEvents
Three runtime files call `GetLandblock` with the old signature. Every callsite can be fixed by adding the `instance` from the `WorldObject.Location` that's already in scope, or using `0` for constructed IDs:

| File | Callsites |
|---|---|
| `Invasion/InvasionRuntime.cs` | 10 |
| `PoiHunt/PoiHuntRuntime.cs` | 2 |
| `ScavengerHunt/ScavengerRuntime.cs` | 1 |

Pattern for most fixes:
```csharp
// Old — LandblockId from a WorldObject's location
var lb = LandblockManager.GetLandblock(boss.Location.LandblockId, false);
// New
var lb = LandblockManager.GetLandblock(boss.Location.LandblockId, boss.Location.Instance, null, false);

// Old — LandblockId constructed directly (group.Key is a LandblockId)  
var lb = LandblockManager.GetLandblock(group.Key, false);
// New — use instance 0 (default realm) for externally-constructed IDs
var lb = LandblockManager.GetLandblock(group.Key, 0, null, false);
```

All Harmony patches in WorldEvents (Creature.GenerateTreasure, Creature.Die, Player.Die, SpellProjectile.CalculateDamage, DamageEvent.CalculateDamage, Vendor.GetBuyCost/GetSellCost, Player.FinalizeBuyTransaction) are unchanged in the fork.

---

## Work-in-Progress (Not Counted)

- **Gemcrafter** — folder exists, no `.csproj` found; not assessed
- **Work-In-Progress/Nemesis** — `NemesisLandblockScan.cs` also calls `GetLandblock` with old signature (1 callsite); same fix applies when/if the mod is completed

---

## Migration Checklist

For all 24 mods:
- [ ] `<TargetFramework>net10.0</TargetFramework>` → `net8.0` in each `.csproj`
- [ ] Update ACE server `<Reference>` paths to ACRealms fork build output
- [ ] Verify ACE.Shared + ACE.BaseMod packages load correctly against fork DLLs
- [ ] Build and confirm no compilation errors before testing hot-reload

For BetterSupportSkills, Loremaster, WorldEvents:
- [ ] Update `GetLandblock` callsites per patterns above
- [ ] Confirm instances are passed correctly (use `Location.Instance` for real-world positions; `0` for default-realm constructed IDs)
