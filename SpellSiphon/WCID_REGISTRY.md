# Spellsiphon WCID Registry

This document lists all custom WCIDs used by the Spellsiphon mod to help other developers and server admins avoid conflicts.

## Custom WCIDs (Reserved by Spellsiphon)

| WCID | Name | Type | Purpose |
|------|------|------|---------|
| **850200** | Spellsiphon | CraftTool | Base extraction tool. Used directly on spell-bearing items to attempt spell extraction. On success, becomes a charged Spellsiphon that can apply extracted spells to equipment or gems. |
| **850201** | Mana Lattice | Misc | Dedicated base for reusable buff gems. Becomes "Endless Mana Lattice" when infused. |
| **850210** | Glyph of Extraction I | CraftTool | Tier 0 — extracts cantrips and unique (non-tiered) spells. |
| **850211** | Glyph of Extraction II | CraftTool | Tier 1 — reserved for Level 1 spell extraction. |
| **850212** | Glyph of Extraction III | CraftTool | Tier 2 — reserved for Level 2 spell extraction. |
| **850213** | Glyph of Extraction IV | CraftTool | Tier 3 — reserved for Level 3 spell extraction. |
| **850214** | Glyph of Extraction V | CraftTool | Tier 4 — reserved for Level 4 spell extraction. |
| **850215** | Glyph of Extraction VI | CraftTool | Tier 5 — reserved for Level 5 spell extraction. |
| **850216** | Glyph of Extraction VII | CraftTool | Tier 6 — reserved for Level 6 spell extraction. |
| **850217** | Glyph of Extraction VIII | CraftTool | Tier 7 — reserved for Level 7 spell extraction. |
| **850218** | Glyph of Extraction IX | CraftTool | Tier 8 — reserved for Level 8 spell extraction. |
| **850219** | Glyph of Extraction X | CraftTool | Tier 9 — reserved for Level 9 spell extraction. |

## Repurposed Existing WCIDs (Updated by Spellsiphon)

| WCID | Original Name | New Name | Tier | Base Success | Fail Behavior |
|------|--------------|----------|------|-------------|---------------|
| **42516** | Coalesced Mana | Lesser Coalesced Mana | 1 | 20% | Source item safe |
| **42517** | Coalesced Mana | Greater Coalesced Mana | 2 | 30% | Source item safe |
| **42518** | Coalesced Mana | Aetheric Coalesced Mana | 3 | 40% | Source item destroyed |

## Payload Properties (Internal Use)

| Property | Type | ID | Purpose |
|----------|------|-----|---------|
| `PayloadPrimarySpellIdProp` | PropertyInt | 40100 | Primary spell ID (fallback) |
| `PayloadSpellListJsonProp` | PropertyString | 40101 | JSON-serialized spell ID list |
| `IsChargedSpellsiphon` | PropertyBool | 40102 | Marks a Spellsiphon as charged |
| `SpellsiphonTier` | PropertyInt | 40103 | Tier: 0=Lesser, 1=Greater, 2=Aetheric |
| `SpellsiphonSpellCount` | PropertyInt | 40104 | Number of extracted spells (for name display) |
| `IsEndlessManaLattice` | PropertyBool | 40105 | Marks a Mana Lattice that has been infused (Endless Mana Lattice) |
| `IsChargedGlyph` | PropertyBool | 40106 | Marks a Glyph of Extraction as charged |
| `GlyphExtractionTier` | PropertyInt | 40107 | Tier: 0=I, 1=II, ..., 9=X |
| `GlyphSpellCount` | PropertyInt | 40108 | Number of extracted spells on a charged Glyph |

## Notes

- **850200-850219** are in the mod-reserved 850xxx range. No other mods in this repo use this range.
- **42516-42518** are existing ACE weenies (Coalesced Mana tiers) — currently mentioned in settings but not actively used in the extraction flow.
- All payload properties use the 401xx range to avoid conflicts with other mods.
- For questions or conflict reports, see the Spellsiphon README or open an issue.
