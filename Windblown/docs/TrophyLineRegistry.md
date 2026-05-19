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
| 850339 | Olthoi Ichor (single-tier) |
| 850340–850343 | Olthoi Claw tiers |
| 850344–850347 | Large Lugian Sinew tiers |
| 850348–850351 | Swamp Stone tiers |
| 850352–850354 | Mnemosyne tiers (Regular→Pristine) — Tiny/Small/Large |
| 850355–850357 | Unlocked Mnemosyne tiers (Regular→Perfect) — Unlocked Tiny/Unlocked Small/Unlocked Large |
| 850358–850361 | Sharp Tusker Slave Tusk tiers |
| 850362–850365 | Tumerok Insignia tiers |
| 850366–850369 | Auroch Horn tiers |
| 850370–850373 | Golem Heart tiers |
| 850374–850377 | Armoredillo Spine tiers |
| 850378–850381 | Mattekar Pelt tiers |
| 850382–850385 | Mattekar Horn tiers |
| 850386–850389 | Mattekar Paw tiers |
| 850390–850393 | Grievver Tibia tiers |
| 850394–850397 | Grievver Acid tiers |

**Retired:** 850271–850273 (drudge), 850280–850282 (rat), 850283–850285 (wasp). Vanilla trophy WCIDs are no longer registered as custom weenies except as `BaseWcid` / `MirrorEmoteFromWcid` sources.

### Tiered lines (four tiers each)

Each line uses **custom `Tiers[0].Wcid`** as the Regular tier and sibling-replacement target. `ReplaceSiblingWcids` includes vanilla bases where loot tables still emit them:

- **Drudge:** `ReplaceSiblingWcids` includes **24835** (vanilla charm). Mirror / clone source **24835**.
- **Rat:** includes **4133** + colored tails. Mirror **4133**.
- **Wasp:** includes **7603** + colored wings. Mirror **7603**.
- **Banderling scalp:** includes **3693**. Mirror **3693**. **IconUnderlay 3353** on all scalp tiers only; other lines use sunstone **100676438**.

### Olthoi Ichor (850339)

**Single tier.** Clones from **10864** (vanilla Olthoi Ichor) with overrides to make it stackable (`MaxStackSize 999`, `WeenieType` = `Stackable`). `MirrorEmoteFromWcid` = **3680** (Olthoi Head) for collector turn-in. Blue underlay **100676435**.

- `ReplaceSiblingWcids`: **[10864]** — vanilla ichor no longer drops from Olthoi
- `CreatureTypeGate`: **Olthoi**
- Dropped from all Olthoi at **1.5%** chance
- **Vanilla 10864** still sold by **Timewalker Kaleb** (810001) in Town Network for 1 MMD — serves as recipe failsafe for canescent mattekar robe

### Mob heads (850316–850336)

Each head line: single tier, custom WCID, `ReplaceSiblingWcids` includes the vanilla head WCID(s) (e.g. Ursuin **9097** + **12219**, Olthoi **3680** + **19446**, Burun **28886** + **28887**). Runtime weenies clone from the vanilla head with `MirrorEmoteFromWcid` = that vanilla WCID. **Sunstone** underlay **100676438**; `Value` / `EncumbranceVal` = **1** on custom definitions.

### Olthoi Claw (850340-850343)

**4-tier line.** Clones from **3679** (vanilla Olthoi Claw). Blue underlay **100676435** + number overlays 1-4. `CreatureTypeGate`: **Olthoi**. `ReplaceSiblingWcids`: **[3679]**.

### Large Lugian Sinew (850344-850347)

**4-tier line.** Clones from **7043** (vanilla Large Lugian Sinew). Blue underlay **100676435** + number overlays 1-4. `CreatureTypeGate`: **Lugian**. `ReplaceSiblingWcids`: **[7043, 7042]** — removes both vanilla Large and Small Sinews from the loot pool.

### Swamp Stone (850348-850351)

**4-tier line.** Clones from **3694** (vanilla Swamp Stone). Blue underlay **100676435** + number overlays 1-4. `CreatureTypeGate`: **Mosswart**. `ReplaceSiblingWcids`: **[3694]**.

### Mnemosyne (850352-850357)

**6 tiers across 2 lines.** Clones from **9310** (vanilla Large Mnemosyne). Blue underlay **100676435** + number overlays. `CreatureTypeGate`: **Undead**. `ReplaceSiblingWcids`: **[9310, 9311, 9312, 9313, 9314, 9315]** — removes all 6 vanilla Mnemosyne variants from the Undead loot pool. Names kept from vanilla items.

**Line 1 — Regular Mnemosynes (3 tiers):**
- 850352 Regular: Tiny Mnemosyne (replaces 9314, t1)
- 850353 Quality: Small Mnemosyne (replaces 9312, t2)
- 850354 Pristine: Large Mnemosyne (replaces 9310, t3)

**Line 2 — Unlocked Mnemosynes (3 tiers):**
- 850355 Regular: Unlocked Tiny Mnemosyne (replaces 9315, t2)
- 850356 Quality: Unlocked Small Mnemosyne (replaces 9313, t3)
- 850357 Perfect: Unlocked Large Mnemosyne (replaces 9311, t4)

### Sharp Tusker Slave Tusk (850358-850361)

**4-tier line.** Clones from **19478** (vanilla Sharp Tusker Slave Tusk). Blue underlay **100676435** + number overlays 1-4. `CreatureTypeGate`: **Tusker**. `ReplaceSiblingWcids`: **[19478]**.

