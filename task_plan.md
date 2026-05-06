# Olthoi Pincer Revamp — Task Plan

## Goal
- Remove quest cooldowns on all olthoi pincer quests
- Make pincers rare drops from any olthoi kill (TrophyLines system)
- Keep Behdo Yii's full reward chain (jewelry, kits, gems, notes, titles)
- Allow turning reward items BACK to Behdo for bonus XP (bulk)

## Phases

### Phase 1: DB — Backup + CD Removal + UiEffects ✅
- [ ] Backup quest rows + pincer weenie_properties_int
- [ ] SET min_Delta=0 on all 14 pincer quests
- [ ] Add UiEffects=4096 (Nether/purple glow) to 10 pincer WCIDs

### Phase 2: TrophyLine JSON — olthoi-pincer.json
- [ ] Line 1: OlthoiPincers — 10 tiers varying DropChance, ExcludedNpcWcids=[10842]
- [ ] Line 2: BehdoJewelry — 10 jewelry WCIDs, DropChance=0, XpFraction=0.05
- [ ] Line 3: BehdoHealingKits — 9229+22449, DropChance=0, XpFraction=0.01
- [ ] Line 4: BehdoDispelGems — 9192+9193+51216, DropChance=0, XpFraction=0.01

### Phase 3: Harmony Patch — Behdo reward turn-in
- [ ] PreGiveObjectToNPC prefix handles reward items (jewelry/kits/gems) given to Behdo
- [ ] Bulk drain all stacks, grant XP, send message, return false

### Phase 4: Cross-mod settings
- [ ] AutoLoot UpgradedTrophyWeenieClassIds — all 10 pincer WCIDs
- [ ] AutoLoot NoDuplicateNames — "Pincer" fragment

### Phase 5: Build + Deploy test
- [ ] Build Windblown project
- [ ] Copy to C:\ACE\Mods\Windblown\
- [ ] Apply SQL to ace_world
- [ ] Restart test server, verify

## Pincer Drop Rates (descending difficulty = rarer)

| WCID | Name | DropChance |
|------|------|-----------|
| 10845 | Harvester Pincer | 2.0% |
| 10844 | Gardener Pincer | 2.0% |
| 10847 | Soldier Pincer | 1.5% |
| 10846 | Legionary Pincer | 1.0% |
| 27591 | Worker Pincer | 1.0% |
| 10843 | Eviscerator Pincer | 0.5% |
| 27590 | Warrior Pincer | 0.5% |
| 27589 | Mutilator Pincer | 0.25% |
| 51211 | Hive Eviscerator Pincer | 0.15% |
| 51214 | Hive Warrior Pincer | 0.10% |

## Turn-back-in rewards

| Item Group | XP Fraction | Bulk |
|-----------|------------|------|
| 10 jewelry pieces | 0.05 | No (individual) |
| Treated/Plentiful Healing Kits | 0.01 | Yes |
| Dispel Gems (all 3) | 0.01 | Yes |
