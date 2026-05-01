# SpellSiphon WCID Registry

This document lists all custom WCIDs used by the SpellSiphon mod to help other developers and server admins avoid conflicts.

## Custom WCIDs (Reserved by SpellSiphon)

| WCID | Name | Type | Purpose |
|------|------|------|---------|
| **850200** | Spellsiphon | CraftTool | Base extraction tool. Used on Coalesced Mana to charge, then on spell-bearing items to extract. |

## Repurposed Existing WCIDs (Updated by SpellSiphon)

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

## Notes

- **850200** is in the mod-reserved 850xxx range. No other mods in this repo use this range.
- **42516-42518** are existing ACE weenies that previously did nothing (no use functionality). SpellSiphon repurposes them without changing their loot drop rates.
- All payload properties use the 401xx range to avoid conflicts with other mods.
- For questions or conflict reports, see the SpellSiphon README or open an issue.
