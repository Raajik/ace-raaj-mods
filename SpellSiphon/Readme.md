# SpellSiphon

An ACE (Asheron's Call Emulator) server mod for extracting spells from items and infusing them into equipment.

## Features

### Spell Extraction

Use the **SpellSiphon tool** (WCID 850200) on **Coalesced Mana** to prepare it for extraction. Then use the charged tool on any spell-bearing item (gems, equipment, etc.) to extract its spells.

- **Skill-based success rate** — Magic Item Tinkering skill improves extraction success.
- **Three tiers of Coalesced Mana** — Lesser, Greater, and Aetheric, with increasing success rates and risks.
- **Any-item extraction** — When enabled, spells can be extracted from any spell-bearing item, not just gems.
- **Attuned/bonded support** — Can be allowed or blocked via settings.
- **Bidirectional charging** — You can use the Spellsiphon on Coalesced Mana, *or* use Coalesced Mana on the Spellsiphon. Both directions work.

### Vendor Integration

The SpellSiphon tool is automatically added to **spell component vendors** (mages and scriveners) when players approach them.

- **Price:** 50,000 pyreals by default.
- **Filtered vendors:** Only vendors that sell spell components (tapers, scarabs, powdered gems) receive the tool.
- **Settings:**
  - `EnableVendorSales` — Toggle vendor integration on/off.
  - `VendorPrice` — Adjust the price in pyreals.

### Infinite Gems

When enabled, all gem spells are reusable and do not consume the gem on use.

### Mana Lattice (WCID 850201)

Template is a **Gem** with **Contained** use and **Creature** target (same pattern as stock buff gems such as Asheron's Benediction). **SpellSiphon** `OnCastSpell` prefix casts every spell in the item **spellbook** on the activator — works for **Endless Mana Lattice** after Spellsiphon infusion and for **BetterLootControl** loot that pre-rolls spells onto a lattice. Apply `Content/SQL/ManaLattice_Create.sql` to `ace_world` and restart the server after weenie changes.

## Settings Reference

| Setting | Type | Default | Description |
|---|---|---|---|
| `Enabled` | bool | `true` | Master switch for SpellSiphon patches and behavior. |
| `EnableImmersiveUseHooks` | bool | `true` | Immersive item-on-item UX via generic use handler. |
| `SpellsiphonToolWcid` | uint | `850200` | WCID of the base SpellSiphon extraction tool. |
| `CoalescedManaWcids` | List<uint> | `[42516, 42517, 42518]` | WCIDs of the three Coalesced Mana tiers. |
| `EnableVendorSales` | bool | `true` | Sell SpellSiphon tools at spell component vendors. |
| `VendorPrice` | int | `50000` | Price in pyreals for the SpellSiphon tool at vendors. |
| `LesserBaseSuccessRate` | float | `20` | Base success rate (%) for Lesser Coalesced Mana extraction. |
| `GreaterBaseSuccessRate` | float | `30` | Base success rate (%) for Greater Coalesced Mana extraction. |
| `AethericBaseSuccessRate` | float | `40` | Base success rate (%) for Aetheric Coalesced Mana extraction. |
| `ArcaneLoreBonusPerPoint` | float | `0.1` | Additional success rate per point of buffed Arcane Lore. |
| `MitTrainedBonus` | float | `5` | Flat bonus if Magic Item Tinkering is trained. |
| `MitSpecializedBonus` | float | `10` | Flat bonus if Magic Item Tinkering is specialized. |
| `MaxSuccessRate` | float | `95` | Maximum possible success rate (hard cap). |
| `EnableAnyItemExtraction` | bool | `true` | Allow extracting spells from any spell-bearing item. |
| `AllowAttunedAndBonded` | bool | `true` | Allow extracting from attuned and bonded items. |
| `LesserGreaterSafeOnFail` | bool | `true` | Lesser/Greater extractions do NOT destroy source item on failure. |
| `AethericDestroysSourceOnFail` | bool | `true` | Aetheric extraction destroys source item on failure. |
| `DefaultItemMaxMana` | int | `2000` | Default mana pool for items that receive spells but had no mana pool. |
| `DefaultItemManaRegen` | float | `0.0333` | Mana regen rate for items that receive a default mana pool. |
| `EnableLootgenGemMagic` | bool | `true` | Roll spells onto qualifying lootgen gems. |

## Installation

1. Build: `dotnet build SpellSiphon/SpellSiphon.csproj`
2. Output goes to `C:\ACE\Mods\SpellSiphon\` by default.
3. Enable in `Meta.json` (`Enabled: true`).
4. **Run the SQL** in `Content/SQL/` against the target database (follow the deployment chain: `void-test_world` → `ace_world` → `wb_ace_world`):
   ```powershell
   Get-Content "Content/SQL/Spellsiphon_Tool_Create.sql" | & 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe' -u jeremy -pandersine11 ace_world
   Get-Content "Content/SQL/CoalescedMana_Update.sql" | & 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe' -u jeremy -pandersine11 ace_world
   ```
   Replace `ace_world` with the appropriate database for your target server.
5. **Restart the server** — ACE caches weenies at startup; weenie changes require a restart.
6. Tune `Settings.json` to taste.

## Troubleshooting

**"Cannot use the Spellsiphon with the Lesser Coalesced Mana"**
- Make sure the SQL in `Content/SQL/` has been applied to your world database. The Spellsiphon tool needs `TargetType = 35215` and Coalesced Mana needs `TargetType = 128 (Misc)` for bidirectional charging to work.

**Garbled text in item descriptions**
- The AC client uses Windows-1252 encoding. Ensure `weenie_properties_string` values do not contain Unicode em-dashes or smart quotes. The provided SQL uses ASCII `-` and `"` only.

## Credits

Built on the ACE modding framework by [aquafir](https://github.com/aquafir/ACE.BaseMod).
