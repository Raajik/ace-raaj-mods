# Active Work & Backlog

## Progress (Recent)

**2026-05-05:** ✅ BetterLootControl vendor overhaul complete — Jewelers (20) + Archmages (31) with premium enchantments, weapon imbues work on jewelry. See `COMPLETED.md` § 2026-05-05.

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