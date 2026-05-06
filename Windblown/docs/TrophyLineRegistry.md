# Trophy Line Registry

Canonical reference for all Windblown trophy lines — drop configs, WCID tables, visual effects, and cross-mod touchpoints.

> **Single source of truth** for trophy data is the JSON files under `Windblown/Content/TrophyLines/*.json`. This doc is the human-readable expansion.

---

## 1. Drudge Charm Line

**File:** `Windblown/Content/TrophyLines/drudge-charm.json`  
**Weenies:** `Windblown/Content/Weenies/drudge-charms.json`  
**CreatureType:** `Drudge`  
**Turn-in NPC:** Any Collector (NPC that accepts WCID 24835)  
**Bulk turn-in:** Yes  

### Tiers

| Tier | WCID | Drop Chance | XpFraction | Bank Credit | Visual Glow |
|------|------|-------------|-------------|-------------|-------------|
| Regular | 24835 | 2.5% | 0.05 | 25,000 | Frost (white, 128) |
| Quality | 850271 | 1.0% | 0.10 | 50,000 | Acid (green, 256) |
| Pristine | 850272 | 0.4% | 0.15 | 100,000 | Magical (blue, 1) |
| Perfect | 850273 | 0.15% | 0.30 | 250,000 | Lightning (purple, 64) |

**Icon Underlay:** Sunstone orange (`DID 52 = 100676438`) on all tiers  
**Sibling Replacement:** None (Bloodletter Charm variants are handled separately)  

---

## 2. Rat Tail Line

**File:** `Windblown/Content/TrophyLines/rat-tail.json`  
**Weenies:** `Windblown/Content/Weenies/rat-tails.json`  
**CreatureType:** `Rat`  
**Turn-in NPC:** Any Collector (mimics WCID 4133 Give emote)  
**Bulk turn-in:** Yes  

### Tiers

| Tier | WCID | Drop Chance | XpFraction | Bank Credit | Visual Glow |
|------|------|-------------|-------------|-------------|-------------|
| Regular | 4133 | 2.5% | 0.05 | 25,000 | Frost (white, 128) |
| Quality | 850280 | 1.0% | 0.10 | 50,000 | Acid (green, 256) |
| Pristine | 850281 | 0.4% | 0.15 | 100,000 | Magical (blue, 1) |
| Perfect | 850282 | 0.15% | 0.30 | 250,000 | Lightning (purple, 64) |

**Icon Underlay:** Sunstone orange (`DID 52 = 100676438`) on all tiers  
**Sibling Replacement:** Vanilla colored variants (3681-3685, 4134, 8223) are swapped to base WCID 4133 at corpse-drop time  

---

## 3. Wasp Wing Line

**File:** `Windblown/Content/TrophyLines/wasp-wing.json`  
**Weenies:** `Windblown/Content/Weenies/wasp-wings.json`  
**CreatureType:** `PhyntosWasp`  
**Turn-in NPC:** Any Collector (mimics WCID 7603 Give emote)  
**Bulk turn-in:** Yes  

### Tiers

| Tier | WCID | Drop Chance | XpFraction | Bank Credit | Visual Glow |
|------|------|-------------|-------------|-------------|-------------|
| Regular | 7603 | 2.5% | 0.05 | 25,000 | Frost (white, 128) |
| Quality | 850283 | 1.0% | 0.10 | 50,000 | Acid (green, 256) |
| Pristine | 850284 | 0.4% | 0.15 | 100,000 | Magical (blue, 1) |
| Perfect | 850285 | 0.15% | 0.30 | 250,000 | Lightning (purple, 64) |

**Icon Underlay:** Sunstone orange (`DID 52 = 100676438`) on all tiers  
**Sibling Replacement:** Vanilla colored variants (3699-3703, 8426, 13089) are swapped to base WCID 7603 at corpse-drop time  

---

## 4. Mob Heads Line

**File:** `Windblown/Content/TrophyLines/mob-heads.json`  
**Weenies:** `Windblown/Content/Weenies/mob-heads.json`  
**Turn-in NPC:** Any Collector (intercepted by TrophyTurnInPatches)  
**Bulk turn-in:** Yes  
**Excluded NPCs (mask makers):** 8402, 8403, 8404, 12203, 12204, 12205, 34145 — these NPCs still receive heads and give masks instead of XP/bank credit  

