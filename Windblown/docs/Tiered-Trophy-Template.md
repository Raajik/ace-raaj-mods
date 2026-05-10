# Tiered Trophy Item — Standard Setup Template

## Overview

Every tiered trophy needs **3 files** + maybe **1 SQL**:

| # | File | What it does |
|---|------|-------------|
| 1 | `Content/Weenies/<name>.json` | Defines the custom item appearance (icon underlay, stack size, name) |
| 2 | `Content/TrophyLines/<name>.json` | Defines drop rates, creature gate, turn-in rewards, sibling replacement |
| 3 | `Content/SQL/Items/<name>.sql` | Minimal DB rows so ACE can load the weenie (just `weenie` table + type) |
| 4 | (optional) C# Harmony patch | Only if you need special redirects like the letters |

---

## Step 1 — Pick WCIDs

Current allocation (850300–850336 used): **start at 850337** for new items.

```
850300-850303  Drudge Charms
850304-850307  Rat Tails
850308-850311  Wasp Wings
850312-850315  Banderling Scalps
850316-850336  Mob Heads (single-tier, no numbers)
850337-850338  Letters (single-tier, no numbers)
850339+        AVAILABLE — next new tiered line
```

Each 4-tier line uses 4 WCIDs: `N` (Regular), `N+1` (Quality), `N+2` (Pristine), `N+3` (Perfect).

---

## Step 2 — Create `Content/Weenies/<name>.json`

Copy this and fill in the blanks:

```json
{
  "Description": "<<DisplayName>> tier line — custom WCIDs <<N>>-<<N+3>>. Clones from <<BaseWcid>>; MirrorEmoteFromWcid <<BaseWcid>>. Blue IconUnderlay 100676435 + black number overlays 1-4.",
  "Weenies": [
    {
      "ClassId": <<N>>,
      "ClassName": "<<name>>_regular_wb",
      "WeenieType": "Stackable",
      "BaseWcid": <<BaseWcid>>,
      "MirrorEmoteFromWcid": <<BaseWcid>>,
      "Notes": "Regular tier (custom). Frost (128) glow. Overlay '1' top-right black (100690976).",
      "PropertiesString": {
        "Name": "<<Display Name>>",
        "PluralName": "<<Display Name>>s",
        "LongDesc": "Collectors will reward a great deal of experience and pyreals for turning in these <<shortname>>."
      },
      "PropertiesInt": {
        "MaxStackSize": 999,
        "StackSize": 1,
        "Value": 1,
        "EncumbranceVal": 1,
        "UiEffects": 128
      },
      "PropertiesDID": {
        "IconUnderlay": 100676435,
        "IconOverlay": 100690976
      },
      "Delete": {
        "PropertiesString": ["Use", "ShortDesc"],
        "PropertiesInt": ["ImbuedEffect"]
      }
    },
    {
      "ClassId": <<N+1>>,
      "ClassName": "<<name>>_quality_wb",
      "WeenieType": "Stackable",
      "BaseWcid": <<BaseWcid>>,
      "MirrorEmoteFromWcid": <<BaseWcid>>,
      "Notes": "Quality tier. Acid (256) glow. Overlay '2' top-right black (100690977).",
      "PropertiesString": {
        "Name": "<<Display Name>> (Quality)",
        "PluralName": "<<Display Name>>s (Quality)",
        "LongDesc": "Collectors will reward a great deal of experience and pyreals for turning in these <<shortname>>."
      },
      "PropertiesInt": {
        "MaxStackSize": 999,
        "StackSize": 1,
        "Value": 1,
        "EncumbranceVal": 1,
        "UiEffects": 256
      },
      "PropertiesDID": {
        "IconUnderlay": 100676435,
        "IconOverlay": 100690977
      },
      "Delete": {
        "PropertiesString": ["Use", "ShortDesc"],
        "PropertiesInt": ["ImbuedEffect"]
      }
    },
    {
      "ClassId": <<N+2>>,
      "ClassName": "<<name>>_pristine_wb",
      "WeenieType": "Stackable",
      "BaseWcid": <<BaseWcid>>,
      "MirrorEmoteFromWcid": <<BaseWcid>>,
      "Notes": "Pristine tier. Magical (1) glow. Overlay '3' top-right black (100690978).",
      "PropertiesString": {
        "Name": "<<Display Name>> (Pristine)",
        "PluralName": "<<Display Name>>s (Pristine)",
        "LongDesc": "Collectors will reward a great deal of experience and pyreals for turning in these <<shortname>>."
      },
      "PropertiesInt": {
        "MaxStackSize": 999,
        "StackSize": 1,
        "Value": 1,
        "EncumbranceVal": 1,
        "UiEffects": 1
      },
      "PropertiesDID": {
        "IconUnderlay": 100676435,
        "IconOverlay": 100690978
      },
      "Delete": {
        "PropertiesString": ["Use", "ShortDesc"],
        "PropertiesInt": ["ImbuedEffect"]
      }
    },
    {
      "ClassId": <<N+3>>,
      "ClassName": "<<name>>_perfect_wb",
      "WeenieType": "Stackable",
      "BaseWcid": <<BaseWcid>>,
      "MirrorEmoteFromWcid": <<BaseWcid>>,
      "Notes": "Perfect tier. Lightning (64) glow. Overlay '4' top-right black (100690979).",
      "PropertiesString": {
        "Name": "<<Display Name>> (Perfect)",
        "PluralName": "<<Display Name>>s (Perfect)",
        "LongDesc": "Collectors will reward a great deal of experience and pyreals for turning in these <<shortname>>."
      },
      "PropertiesInt": {
        "MaxStackSize": 999,
        "StackSize": 1,
        "Value": 1,
        "EncumbranceVal": 1,
        "UiEffects": 64
      },
      "PropertiesDID": {
        "IconUnderlay": 100676435,
        "IconOverlay": 100690979
      },
      "Delete": {
        "PropertiesString": ["Use", "ShortDesc"],
        "PropertiesInt": ["ImbuedEffect"]
      }
    }
  ]
}
```

