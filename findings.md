# Findings - Empower Healing Kit System

## Requirements
- Replace all loot-generated healing kits with Anointed Healing Kits (unlimited use, randomized stats + perks)
- Vendor kits unchanged
- BSS Recuperation disabled (replaced by Regeneration perk)
- 8 possible perks: Omni-Heal, Regeneration, Efficiency, Critical Surge, Cleansing, Reactive Barrier, Boon, Auto-Self (baseline)

## Technical Decisions

| Decision | Rationale |
|----------|-----------|
| WeenieType.Food (18) instead of Healer (28) | OnActivate fires on double-click without targeting reticle; we intercept with Harmony prefix |
| WorldObject.OnActivate patched | Food doesn't override OnActivate, so base-class patch fires for all Food items |
| LootGenerationFactory.CreateAndMutateWcid postfix | Can't postfix WorldObjectFactory.CreateNewWorldObject (returns WorldObject, not void) |
| Perk storage via FakeBool + FakeFloat | Property IDs 40150-40157 (flags) + 40160-40167 (values) |
| Kit tier via PropertyInt 40170 | Stored on the item for reference |
| ThreadStatic for loot context | Captures tier + quality mod during the roll for use during item creation |

## ACE Source References
- `WorldObject.OnActivate` in `WorldObject_Use.cs:71` — virtual, called by `TryUseItem`
- `Food` inherits from `Stackable` → `WorldObject` — does NOT override `OnActivate`
- `Food.ActOnUse` is called from `WorldObject.OnActivate` when `ActivationResponse.Use` flag is set
- Our Harmony prefix returns `false` (skip original), so `ActOnUse` never fires

## Cross-Mod Property ID Check
IDs 40150-40170: No conflicts with existing property table in AGENTS.md.

## Wiki Entry Added
"Harmony Postfix on Non-Void Return Methods" — lesson learned that you can't use a standard Harmony postfix on methods returning non-void types.
