# Custom Trophy + NPC Deployment Standard

> **Last updated**: 2026-05-10
> **Scope**: Deploying a custom trophy (stackable weenie + trophy line config + Harmony patches) with a failsafe NPC vendor and any item removal patches.

## Deploy Procedure (clean fresh build)

Every deploy must be a **full clean deploy** — wipe and recreate the Mods folder, then apply SQL:

1. **Kill** the ACE server process
2. **Build** all mods: `dotnet build ModName/ModName.csproj`
3. **Wipe** `A:\void-test\Mods\*` entirely
4. **Copy** all build output (DLLs + Content + Meta.json + Settings.json)
5. **Apply SQL** to `void-test_world` — ALL new/changed SQL files in `Content/SQL/`
   ```powershell
   Get-Content "A:\path\to\script.sql" | & 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe' -u jeremy -pandersine11 void-test_world
   ```
6. **Restart** ACE server (watchdog or manual)

> **SQL doesn't auto-deploy.** Every SQL change must be manually executed against the target MySQL database (void-test_world → ace_world → wb_ace_world). Back up first with `mysqldump`.

## Mandatory SOP for ALL new trophy items

| Step | Action | File/Location |
|------|--------|---------------|
| 1 | Add weenie JSON | `Windblown/Content/Weenies/<name>.json` |
| 2 | Add TrophyLines config | `Windblown/Content/TrophyLines/<name>.json` |
| 3 | Add SQL weenie registration | `Windblown/Content/SQL/Items/<number>.sql` |
| 4 | **Add vanilla base WCIDs to Kaleb** | `Windblown/Content/SQL/VanillaTweaks/11_KalebVanillaHeadsAndIchor.sql` |
| 5 | **Add Give emotes to Vaetha** | MySQL: `INSERT INTO weenie_properties_emote (object_Id, category, probability, weenie_Class_Id) VALUES (810003, 1, 1, <new_wcid>);` |
| 6 | **Add to AutoLoot** | `AutoLoot/Settings.json` → `WindblownCollectorTrophyPass1WeenieClassIds` or `OtherPhysicalPass1WeenieClassIds` |
| 7 | Remove pickup timers (if replacing quest items) | `UPDATE quest SET min_Delta = 0 WHERE name IN ('...');` |
| 8 | Remove vanilla create_list entries from creatures | `DELETE FROM weenie_properties_create_list WHERE weenie_Class_Id IN (...);` |
| 9 | Backup | `mysqldump` scoped into `sql-backups/YYYY-MM-DD/` |

### Why this is mandatory

- **Kaleb**: Players must be able to buy vanilla base items (for recipes, collectors, nostalgia). All replaced vanilla WCIDs go on Kaleb with `destination_Type=4`.
- **Vaetha Give emotes**: Vaetha needs a direct Give emote entry for EVERY custom trophy WCID so the `PreGiveObjectToNPC_TurnInReward` prefix fires. Without it, the player can't hand the item to her.
- **AutoLoot**: Trophies should autoloot to pack when `/autoloot trophies` is enabled. Collector trophies go in `WindblownCollectorTrophyPass1WeenieClassIds`, physical quest items in `OtherPhysicalPass1WeenieClassIds`.
- **Pickup timers**: Vanilla quest items have cooldowns. Set `min_Delta=0` so they can always be picked up. The turn-in cooldown (10h) is handled by the quest reward emote separately.

Minimal required fields:

```json
{
  "Weenies": [
    {
      "ClassId": 8503XX,
      "ClassName": "olthoiichor_custom_wb",
      "WeenieType": "Stackable",
      "BaseWcid": 10864,
      "MirrorEmoteFromWcid": 3680,
      "Notes": "...",
      "PropertiesString": {
        "Name": "...",
        "PluralName": "...",
        "ShortDesc": "..."
      },
      "PropertiesInt": {
        "MaxStackSize": 999,
        "Value": 1,
        "EncumbranceVal": 15,
        "UiEffects": 1
      },
      "PropertiesDID": {
        "IconUnderlay": 100676435
      },
      "Delete": {
        "PropertiesInt": ["ImbuedEffect"]
      }
    }
  ]
}
```

**Rules**:
- `WeenieType` must be `Stackable` (value `51`).
- `BaseWcid` = the vanilla WCID being replaced.
- `MirrorEmoteFromWcid` = the collector NPC's turn-in emote source (e.g. 3680 for Olthoi Head).
- `IconUnderlay` = `100676435` for blue (collector trophy) or `100676438` for sunstone (mob head).
- Always `Delete.PropertiesInt` = `["ImbuedEffect"]` to strip unwanted vanilla properties.

## Step 2: Create the trophy line config (JSON)

**File**: `Windblown/Content/TrophyLines/<name>.json`