### Tumerok Insignia (850362-850365)

**4-tier line.** Clones from **3695** (vanilla Gold Tumerok Insignia). Base renamed to "Tumerok Insignia" (droppingy" with standard Quality/Pristine/Perfect suffixes. Blue underlay **100676435** + number overlays 1-4. `CreatureTypeGate`: **Tumerok**. `ReplaceSiblingWcids`: **[3695]**.Tumerok**. `ReplaceSiblingWcids`: **[3695]**.Tumerok**. `ReplaceSiblingWcids`: **[3695]**.

### Auroch Horn (850366-850369)

**4-tier line.** Clones from **266** (vanilla Auroch Horn). Blue underlay **100676435** + number overlays 1-4. `CreatureTypeGate`: **Auroch**. `ReplaceSiblingWcids`: **[266]**.

### Golem Heart (850370-850373)

**4-tier line.** Clones from **23202** (vanilla Platinum Golem Heart). Blue underlay **100676435** + number overlays 1-4. `CreatureTypeGate`: **Golem**. `ReplaceSiblingWcids`: **[23202]**.

### Armoredillo Spine (850374-850377)

**4-tier line.** Clones from **3689** (vanilla Grey Spine). Blue underlay **100676435** + number overlays 1-4. `CreatureTypeGate`: **Armoredillo**. `ReplaceSiblingWcids`: **[3689]**.

### Mattekar Pelt (850378-850381)

**4-tier line.** Clones from **10868** (vanilla Canescent Mattekar Pelt). Blue** Blue underlay **100676435** + number overlays 1-4. `CreatureTypeGate`: **Mattekar**. `ReplaceSiblingWcids`: **[10868]**.

### Mattekar Horn (850382-850385)

**4-tier line.** Clones from **Clones from **7044** (vanilla Great Mattekar Horn). Blue underlay **100676435**Stac** + number overlays 1-4. `CreatureTypeGate`: **Mattekar**. `ReplaceSiblingWcids`: **[7044]**.

### Mattekar Paw (850386-850389)

**4-tier line.** Clones from **9412** (vanilla Dire Mattekar Paw). Blue underlay **100676435** + number overlays 1-4. `CreatureTypeGate`: **Mattekar**. `ReplaceSiblingWcids`: **[9412]**.

### Grievver Tibia (850390-850393)

**4-tier line.** Clones from **19476** (vanilla Grievver Tibia). Blue underlay **100676435** + number overlays 1-4.4. . `CreatureTypeGate`: **Grievver**. `ReplaceSiblingWcidsGrievver**. `ReplaceSiblingWcidsGrievver**. `ReplaceSiblingWcids`: **[19476]**.

### Grievver Acid (850394-850397)

**4-tier line.** Clones from **9098** (vanilla Vial of Grievver Acid). Blue underlay **100676435** + number overlays 1-4. `CreatureTypeGate`: **Grievver**. `ReplaceSiblingWcids`: **[9098]**.

## Adding a new trophy line

1. Add `Windblown/Content/TrophyLines/<name>.json` and `Windblown/Content/Weenies/<name>.json` if needed.
2. Add new WCIDs to **AutoLoot** `WindblownCollectorTrophyPass1WeenieClassIds` (`Settings.cs` + `Settings.json`).
3. Add WCIDs to **QOL** `NpcStackTurnIn.StackableQuestWcids` (`Settings.json`) and **`QOL/StackableWcids.json`** when applicable.
4. Add SQL under `Windblown/Content/SQL/Items/` for new WCIDs if the world DB must have rows without JSON.
5. Update this registry.

### Sibling-replacement turn-in (TrophyLineRegistry.TryGetTier)

`TryGetTier` now falls back to the `_siblingReplacement` dictionary when a WCID isn't found in `_byTierWcid`. This means old vanilla head WCIDs (listed in `ReplaceSiblingWcids` — e.g. 9097 Ursuin Head → 850320, 12225 Zombie Head → 850323) are intercepted by the turn-in patches and grant equivalent tier XP + bank credit when given to Collector Vaetha.

**Applied 2026-05-14:** Fixes server crash (`ArgumentOutOfRangeException` in `EmoteManager.Enqueue`) caused by orphan Give emote headers on Vaetha that had no corresponding `emote_action` rows. The headers were removed from `10_CollectorVaetha_810003.sql`; all handling is now code-only.

### Vanilla item removal (ItemsRemovalPatches.cs)

`WorldObjectFactory.CreateNewWorldObject(uint)` Harmony prefix. Blocked WCIDs (31352, 31354, 31355) return null — never created. See `Windblown/ItemsRemovalPatches.cs`.

### Timewalker Kaleb (810001)

Town Network vendor selling original replaced trophy items for **1 MMD** (AltCurrency = 20630). Located near Jochi in cell `0x00070155` at `[80.5, -60.0, 0.005]`. Source SQL: `Windblown/Content/SQL/Vendors/01_Radi_810000.sql`.

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
| Windblown | `ItemsRemovalPatches.cs` | Block WCIDs 31352/31354/31355 at creation |
| Windblown | `Content/SQL/Vendors/01_Radi_810000.sql` | Timewalker Kaleb (810001) vendor def |
| Windblown | `Content/SQL/Vendors/03_TownNetworkSpawns.sql` | Kaleb spawn in Town Network |