### Template variables

| Variable | Example (banderling scalp) | Meaning |
|----------|---------------------------|---------|
| `<<Display Name>>` | Banderling Scalp | In-game name |
| `<<name>>` | banderlingscalp | Snake_case class name (alphanumeric + underscore) |
| `<<shortname>>` | scalps | Lowercase plural for the LongDesc sentence |
| `<<N>>` | 850312 | First WCID of the 4 |
| `<<BaseWcid>>` | 3693 | Vanilla WCID that these clone from |

### IconUnderlay / IconOverlay cheat sheet

```json
"IconUnderlay": 100676435     // ice blue gem background  (use for ALL tiers)
"IconOverlay": 100690976      // black '1' top-right     (Regular)
"IconOverlay": 100690977      // black '2' top-right     (Quality)
"IconOverlay": 100690978      // black '3' top-right     (Pristine)
"IconOverlay": 100690979      // black '4' top-right     (Perfect)
```

---

## Step 3 — Create `Content/TrophyLines/<name>.json`

```json
{
  "Description": "<<Display Name>> tier line — four custom WCIDs (<<N>>-<<N+3>>). Uses vanilla WCID <<BaseWcid>> as clone/mirror source.",
  "Lines": [
    {
      "Name": "<<Name>>",
      "Enabled": true,
      "CreatureTypeGate": "<<CreatureType>>",
      "TurnInDisplayName": "<<Display Name>>",
      "Tiers": [
        { "TierName": "Regular",  "Wcid": <<N>>,   "DropChance": 0.025,  "XpFraction": 0.05,  "BankCredit": 25000 },
        { "TierName": "Quality",  "Wcid": <<N+1>>, "DropChance": 0.01,   "XpFraction": 0.10,  "BankCredit": 50000 },
        { "TierName": "Pristine", "Wcid": <<N+2>>, "DropChance": 0.004,  "XpFraction": 0.15,  "BankCredit": 100000 },
        { "TierName": "Perfect",  "Wcid": <<N+3>>, "DropChance": 0.0015, "XpFraction": 0.30,  "BankCredit": 250000 }
      ],
      "ReplaceSiblingWcids": [<<BaseWcid>>],
      "BankCashProperty": 39999,
      "EnableBulkTurnIn": true
    }
  ]
}
```

| Variable | Example | Notes |
|----------|---------|-------|
| `<<Name>>` | `BanderlingScalp` | CamelCase for the line name |
| `<<CreatureType>>` | `Banderling` | Exact value from `CreatureType` enum — must match! |
| `<<BaseWcid>>` | `3693` | Vanilla WCID to replace in drops |

### Common CreatureType values

Use the ACE `CreatureType` enum. Common ones:
`Banderling`, `Drudge`, `Rat`, `PhyntosWasp`, `Mosswart`, `Tusker`,
`Skeleton`, `Zombie`, `Olthoi`, `Shadow`, `Lich`, `Golem`,
`Undead`, `Sclavus`, `Lugian`, `Virindi`, `Tumerok`, etc.

### Overlay for single-tier items (mob heads, letters)

If the item has no tiers (just one variant), drop the `IconOverlay` field entirely:

```json
"PropertiesDID": {
    "IconUnderlay": 100676435
}
```

For single-tier trophy lines:

```json
"Tiers": [
    { "TierName": "Regular", "Wcid": <<Wcid>>, "DropChance": 0.015, "XpFraction": 0.05, "BankCredit": 100000 }
]
```

---

## Step 4 — Create `Content/SQL/Items/<name>.sql`

Minimal insert — just the `weenie` type row so the DB knows about it:

```sql
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT <<N>>, '<<name>>_regular_wb', type, NOW() FROM weenie WHERE class_Id = <<BaseWcid>> LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT <<N+1>>, '<<name>>_quality_wb', type, NOW() FROM weenie WHERE class_Id = <<BaseWcid>> LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT <<N+2>>, '<<name>>_pristine_wb', type, NOW() FROM weenie WHERE class_Id = <<BaseWcid>> LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT <<N+3>>, '<<name>>_perfect_wb', type, NOW() FROM weenie WHERE class_Id = <<BaseWcid>> LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
```

Template: see `05_WindblownCollectorTrophies_850300-850336.sql` for existing examples.

---

## Step 5 — Deploy

```bash
dotnet build Windblown/Windblown.csproj
bash scripts/deploy-void-test.sh
mysql -h 127.0.0.1 -u jeremy --password=andersine11 void-test_world < Content/SQL/Items/<name>.sql
# Restart void-test server
```

---

## Existing examples reference

| Trophy line | Weenie JSON | Trophy JSON | SQL |
|------------|------------|-------------|-----|
| Banderling Scalp | `Weenies/banderling-scalps.json` | `TrophyLines/banderling-scalp.json` | `Items/05_...850300-850336.sql` (bulk) |
| Mob heads | `Weenies/mob-heads.json` | `TrophyLines/mob-heads.json` | same bulk SQL |