```json
{
  "Name": "OlthoiIchor",
  "Enabled": true,
  "CreatureTypeGate": "Olthoi",
  "TurnInDisplayName": "Olthoi Ichor",
  "Tiers": [
    {
      "TierName": "Regular",
      "Wcid": 8503XX,
      "DropChance": 0.015,
      "XpFraction": 0.05,
      "BankCredit": 100000
    }
  ],
  "ReplaceSiblingWcids": [10864],
  "BankCashProperty": 39999,
  "EnableBulkTurnIn": true
}
```

**Rules**:
- Single-tier trophies (like mob heads or ichor) use one tier with a flat `DropChance`.
- `ReplaceSiblingWcids` tells the runtime drop system to replace the vanilla WCID with the custom one.
- `CreatureTypeGate` restricts drops to specific creature families.
- `EnableBulkTurnIn` enables QOL stack turn-in.

## Step 3: SQL – Weenie registration + recipe redirect

**File**: `Windblown/Content/SQL/Items/<sequence>_<name>.sql`

```sql
-- Register the weenie class (copies type from vanilla)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 8503XX, '<class_name>', type, NOW() FROM weenie WHERE class_Id = <vanilla_wcid> LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

-- Recipe redirect (only needed if recipe uses the vanilla WCID)
INSERT INTO cook_book (recipe_Id, source_W_C_I_D, target_W_C_I_D, last_Modified)
SELECT <recipe_id>, 8503XX, <target_wcid>, NOW()
WHERE NOT EXISTS (SELECT 1 FROM cook_book WHERE recipe_Id = <recipe_id> AND source_W_C_I_D = 8503XX AND target_W_C_I_D = <target_wcid>);
```

**Important**: The JSON weenie system loads properties at runtime. The SQL only registers the row — the JSON `WeenieType`, `PropertiesInt`, etc. are applied via `WeenieLoader` on mod startup.

## Step 4: SQL – Vendor weenie definition

**File**: `Windblown/Content/SQL/Vendors/01_Radi_810000.sql`

This file contains all vendor NPC definitions for Town Network / Radi area. To add a vendor:

1. Pick an unused WCID in the project range (810000–8100XX).
2. Add vendor weenie SQL with these critical properties:

### Key vendor properties

| PropertyInt | Type | Value | Meaning |
|-------------|------|-------|---------|
| 1 | ItemType | 16 | Vendor |
| 74 | MerchandiseItemTypes | 2048 | Wieldable items (weapons/armor); 262144 for treasure items |
| 75 | MerchandiseMinValue | 0 | Minimum value filter |
| 76 | MerchandiseMaxValue | 100000 | Max value filter — items above this price don't appear |
| 93 | 2098200 | RadioBlip + AllowGive + Locked + HasPhysicsBSP + Ethereal + ReportCollisions |
| 133 | 4 | Vendor | |

### MMD pricing — EXACTLY 1 MMD per item

For an MMD (AlternateCurrency) vendor that sells items for exactly **1 MMD each**:

| Property | Value | Why |
|----------|-------|-----|
| `PropertyDataId.AlternateCurrency` (DID 57) | **20630** | Makes the vendor accept MMD trade notes |
| `SellPrice` (float 38) | **0.0** | Forces ACE's sell formula to return exactly 1 |

**How ACE's price formula works for vendor items (player buys from vendor):**

```csharp
cost = Math.Max(1, ceil(sellRate × itemValue − 0.1))
```

With `sellRate = 0` → `ceil(0 × value − 0.1) = 0` → `Math.Max(1, 0)` = **1** — for every item, regardless of its base `Value` property. No per-item math, no surprises.

**Without SellPrice = 0**, items with different `Value` properties cost different amounts of MMD:
- Item with `Value = 0` → costs 1 MMD (accidentally correct via `Math.Max(1, ...)`)
- Item with `Value = 2` → costs **2 MMD** (wrong!)
- Item with `Value = NULL` → costs 1 MMD

**Always set `SellPrice = 0`** on any vendor that should charge a flat rate per item. This is rest-safe — no Harmony patch needed.

To apply to an existing vendor in SQL:
```sql
INSERT INTO weenie_properties_float (object_Id, type, value) VALUES (810001, 38, 0.0)
ON DUPLICATE KEY UPDATE value = VALUES(value);
```

**Reference**: `ACE.Server.WorldObjects.Vendor.GetSellCost()`.

## Step 5: SQL – Town Network spawn placement

**File**: `Windblown/Content/SQL/Vendors/03_TownNetworkSpawns.sql`

```sql
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x7013005X, 81000X, 0x00070155, <x>, <y>, <z>, <w>, 0, 0, <z_angle>, False, NOW());
```

