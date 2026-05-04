# BetterLootControl

Server-side loot tuning for Windblown. See repo `README.md` for the full mod list.

## Coalesced Mana weenie (WCIDs 42516–42518)

**Canonical SQL only:** [`WindblownContent/08-custom-items/01_CoalescedMana_LesserGreaterAetheric.sql`](../WindblownContent/08-custom-items/01_CoalescedMana_LesserGreaterAetheric.sql) — correct `ItemUseable` (use-on-target), `TargetType`, Icon/Setup DIDs. Do **not** run the deprecated stub [`CoalescedMana_LesserGreaterAetheric.sql`](../WindblownContent/08-custom-items/CoalescedMana_LesserGreaterAetheric.sql) (comments only; old revision had `Usable.No` and wrong art).

After weenie apply, existing inventory stacks: [`EmpyreanAlteration/Content/SQL/03-coalesced-mana-biota-template.sql`](../EmpyreanAlteration/Content/SQL/03-coalesced-mana-biota-template.sql) on **ace_shard**.

## Mana Lattice spell bootstrap

When `ManaLatticeSpellBootstrap` runs (rare lattice drops with SpellSiphon integration), spells are written via **SpellSiphon** `LootMutator.TryAddSpellId` (sets **Magical** `UiEffects`). After any spell is added, the lattice calls **`CalculateObjDesc`** and **`EnqueueBroadcastUpdateObject`** so the blue outline and examine data refresh on the client.

## Changelog

### 2026-05-04

- **Coalesced Mana (modern ACE):** Added `SuppressVanillaTryRollCoalescedMana` prefix on `LootGenerationFactory.TryRollCoalescedMana` so vanilla mundane coalesced rolls are skipped when the mod is enabled (WB builds often omit `CreateGenericObjects`, so the old matrix strip never applied). `CreateCoalescedMana` patch now resolves via `DeclaredMethod`. `CreateGenericObjects` strip logs **Info** when absent (expected).
