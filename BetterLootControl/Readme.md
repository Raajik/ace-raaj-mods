# BetterLootControl

Server-side loot tuning for Windblown. See repo `README.md` for the full mod list.

## Mana Lattice spell bootstrap

When `ManaLatticeSpellBootstrap` runs (rare lattice drops with SpellSiphon integration), spells are written via **SpellSiphon** `LootMutator.TryAddSpellId` (sets **Magical** `UiEffects`). After any spell is added, the lattice calls **`CalculateObjDesc`** and **`EnqueueBroadcastUpdateObject`** so the blue outline and examine data refresh on the client.

## Changelog

### 2026-05-04

- **Coalesced Mana (modern ACE):** Added `SuppressVanillaTryRollCoalescedMana` prefix on `LootGenerationFactory.TryRollCoalescedMana` so vanilla mundane coalesced rolls are skipped when the mod is enabled (WB builds often omit `CreateGenericObjects`, so the old matrix strip never applied). `CreateCoalescedMana` patch now resolves via `DeclaredMethod`. `CreateGenericObjects` strip logs **Info** when absent (expected).