**Rules**:
- All Town Network vendors use cell `0x00070155`.
- GUID range: `0x70130050`–`0x7013005F` for Town Network.
- Jochi's base position: `[78.482, -60.464, 0.005]`.
- Position Kaleb roughly 2 units east: `[80.5, -60.0, 0.005]`.

## Step 6: Harmony patch – block vanilla WCIDs

**File**: `Windblown/ItemsRemovalPatches.cs`

```csharp
private static readonly HashSet<uint> BlockedCreationWcids = new()
{
    31352, // Olthoi Slayer Carapace
    31354, // Olthoi Ripper Spine
    31355, // Olthoi Slasher Carapace
};

[HarmonyPrefix]
[HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateNewWorldObject), new[] { typeof(uint) })]
public static bool PreCreateNewWorldObject_BlockedByWcid(ref uint weenieClassId, ref WorldObject __result)
{
    if (BlockedCreationWcids.Contains(weenieClassId))
    {
        __result = null;
        return false;
    }
    return true;
}
```

**Rules**:
- Only patch the `uint` overload — all other overloads call through to this one (single catch-all point).
- Return `null` + `false` to prevent creation silently.
- Use descriptive namespaced block list.

## Step 7: Config updates

### AutoLoot

Edit `AutoLoot/Settings.json`:
```json
"WindblownCollectorTrophyPass1WeenieClassIds": [ ..., 8503XX ]
```

### QOL bulk turn-in

Edit `QOL/Settings.json`:
```json
"StackableQuestWcids": [ ..., 8503XX ]
```

If the item replaces a vanilla item that was already in the list (like 10864), keep the vanilla WCID in the list too (for the failsafe NPC who sells it).

## Step 8: Documentation

Update these files in `Windblown/docs/`:

### TrophyLineRegistry.md
- Add a section under the appropriate category (e.g. "Olthoi Ichor (850339)")
- Note the replace/sibling link, creature gate, drop chance
- Add to cross-mod touchpoints table if new files created

### TownNetwork-Positions.md
```markdown
| Timewalker Kaleb (trophy failsafe) | 810001 | `0x00070155` | `[80.500, -60.000, 0.005]` | W=0.707 Z=-0.707 |
```

### Radi.md
Add vendor name, purpose, WCID, and special behavior (AlternateCurrency, items sold).

---

## Deployment order

When deploying to a server for the first time:

```
1. Apply JSON files        → Build Windblown → deploy DLL
2. Apply SQL (items)       → INSERT weenie + cook_book
3. Apply SQL (vendors)     → INSERT vendor weenie definitions
4. Apply SQL (spawns)      → INSERT landblock_instance
5. Restart ACE server      → DLLs load; JSON weenies applied at runtime
```

The JSON weenies are applied at **mod startup** by `WeenieLoader`. If the SQL `weenie` row doesn't exist, the mod logs an error and skips the custom weenie.

---

## Recipe redirects

If a **vanilla recipe** uses the old WCID as a source ingredient, add a parallel recipe row:

```sql
INSERT INTO cook_book (recipe_Id, source_W_C_I_D, target_W_C_I_D, last_Modified)
SELECT <recipe_id>, 8503XX, <target_wcid>, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM cook_book
  WHERE recipe_Id = <recipe_id> AND source_W_C_I_D = 8503XX AND target_W_C_I_D = <target_wcid>
);
```

The **failsafe NPC** (selling the vanilla WCID) covers players who already have the recipe requirements memorized.

---

## Item removal via Harmony

When removing items from all creation paths (loot + gambling + admin spawns):

1. Patch **`WorldObjectFactory.CreateNewWorldObject(uint)`** — the single uint overload is the root of all creation.
2. Return `false` + `__result = null` to block.
3. List blocked WCIDs in a static `HashSet<uint>`.
4. The failsafe NPC selling the blocked items via `create_list` bypasses this check (the NPC creates items through a different code path via `BiotaFactory`).

---

## Testing checklist

- [ ] Custom weenie appears in-game (check icon, name, stack size, underlay)
- [ ] Custom weenie drops from correct creature type at expected rate
- [ ] Vanilla WCID no longer drops (if ReplaceSiblingWcids is set)
- [ ] Blocked WCIDs (removal patch) never appear in loot, gambling, or admin spawns
- [ ] Vendor exists at correct location with correct appearance
- [ ] Vendor sells expected items for 1 MMD each (`SellPrice = 0`, AltCurrency = 20630)
- [ ] Recipe redirect works (custom item + target → correct result)
- [ ] Failsafe NPC sells vanilla WCID for recipe purposes
- [ ] Bulk turn-in works (QOL `StackableQuestWcids`)
- [ ] AutoLoot autopicks custom trophy (if in `WindblownCollectorTrophyPass1`)
