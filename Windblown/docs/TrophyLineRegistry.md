# Trophy Line Registry

Canonical reference for Windblown collector trophy lines — WCIDs, drop configs, visuals, and cross-mod touchpoints.

**Source of truth:** `Windblown/Content/TrophyLines/*.json` and `Windblown/Content/Weenies/*.json`.

## WCID map (2026-05-09 migration)

| Range | Lines |
|-------|--------|
| 850300–850303 | Drudge Charm tiers (Regular→Perfect) |
| 850304–850307 | Rat Tail tiers |
| 850308–850311 | Wasp Wing tiers |
| 850312–850315 | Banderling Scalp tiers |
| 850316–850336 | Mob heads (21 lines, order matches `mob-heads.json`) |

**Retired:** 850271–850273 (drudge), 850280–850282 (rat), 850283–850285 (wasp). Vanilla trophy WCIDs are no longer registered as custom weenies except as `BaseWcid` / `MirrorEmoteFromWcid` sources.

### Tiered lines (four tiers each)

Each line uses **custom `Tiers[0].Wcid`** as the Regular tier and sibling-replacement target. `ReplaceSiblingWcids` includes vanilla bases where loot tables still emit them:

- **Drudge:** `ReplaceSiblingWcids` includes **24835** (vanilla charm). Mirror / clone source **24835**.
- **Rat:** includes **4133** + colored tails. Mirror **4133**.
- **Wasp:** includes **7603** + colored wings. Mirror **7603**.
- **Banderling scalp:** includes **3693**. Mirror **3693**. **IconUnderlay 3353** on all scalp tiers only; other lines use sunstone **100676438**.

### Mob heads (850316–850336)

Each head line: single tier, custom WCID, `ReplaceSiblingWcids` includes the vanilla head WCID(s) (e.g. Ursuin **9097** + **12219**, Olthoi **3680** + **19446**, Burun **28886** + **28887**). Runtime weenies clone from the vanilla head with `MirrorEmoteFromWcid` = that vanilla WCID. **Sunstone** underlay **100676438**; `Value` / `EncumbranceVal` = **1** on custom definitions.

## Adding a new trophy line

1. Add `Windblown/Content/TrophyLines/<name>.json` and `Windblown/Content/Weenies/<name>.json` if needed.
2. Add new WCIDs to **AutoLoot** `WindblownCollectorTrophyPass1WeenieClassIds` (`Settings.cs` + `Settings.json`).
3. Add WCIDs to **QOL** `NpcStackTurnIn.StackableQuestWcids` (`Settings.json`) and **`QOL/StackableWcids.json`** when applicable.
4. Add SQL under `Windblown/Content/SQL/Items/` for new WCIDs if the world DB must have rows without JSON.
5. Update this registry.

## Cross-mod touchpoints

| Mod | File | What |
|-----|------|------|
| Windblown | `Content/TrophyLines/*.json` | Drop + sibling replacement |
| Windblown | `Content/Weenies/*.json` | Weenie overrides |
| AutoLoot | `Settings.cs` / `Settings.json` | `WindblownCollectorTrophyPass1WeenieClassIds` (trophy toggle), `OtherPhysicalPass1WeenieClassIds` (always) |
| AutoLoot | `Autoloot.cs` | Pass 1 merge into pack |
| QOL | `Settings.json`, `StackableWcids.json` | Bulk stack turn-in |
| BetterLootControl | `LootRoller.cs` | Drudge charm tier stack cap guard (`IsDrudgeCharmTierWcid`) |
| Windblown | `TrophyTurnInPatches.cs` | XP + bank credit on turn-in |
| Windblown | `TrophyDropPatches.cs` | Drop rolls + sibling replacement |