### Single Tier (all heads)

| Head | WCID | CreatureType | Drop Chance | XpFraction | Bank Credit | Sibling Replacements |
|------|------|-------------|-------------|-------------|-------------|---------------------|
| Banderling Head | 8144 | Banderling | 1.5% | 0.05 | 25,000 | — |
| Drudge Head | 8145 | Drudge | 1.5% | 0.05 | 25,000 | — |
| Mosswart Head | 8146 | Mosswart | 1.5% | 0.05 | 25,000 | — |
| Tusker Head | 8147 | Tusker | 1.5% | 0.05 | 25,000 | — |
| Ursuin Head | 9097 | Ursuin | 1.5% | 0.05 | 25,000 | 12219 |
| Pumpkin Head | 12215 | Scarecrow | 1.5% | 0.05 | 25,000 | — |
| Sclavus Head | 12216 | Sclavus | 1.5% | 0.05 | 25,000 | — |
| Zombie Head | 12225 | Undead | 1.5% | 0.05 | 25,000 | — |
| Olthoi Head | 3680 | Olthoi | 1.5% | 0.05 | 25,000 | 19446 |
| Skeleton's Skull | 3687 | Skeleton | 1.5% | 0.05 | 25,000 | — |
| Lich Skull | 4121 | Undead | 1.5% | 0.05 | 25,000 | — |
| Eviscerator Head | 22059 | Tumerok | 1.5% | 0.05 | 25,000 | — |
| Mutilator Head | 24846 | HollowMinion | 1.5% | 0.05 | 25,000 | — |
| Knath Head | 25554 | Knathtead | 1.5% | 0.05 | 25,000 | — |
| Moarsman Head | 25561 | Moarsman | 1.5% | 0.05 | 25,000 | — |
| Burun Guruk Head | 28886 | Burun | 1.5% | 0.05 | 25,000 | 28887 |
| Chittick Head | 28888 | Chittick | 1.5% | 0.05 | 25,000 | — |
| Mite Head | 28889 | Mite | 1.5% | 0.05 | 25,000 | — |
| Shadow Head | 34029 | Shadow | 1.5% | 0.05 | 25,000 | — |
| Cow Head | 36359 | Cow | 1.5% | 0.05 | 25,000 | — |
| Mukkir Head | 36362 | Mukkir | 1.5% | 0.05 | 25,000 | — |

**Visual Effects (all heads):**  
- UiEffects: `Magical=1` (blue glow)  
- IconUnderlay: Sunstone orange (`DID 52 = 100676438`)  
- MaxStackSize: 999 (stackable heads only)  

---

## Adding a New Trophy Line

1. **Create TrophyLine JSON** under `Windblown/Content/TrophyLines/<name>.json`
   - Pattern: `DrudgeCharm` or `MobHead` — one file per line family
   - Each file supports multiple `Lines` entries (e.g., 7 mob head types in one file)
2. **Create Weenie JSON** under `Windblown/Content/Weenies/<name>.json` if new WCIDs or visual overrides are needed
   - Self-reference with `BaseWcid: <same>` for overriding vanilla WCIDs
3. **Update AutoLoot** `UpgradedTrophyWeenieClassIds` in both `Settings.cs` and `Settings.json`
4. **Update QOL** `NpcStackTurnIn.StackableQuestWcids` in `Settings.json`
5. **Update this registry** with WCID tables and any exceptions
6. **Update** `WindblownContent/docs/Windblown-Custom-Trophy-Settings.md` for the design doc checklist

## Cross-Mod Touchpoints

| Mod | File | What |
|-----|------|------|
| Windblown | `Content/TrophyLines/*.json` | Drop configs (source of truth) |
| Windblown | `Content/Weenies/*.json` | Weenie property overrides |
| AutoLoot | `Settings.cs` / `Settings.json` | `UpgradedTrophyWeenieClassIds` — autoloot into pack |
| QOL | `Settings.json` | `NpcStackTurnIn.StackableQuestWcids` — bulk turn-in |
| Windblown | `TrophyLines/TrophyTurnInPatches.cs` | Turn-in interception (XP + bank credit) |
| Windblown | `TrophyLines/TrophyDropPatches.cs` | Drop roll on creature death |
