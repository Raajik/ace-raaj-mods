# ACE item icon chrome: `UiEffects` and `ImbuedEffect` (operator chart)

Use this when tuning **inventory / examine icon** look on weenies (glow, rend-style rim, defense tint). Values live in `ace_world.weenie_properties_int` keyed by **`object_Id`** (= weenie `class_Id` for templates).

**Gameplay note:** `ImbuedEffect` is also used for real combat math on weapons/creatures. On **pure trophies/charms** it is usually **cosmetic only** (client chrome) unless server code reads the property for that object.

## Database column map (`weenie_properties_int.type`)

| DB `type` | `PropertyInt` (ACE) | Role |
|-----------|---------------------|------|
| **11** | `MaxStackSize` | Max items per stack (admin spawn often respects this). |
| **12** | `StackSize` | Default stack on template / starting stack for some spawns. |
| **18** | `UiEffects` | Bitmask; extra tint / outline layer on icon. |
| **179** | `ImbuedEffect` | Bitmask; imbue-style icon treatment (often matches `ImbuedEffectType`). |

Strings: **`PluralName`** = `weenie_properties_string` **type 20** (fixes `40 Foo (Bar)s` when plural should be `40 Foos (Bar)`).

## Table A — `UiEffects` (`PropertyInt` 18)

Source: `ACE.Entity.Enum.UiEffects` (flags). **Short name** = informal label for charts.

| Short name | Hex | Decimal (single flag) |
|------------|-----|-------------------------|
| Undef | `0x0000` | 0 |
| Magical | `0x0001` | 1 |
| Poisoned | `0x0002` | 2 |
| BoostHealth | `0x0004` | 4 |
| BoostMana | `0x0008` | 8 |
| BoostStamina | `0x0010` | 16 |
| Fire | `0x0020` | 32 |
| Lightning | `0x0040` | 64 |
| Frost | `0x0080` | 128 |
| Acid | `0x0100` | 256 |
| Bludgeoning | `0x0200` | 512 |
| Slashing | `0x0400` | 1024 |
| Piercing | `0x0800` | 2048 |
| Nether | `0x1000` | 4096 |

**Client vibe (typical):** Magical = blue glow; Poisoned = green; BoostHealth / BoostStamina = yellow; Fire = red; Lightning = purple; Frost = white; Acid = green; Nether = dark purple. Combos add outlines (see `AGENTS.md` §8.6 table in repo).

## Table B — `ImbuedEffectType` (`PropertyInt` 179)

Source: `ACE.Entity.Enum.ImbuedEffectType` (flags). **Short name** + **single-flag decimal** (use `|` in SQL only when combining bits intentionally).

| Short name | Hex | Decimal |
|------------|-----|---------|
| Undef | `0` | 0 |
| Crit | `0x0001` | 1 |
| Cripple | `0x0002` | 2 |
| ArmorRend / sunstone | `0x0004` | 4 |
| SlashRend | `0x0008` | 8 |
| PierceRend | `0x0010` | 16 |
| BludgeonRend | `0x0020` | 32 |
| AcidRend | `0x0040` | 64 |
| ColdRend | `0x0080` | 128 |
| ElectricRend | `0x0100` | 256 |
| FireRend | `0x0200` | 512 |
| MeleeDef | `0x0400` | 1024 |
| MissileDef | `0x0800` | 2048 |
| MagicDef | `0x1000` | 4096 |
| Spellbook | `0x2000` | 8192 |
| NetherRend | `0x4000` | 16384 |

**Windblown drudge charms (24835 + 850271–850273):** per-tier client chrome uses **`ImbuedEffect` (179)** + **`UiEffects` (18)** — **24835** 32 / 128; **850271** 64 / 256; **850272** 128 / 1; **850273** 256 / 64 (same pattern as pre-uniform Windblown tuning; not uniform sunstone **179=4** on all tiers). Examine: types **14**, **15**, **16** share one sentence (*Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.*). Canonical SQL: `DrudgeCharm_TierWeenies_World.sql`; forward patch: `DrudgeCharm_BloodletterPerTierRestore_2026-05-07.sql`. Deprecated stubs: `DrudgeCharm_SunstoneRimAndCopy_2026-05-06.sql`, `DrudgeCharm_BloodletterBase_2026-05-05.sql`, `DrudgeCharm_UiRendIcons_2026-05-05.sql`. **`179` on charms is client icon treatment** — stackables may still not match melee weapon overlay pixel-perfect.

## `weenie.type` vs portal appraisal

If **`weenie.type`** is **`Portal` (7)** instead of **`Stackable` (51)** (or another non-portal type), ACE may build a **Portal** object and appraisal can append **portal rules** (recall, PK restrictions). Tier clones should use **`type = 51`** explicitly.

## Raw link (GitHub, after push to `main`)

`https://raw.githubusercontent.com/Raajik/ace-raaj-mods/main/WindblownContent/docs/ACE-Item-Icon-UiEffects-ImbuedEffect-Reference.md`

## Related repo files

- `WindblownContent/Content/SQL/DrudgeCharm_TierWeenies_World.sql`
- `WindblownContent/Content/SQL/DrudgeCharm_BloodletterPerTierRestore_2026-05-07.sql`
- `WindblownContent/Content/SQL/README-TrophyCharmCloneTemplate.md`
