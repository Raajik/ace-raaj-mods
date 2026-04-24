# Custom WCID Reference

This file documents the custom WCID (Weenie Class ID) ranges used by ace-raaj-mods.

## Reserved Range
- **Start**: `101189990` (0x0603A096)
- **Note**: This range was chosen to be highly unlikely to conflict with other ACEmulator server implementations

## Usage
- Use this range for custom items spawned by ace-raaj-mods
- Document any new custom WCIDs added below when creating new features

---

## Assigned WCIDs

### CommonGoals (Personal Loot)
| WCID | Name | Notes |
|-----|------|-------|
| | | *(Uses creature's original WCID)* | Personal corpse inherits creature WCID |

### CustomNPC (Future - Quest Vendors)
| WCID | Name | Notes |
|-----|------|-------|
| | | Future lowbie quest vendor (tokens from invasions) |
| | | "Loremaster Zahir" - quest turn-in NPC |

### WorldEvents (Custom Mobs)
| WCID | Name | Notes |
|-----|------|-------|
| | | Hollow minion (heart loot or resurrect) |
| | | Fake olthoi (skin bandits, olthoi mask) |

### QOL / LeyLineLedger (Custom Items)
| WCID | Name | Notes |
|-----|------|-------|
| | | Town-network portal gem |
| | | Backpack (burden %) |

### TODO: Candeth Keep Quest Interface
- BankSalvage.WithdrawBags() → Interface with Candeth Keep salvage quest NPCs for quest completion

---

## Notes
- When adding new custom items, add them to this reference file
- WCID format in ACE: `uint` (e.g., `0x0603A096`)