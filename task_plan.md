# Replace Vanilla Coalesced Mana with BLC-Controlled Drops

## Goal
Remove ACE's hardcoded Coalesced Mana drops (`TryRollMundaneAddon`) and have BetterLootControl (BLC) be the sole source for all Coalesced Mana loot — both on corpses and in chests.

## Phases

### Phase 1 — Disable Vanilla Coalesced Mana Drops
- [ ] Patch `LootGenerationFactory.TryRollMundaneAddon` (or `CreateCoalescedMana`) to return `null` so ACE never drops Coalesced Mana natively.

### Phase 2 — Add Coalesced Mana to BLC Corpse Drops
- [ ] Expand `GlobalRareDrops.cs` to roll tier-appropriate Coalesced Mana (Lesser/Greater/Aetheric) on creature death, matching vanilla tier distribution.

### Phase 3 — Add Coalesced Mana to BLC Chest Loot Tables
- [ ] Add the three Coalesced Mana WCIDs to `DefaultLootConfig.cs` (uncommon or rare pool, low stack size).

### Phase 4 — Settings & Config
- [ ] Add `CoalescedManaDropChance` and WCID settings to `Settings.cs`.
- [ ] Update `Settings.json` with sensible defaults.

### Phase 5 — Build, Deploy, Verify
- [ ] `dotnet build BetterLootControl`
- [ ] Copy to test server, restart, verify no vanilla drops and BLC drops appear.
- [ ] Push live after user confirmation.

## Key Decisions
- **WCIDs stay the same** (42516, 42517, 42518) — DB already has our custom properties (`Bonded=0` via EmpyreanAlteration SQL).
- **Tier distribution matches vanilla**:
  - T1-T2: Aetheric (42518) only
  - T3: Aetheric 75%, Greater 25%
  - T4: Aetheric 25%, Greater 50%, Lesser 25%
  - T5+: No drop (same as vanilla)
- **Drop rate**: ~2% per corpse with valid DeathTreasure (same as vanilla `TryRollMundaneAddon` inner roll).
- **Chest pool**: Uncommon tier, single quantity (not stackable — Coalesced Mana doesn't stack).
