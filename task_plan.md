# Task Plan: Spellsiphon + Mana Lattice Tuning Batch

## Phase 1 — Infinite Gems (no mana cost, no consumption)
- [x] Rewrite `InfiniteGemHooks.cs` to patch `Player.TryConsumeFromInventoryWithNetworking` — skip consumption for ANY gem with spells.
- [x] Fix `PatchClass.cs` `TryPatchInfiniteGems` to patch the correct method.

## Phase 2 — Vendor sales: plain only
- [x] `BetterLootControl/VendorLootRotation.cs`: Remove magical Spellsiphon + Mana Lattice from `UniqueItemsForSale`. Keep plain in `DefaultItemsForSale`.

## Phase 3 — Spellsiphon cleanse tuning
- [x] `RecipeHooks.cs`: Cleanse recipe (900002) → 100% success, destroy Spellsiphon on success, target survives.
- [x] `Settings.cs` + `Settings.json`: Raise `VendorPrice` for Spellsiphon to 500,000.

## Phase 4 — Glyph loot drops (tier-matched, 1-3 spells)
- [x] `BetterLootControl/GlobalRareDrops.cs`: Remove plain Spellsiphon drops. Add glyph drops per tier with 1-3 tier-appropriate spells.
- [x] `BetterLootControl/Settings.cs`: Added `GlyphExtractionBaseWcid`.
- [x] Keep magical Mana Lattice drops (already working).

## Phase 5 — Glyph vendor sales (jewelers + mages)
- [x] `VendorIntegration.cs`: Sell Glyphs at both jeweler AND mage vendors.

## Phase 6 — Mana Lattice /buffs auto integration
- [x] Create `ManaLatticeAutoBuff.cs`: Timer checks player buffs from Mana Lattice, auto-reuses when expiring.
- [x] `PatchClass.cs`: Wire up timer start/stop.
- [x] `SpellSiphonQaCommands.cs`: Added `/spellsiphonqa manalattice auto [off]` command.

## Phase 7 — Build & Deploy
- [x] Build SpellSiphon (0 errors, 2 warnings).
- [x] Build BetterLootControl (0 errors, 4 warnings).
- [ ] Deploy to void-test.
- [ ] Restart server.
- [ ] Test in-game.
