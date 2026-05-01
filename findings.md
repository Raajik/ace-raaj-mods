# Findings — Quest Salvage Auto-Deposit Research

## Known References
- **21039** — Salvaged Black Garnet (regular 100-unit bag)
- **21040** — Salvaged Black Opal (regular 100-unit bag)

## ACE Source Lookup (`.references/` — AGENTS.md §8.1)
From `ACE.Entity/Enum/WeenieClassName.cs`:
```
W_MATERIALAQUAMARINE100_CLASS = 29571
W_MATERIALBLACKGARNET100_CLASS = 29572
W_MATERIALBLACKOPAL100_CLASS = 29573
W_MATERIALEMERALD100_CLASS = 29574
W_MATERIALFIREOPAL100_CLASS = 29575
W_MATERIALGRANITE100_CLASS = 29576
W_MATERIALIMPERIALTOPAZ100_CLASS = 29577
W_MATERIALJET100_CLASS = 29578
W_MATERIALMAHOGANY100_CLASS = 29579
W_MATERIALREDGARNET100_CLASS = 29580
W_MATERIALSTEEL100_CLASS = 29581
W_MATERIALSUNSTONE100_CLASS = 29582
W_MATERIALWHITESAPPHIRE100_CLASS = 30260
```

## DB Property Profile ( Quest Bags )
All 29571-29582 and 30260 share:
- `Value` (19) = **10**
- `StackSize` (13) = **100**
- `StackUnitBurden` (15) = **10**
- `Workmanship` (105) = **100** → 10.00
- `Bonded` (131) = **13** (Destroy)
- `IconOverlay` (5) = **100** — unique bag icon

## Quest → Regular Salvage Mapping
| Quest Bag WCID | Quest Bag Name | Regular Salvage WCID | Material |
|----------------|---------------|---------------------|----------|
| 29571 | Salvaged Aquamarine | 21037 | Aquamarine |
| 29572 | Salvaged Black Garnet | 21039 | Black Garnet |
| 29573 | Salvaged Black Opal | 21040 | Black Opal |
| 29574 | Salvaged Emerald | 21048 | Emerald |
| 29575 | Salvaged Fire Opal | 21049 | Fire Opal |
| 29576 | Salvaged Granite | 20985 | Granite |
| 29577 | Salvaged Imperial Topaz | 21054 | Imperial Topaz |
| 29578 | Salvaged Jet | 21056 | Jet |
| 29579 | Salvaged Mahogany | 20988 | Mahogany |
| 29580 | Salvaged Red Garnet | 21069 | Red Garnet |
| 29581 | Salvaged Steel | 20993 | Steel |
| 29582 | Salvaged Sunstone | 21079 | Sunstone |
| 30260 | Salvaged White Sapphire | 21086 | White Sapphire |

## Existing LLL Pattern
`PathwardenAutoBank.cs` already intercepts Pathwarden NPC rewards (WCIDs 33620 Granite bag, 33621 Steel bag) and converts them to material bank units using `DepositRules` lookup + `FirstMaterialBankPropertyId` fallback.

`BankSalvage.cs` has `TryInstantDepositFromRecipeCreate` for recipe output salvage.

## Integration Point Needed
Quest salvage bags are acquired via:
1. **NPC emote rewards** (Clutch of Kings NPCs) — `Player.GiveFromEmote`
2. **Direct inventory add** (quest completion scripts)
3. **Loot from corpses** (rare, but possible)

The user wants these auto-deposited to the LLL material bank **under their default (current) WCID**.

## Questions for User
1. Should these be intercepted at `Player.GiveFromEmote` (NPC reward) only, or also on any inventory add (to catch quest script injection)?
2. The bags have `Bonded = 13` (Destroy) but `Workmanship = 100` (10.00). Should they deposit as **100 units** (1 bag = 1 full bag) or do you want a different unit count?
3. Pathwarden bags use a hardcoded `HashSet<uint>` for NPC WCIDs. For CoK, should we detect by **quest bag WCID** (29571-29582, 30260) regardless of source, or only when given by specific NPCs?
4. Should this be a new `EnableCoKSalvageAutoBank` toggle, or piggyback on `EnablePathwardenAutoBank` / a generic salvage auto-deposit setting?
5. You said "link them up for use in LLL (to auto-deposit these to the bank under their default [current] WCID based on material type)" — does "default [current] WCID" mean the **quest bag WCID** (e.g. 29571) or the **regular salvage WCID** (e.g. 21037)?

## Reference
- AGENTS.md §8.1 — "Always check `.references/` ACE source before guessing"
- LLL `PathwardenAutoBank.cs` — existing intercept pattern

## Known Limitations
- **Container.TryAddToInventory postfix FAILED** — attempting to Harmony-patch `Container.TryAddToInventory(WorldObject, out Container, int, bool, bool)` causes a "Patching exception" that kills the ENTIRE mod on startup. This means non-emote acquisition paths (loot drops, script direct-inventory injection) are NOT auto-deposited.
- **Workaround:** Quest salvage bags in AC are acquired almost exclusively via NPC emotes (Clutch of Kings, Pathwarden), which are intercepted by `EmoteBankPatches.PrefixGiveFromEmote`. If non-emote sources become important, explore `Player.HandleActionPutItemInContainer` or periodic inventory scanning instead.

