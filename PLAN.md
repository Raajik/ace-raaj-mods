# Active Work & Backlog

## Progress (Recent)

### Shipped 2026-05-05
- ✅ Loremaster quest completion XP message fix (accurate amount, condensed to single line)
- ✅ Artificer wisp scaling & spell fixes (consistent levels, correct Imperil spells)
- ✅ Death Knight Nether spell fixes (Streak/Arc spell IDs)
- ✅ NPC spawn safety margins (+1.0 unit vertical clearance)
- ✅ Auto-salvage imbue bonus fix (all three paths)
- ✅ Overtinked custom imbues in monster loot (25% chance)
- ✅ AutoLoot lockpick auto-banking from corpses (Pass 6)
- ✅ AutoLoot Currency profile (skeleton keys, Coalesced Mana)
- ✅ GlobalKeyDrops null crash fix
- ✅ BetterLootControl vendor overhaul complete — 340+ vendors, 6 types, multi-imbue, economy integration

See `COMPLETED.md` for detailed write-ups.

## Bugs & Issues

### High Priority

1. **Salvage disappearing in chest** — When loot generates in a chest and player closes without looting, items disappear instead of being auto-salvaged. Need to find where container close happens in ACE and add auto-salvage logic. Should NOT apply to house storage.

2. **Unenchantable on cloaks** — Cloaks show "Properties: Unenchantable" in client. Need to find what property causes this and add ability to globally add/remove it. (中等 - medium priority but user asked to track)

## Backlog (Greenfield)

### Vendor Expansion Ideas
- [ ] Armorer specialization (weapons/armor with combat-focused imbues)
- [ ] Scrivener specialization (scrolls, spell components)
- [ ] Provisioner specialization (food, potions, cooking ingredients)
- [ ] Tinker specialization (salvage bags, tinkering tools, augmentation gems)

### Loot System Ideas
- [ ] Monster loot integration (Spellsiphons/Mana Lattices on corpses)
- [ ] Treasure chest quality tiers
- [ ] Equipment set bonuses

## Implementation Notes
- All vendor loot lives in `BetterLootControl` (single source of truth)
- Jewelers/Archmages: specialized batch generators with higher enhancement rates
- Testing: Deploy to `C:\ACE\` (test, port 9000) first, verify, then request live push