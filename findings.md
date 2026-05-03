# Findings — AutoLoot + Skeleton Key Overhaul

## AutoLoot Current Behavior
- `OnPostGenerateTreasure` → `ProcessContainerLoot(player, corpse)` — full logic at creation
- `OnContainerOpened` → `ProcessContainerLoot(player, corpse)` — **redundant** open-phase for corpses
- `PreContainerClose` → `ProcessContainerLootImmediate` (chests only) + `ProcessContainerLootClose` (chests + corpses)
- `ProcessContainerLoot` and `ProcessContainerLootClose` are **different** — close has weaker logic

## Key Weenies (from AGENTS.md and Settings.cs)
| WCID | Key | Bank Property |
|------|-----|---------------|
| 6876 | Sturdy Iron Key | 40250 |
| 24477 | Sturdy Steel Key | 40500 |
| 38456 | Mana Forge Key | 40750 |
| 48746 | Legendary Key | 41000 |

## Key Banking Current State
- `IsKeysUnlocked(player)` checks `KeyUnlocks >= KeysUnlockThreshold` (default 10)
- `ProcessContainerLoot` Pass 5 banks keys only if unlocked
- `PreConsumeUnlockerForKeys` also checks `IsKeysUnlocked`
- User wants unconditional for anyone with currency auto-loot enabled

## House Chest Risk
- `PreContainerClose` calls `ProcessContainerLootImmediate` for ALL chests, no `HouseOwner` check
- This would bank cash/keys from player house storage on close

## BLC
- Need to locate drop tables for keys

