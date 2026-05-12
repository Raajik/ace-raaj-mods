# SpellSiphon

An ACE (Asheron's Call Emulator) server mod for extracting, cleansing, and transferring spells on items.

## Features

### 1. Spellsiphon — Negative Spell Cleanser (WCID 850200)

The blank Spellsiphon is a **single-use debuff remover**. Use it on any spell-bearing item (gems, equipment, jewelry, etc.) to attempt cleansing:

- **Removes harmful spells** from the target item's `PropertiesSpellBook`.
- **Filter logic:** Primary check is `ACE.Server.Entity.Spell.IsHarmful` (non-beneficial spells). Secondary check is `NegativeSpellNameContains` in `Settings.json` for configurable name-based detection.
- **Target survives** on both success and failure — only the Spellsiphon is consumed.
- **Skill-based success rate** — `BaseExtractionSuccessRate` (default 33%) + `CharmedSmithBonus` (+5% if augment 29273) + `MitBonusPerPoint` (0.05% per Magic Item Tinkering skill point), capped at `MaxSuccessRate` (80%).
- **Messages:**
  - Success: *"Cleansed N negative spell(s) from {item}: {names}."*
  - No debuffs: *"{item} has no negative spells to cleanse."*
  - Failure: *"The item's latent magic overwhelms your Spellsiphon, destroying it!"*

### 2. Glyph of Extraction — Tiered Spell Extraction (WCIDs 850210–850219)

Glyphs extract spells from items into **charged glyphs** that can be applied to equipment.

| Tier | WCID | Extracts |
|------|------|----------|
| 0 | 850210 | Cantrips + unique non-tiered spells only |
| 1–9 | 850211–850219 | Spells matching that exact level |

- **Target item is destroyed** on both success and failure (extraction mechanic).
- Extracts 1–3 spells, prioritizing cantrips > unique > ranked. Deduplicates by highest level per spell name prefix.
- Charged glyphs gain `UiEffects.Acid` (green glow) + tiered icon overlay (`0x06006C33 + tier`).
- Payload properties: `40106 IsChargedGlyph`, `40107 GlyphTier`, `40108 GlyphSpellCount`.

### 3. Apply Charged Tools to Equipment

Both charged Spellsiphons and charged Glyphs can be applied to equipment, gems, or Mana Lattices:

- **Charged Spellsiphon** — holds extracted spells; apply to equipment to transfer them.
- **Charged Glyph** — holds extracted spells filtered by tier; apply to equipment to transfer them.
- **Mana Lattice** — a charged tool can infuse spells into a Mana Lattice, transforming it into a reusable buff gem.
- Arcane Lore skill check (difficulty 1) triggers the skill animation.

### 4. Mana Lattice (WCID 850201)

A dedicated base item for reusable buff gems.

- **Double-click activation** casts **all spells** from the item's `PropertiesSpellBook` (not just `SpellDID`).
- Works for both **Endless Mana Lattice** (after Spellsiphon infusion) and **BetterLootControl** pre-rolled lattices.
- Apply `Content/SQL/ManaLattice_Create.sql` to the world database.

### 5. Vendor Integration

Both tools are automatically added to **jeweler vendors** (vendors selling jewelry/gems):

| Item | Price | Max Stack |
|------|-------|-----------|
| Spellsiphon (blank) | `VendorPrice` (default 10,000) | `VendorSpellsiphonStackSize` (250) |
| Mana Lattice (blank) | `VendorManaLatticePrice` (default 5,000) | `VendorManaLatticeMaxBuy` (250) |
| Glyph of Extraction (tier 0) | `GlyphPrice` (default 5,000) | `VendorGlyphStackSize` (250) |
| Glyph of Extraction (tier N) | `GlyphPrice + N × GlyphPricePerTier` | `VendorGlyphStackSize` (250) |

Also injected at **mage vendors** (spell component sellers) for Spellsiphon + Mana Lattice.

### 6. Infinite Gems (optional)

When enabled, all gem spells are reusable and do not consume the gem on use.

## Settings Reference

| Setting | Type | Default | Description |
|---|---|---|---|
| `Enabled` | bool | `true` | Master switch for all SpellSiphon patches. |
| `EnableImmersiveUseHooks` | bool | `true` | Immersive item-on-item UX (use tool on target). |
| `SpellsiphonToolWcid` | uint | `850200` | WCID of the blank Spellsiphon tool. |
| `ManaLatticeWcid` | uint | `850201` | WCID of the Mana Lattice. |
| `GlyphExtractionBaseWcid` | uint | `850210` | Base WCID for Glyph tier 0. Tiers 1–9 occupy +1 through +9. |
| `BaseExtractionSuccessRate` | float | `33` | Base success rate (%) for extraction/cleansing. |
| `CharmedSmithBonus` | float | `5` | Bonus (%) if player has Charmed Smith augment. |
| `MitBonusPerPoint` | float | `0.05` | Additional success rate per point of Magic Item Tinkering. |
| `MaxSuccessRate` | float | `80` | Hard cap on success rate. |
| `RareCrystalSecondarySuccessChance` | float | `0.03` | Secondary roll for rare crystals (see `RecipeHooks.cs` list). |
| `EnableAnyItemExtraction` | bool | `true` | Allow using tools on any spell-bearing item (not just gems). |
| `AllowAttunedAndBonded` | bool | `true` | Allow using tools on attuned/bonded items. |
| `SuccessSourceSurviveChance` | float | `75` | Chance source survives on successful extraction. |
| `FailureStripChance` | float | `40` | Chance source is stripped but survives on failed extraction. |
| `ExcludeTransferSpellNameContains` | List<string> | `[]` | Spells matching these are NOT transferred to equipment. |
| `NegativeSpellNameContains` | List<string> | See below | Name substrings treated as negative/debuff spells. |
| `DefaultItemMaxMana` | int | `2000` | Default mana pool for items receiving spells. |
| `DefaultItemManaRegen` | float | `0.0333` | Mana regen for items receiving a default mana pool. |
| `EnableLootgenGemMagic` | bool | `true` | Roll spells onto qualifying lootgen gems. |
| `EnableVendorSales` | bool | `true` | Sell tools at mage/jeweler vendors. |
| `VendorPrice` | int | `10000` | Price per blank Spellsiphon at vendors. |
| `VendorSpellsiphonStackSize` | int | `250` | Max buy per transaction for Spellsiphon. |
| `VendorManaLatticePrice` | int | `5000` | Price per blank Mana Lattice at vendors. |
| `VendorManaLatticeMaxBuy` | int | `250` | Max buy per transaction for Mana Lattice. |
| `GlyphPrice` | int | `5000` | Base price for tier 0 Glyph at vendors. |
| `GlyphPricePerTier` | int | `5000` | Additional cost per tier above 0. |
| `VendorGlyphStackSize` | int | `250` | Max buy per transaction for Glyph. |

**`NegativeSpellNameContains` default:**
```json
["Vulnerability", "Imperil", "Yield", "Bane", "Fester", "Decay",
 "Bludgeon", "Piercing", "Flame", "Frost", "Acid", "Electric"]
```

## SQL Files

Apply these in order to your world database (`void-test_world` → `ace_world` → `wb_ace_world`):

1. **`Content/SQL/Spellsiphon_Tool_Create.sql`** — Creates the Spellsiphon tool weenie (850200).
2. **`Content/SQL/ManaLattice_Create.sql`** — Creates the Mana Lattice weenie (850201).
3. **`Content/SQL/GlyphExtraction_Tools_Create.sql`** — Creates all 10 Glyph of Extraction weenies (850210–850219).
4. **`Content/SQL/CoalescedMana_Update.sql`** — Updates Coalesced Mana for bidirectional charging (if still using Coalesced Mana features).

## Architecture

### Recipe IDs

| ID | Tool | Behavior |
|----|------|----------|
| `900001` | Glyph of Extraction | **Extraction** — target destroyed, charged glyph created on success |
| `900002` | Spellsiphon | **Cleansing** — target survives, negative spells removed |

`PostGetRecipe` injects the appropriate recipe based on the source WCID. `PostHandleRecipe` branches by tool type to execute the correct logic.

### Key Files

| File | Purpose |
|------|---------|
| `Features/RecipeHooks.cs` | Recipe injection, success calculation, extraction + cleansing logic |
| `Features/UseOnTargetHooks.cs` | Apply charged tools to equipment/gems/Mana Lattice |
| `Features/ManaLatticeGemHooks.cs` | `Gem.UseGem` postfix for Mana Lattice spellbook casting |
| `Features/InfiniteGemHooks.cs` | Reusable gem behavior |
| `Helpers/ItemPayload.cs` | Spell payload read/write + charged-tool detection |
| `VendorIntegration.cs` | Injects tools into vendor `DefaultItemsForSale` |
| `VendorStackUnitPricePostfix.cs` | Ensures vendor stack pricing displays correctly |

## Troubleshooting

**"Cannot use the Spellsiphon with the item"**
- Check `EnableAnyItemExtraction` — when `false`, only gems are valid targets.
- Ensure the target item actually has spells in its `PropertiesSpellBook` or `SpellDID`.

**"The Mana Lattice pulses with 0 spell(s)"**
- The lattice has no spells in its spellbook. Infuse it with a charged Spellsiphon/Glyph first, or enable `BetterLootControl` loot pre-rolling.

**Vendor not selling tools**
- Verify `EnableVendorSales` is `true`.
- Check that the vendor sells jewelry/gems (jeweler) or spell components (mage). The tool is only injected at matching vendor types.

## Credits

Built on the ACE modding framework by [aquafir](https://github.com/aquafir/ACE.BaseMod).
