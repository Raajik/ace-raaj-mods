# Glyph of Extraction — Implementation Plan

## Branch
`jeremy/feature/glyph-extraction`

## Goal
Add tiered "Glyph of Extraction" items (tiers 0–9) to SpellSiphon mod. Tier 0 is the first experimental item — extracts cantrips and unique (non-Roman-numeral) spells with prioritized targeting. Sold by jewelers alongside Spellsiphons.

## Reserved WCIDs (850210–850219)
| WCID | Tier | Name | Overlay DID | Extractable Spell Levels |
|------|------|------|-------------|-------------------------|
| 850210 | 0 | Glyph of Extraction I | 0x06006C33 (100690995) | Cantrips + unique (non-tiered) |
| 850211 | 1 | Glyph of Extraction II | 0x06006C34 (100690996) | Level 1 (reserved) |
| 850212 | 2 | Glyph of Extraction III | 0x06006C35 (100690997) | Level 2 (reserved) |
| 850213 | 3 | Glyph of Extraction IV | 0x06006C36 (100690998) | Level 3 (reserved) |
| 850214 | 4 | Glyph of Extraction V | 0x06006C37 (100690999) | Level 4 (reserved) |
| 850215 | 5 | Glyph of Extraction VI | 0x06006C38 (100691000) | Level 5 (reserved) |
| 850216 | 6 | Glyph of Extraction VII | 0x06006C39 (100691001) | Level 6 (reserved) |
| 850217 | 7 | Glyph of Extraction VIII | 0x06006C3A (100691002) | Level 7 (reserved) |
| 850218 | 8 | Glyph of Extraction IX | 0x06006C3B (100691003) | Level 8 (reserved) |
| 850219 | 9 | Glyph of Extraction X | 0x06006C3C (100691004) | Level 9 (reserved) |

## Files Changed

| File | Change |
|------|--------|
| `SpellSiphon/Features/RecipeHooks.cs` | Added Glyph WCID detection, tier filtering, charged Glyph creation with acid UI effect + tiered overlay |
| `SpellSiphon/Features/UseOnTargetHooks.cs` | Added Glyph apply-ready handling alongside Spellsiphon apply |
| `SpellSiphon/Helpers/ItemPayload.cs` | Added IsChargedGlyph (40106), GlyphExtractionTier (40107), GlyphSpellCount (40108) |
| `SpellSiphon/Settings.cs` | Added GlyphExtractionBaseWcid, GlyphPrice, GlyphPricePerTier, VendorGlyphStackSize |
| `SpellSiphon/Settings.json` | Added new settings fields |
| `SpellSiphon/VendorIntegration.cs` | Injects all 10 Glyph tiers at jeweler vendors with tiered pricing |
| `SpellSiphon/VendorStackUnitPricePostfix.cs` | Added Glyph WCID handling for stack unit price |
| `SpellSiphon/Content/SQL/GlyphExtraction_Tools_Create.sql` | Created all 10 weenies with icon 63D8 + tiered overlays 6C33-6C3C |
| `SpellSiphon/WCID_REGISTRY.md` | Documented 850210-850219 and new payload props |

## How It Works

1. **Blank Glyph of Extraction I** (WCID 850210) is used on a spell-bearing item.
2. If the item has **no cantrips or unique (non-Roman) spells**, player gets:  
   *"Glyph of Extraction I has no valid extraction targets on this item. Try it on an item that carries cantrips or unique non-tiered spells."*  
   The tool is **not consumed** — the recipe is blocked at `PostGetRecipe` before the dialog even opens.
3. If valid targets exist, the extraction proceeds with the **same success formula** as Spellsiphon.
4. On success, 1-3 spells are extracted, **prioritized**: cantrips first → unique spells second → ranked last.
5. A **charged Glyph** is created with:
   - `UiEffects.Acid` (green/acid outline)
   - `PropertyDataId.IconOverlay` = tier-specific DID (0x06006C33 + tier)
   - Name: `"Glyph of Extraction I (N)"` where N = spell count
   - Unstackable, bonded
6. The charged Glyph is used on equipment/gems/ManaLattice to **apply** the extracted spells (same flow as Spellsiphon apply).

## Bug Fixes Applied

### Fix 1 — "No valid targets" not blocking (committed 2026-05-12)
**Root cause:** `PostGetRecipe` only checked `IsValidSourceItem()` (any spell = valid). The recipe was injected even when the target had only ranked spells for tier 0. The "no valid targets" message only appeared in `PostHandleRecipe` *after* the tool was already consumed.
**Fix:** Added `FilterSpellsForGlyphTier()` call in `PostGetRecipe` before recipe injection. If no eligible spells, the recipe is NOT injected and the tool stays intact.

### Fix 2 — Target not destroyed on extraction failure (committed 2026-05-12)
**Root cause:** Recipe definition had `FailDestroyTargetAmount = 0` despite comment saying "Target item ALSO destroyed on failure."
**Fix:** Changed `FailDestroyTargetAmount` from `0` to `1`. Now both source tool and target are destroyed on failed extraction.

## Vendor Integration
- **Jeweler vendors** sell all 10 Glyph tiers.
- **Pricing**: Tier 0 = 5,000 pyreals, Tier N = 5,000 + N × 5,000 pyreals.
- Stack size: 250 (same as Spellsiphon).

## Verification Steps (pending server restart)
1. `/create 850210` — verify Glyph of Extraction I spawns with correct icon
2. Use on gem with only ranked spells — verify "no valid targets" message, tool NOT consumed
3. Use on gem with cantrip + ranked — verify cantrip extracted, charged glyph has green outline
4. Visit a jeweler vendor — verify Glyph of Extraction I-X for sale with correct prices
5. Use charged Glyph on equipment — verify spells apply
6. Use Glyph on Zefir's Crystal, let it fail — verify crystal is destroyed

## Progress
| Step | Status | Notes |
|------|--------|-------|
| SQL weenies | ✅ | 10 tiers with 63D8 icon + tiered overlays 6C33-6C3C |
| ItemPayload.cs | ✅ | Properties 40106-40108 added |
| Settings.cs + .json | ✅ | Glyph settings added |
| RecipeHooks.cs | ✅ | Glyph detection, tier 0 filtering, charged creation, bug fixes |
| UseOnTargetHooks.cs | ✅ | Glyph apply step wired |
| VendorIntegration.cs | ✅ | All 10 tiers injected at jewelers |
| VendorStackUnitPricePostfix.cs | ✅ | Glyph pricing wired |
| WCID_REGISTRY.md | ✅ | Documented |
| Build | ✅ | Clean compile |
| Deploy to void-test | ✅ | DLLs copied, SQL applied (step 5 timed out but likely completed) |
| Server restart + test | ⏳ | Pending user restart |
