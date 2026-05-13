# Open Issues — Active Work & Backlog

> Tasks loaded from user report 2026-05-13. Track implementation phases in `progress.md`.

---

## 🟡 Issue 1: Auto-lockpick bank ratio

**Request:** Change ratio from 10% → 50% (half of looted lockpick charges go to bank).

**Current state:**
- `AutoLoot/Autoloot.cs:589`: `var pct = PatchClass.Settings?.LockpickLootBankPercent ?? 0.10f;`
- `AutoLoot/Settings.cs:108`: default `0.10f` (10%)
- `AutoLoot/Settings.json`: `"LockpickLootBankPercent": 0.10`

**Needed changes:**
- [ ] Update `AutoLoot/Settings.cs` default: `LockpickLootBankPercent = 0.50f`
- [ ] Update `AutoLoot/Settings.json`: `"LockpickLootBankPercent": 0.50`
- [ ] Verify test `C:\ACE\Mods\AutoLoot\Settings.json` after deploy
- [ ] Note: LeyLineLedger `LockpickAutoBank.cs` has a SEPARATE lockpick banking system that banks 100% of charges on inventory entry — this may need its own ratio if both systems should be aligned

---

## 🟡 Issue 2: Extra spells on cloaks don't apply buffs

**Bug:** Cantrip (minor) spells on cloaks don't provide passive buffs — they don't appear in active buff list, and don't show the "weave of X" message.

**Root cause analysis:**
- Vanilla ACE's `MutateCloak` (LootGenerationFactory_Clothing.cs:343) does NOT call `AssignMagic` — the function that adds cantrip spells to armor/clothing
- Cloaks only get: `ProcSpell` (combat proc), `CloakWeaveProc` (damage reduction), `EquipmentSetId`
- General spells on equipped items are activated by `Player_Inventory.cs` `TryActivateSpells` which iterates `Biota.GetKnownSpellsIds` — but this path requires:
  1. The item to have `ItemCurMana > 0` (the activation mana source)
  2. Spells actually present in the biota spellbook
- Cloaks from loot generation have NO mana or general spells — only the proc spell via `ProcSpell` property
- Custom cloaks (SQL-added) with spells in their spellbook should work, but may fail if `ItemCurMana` is 0/null

**Needed investigation:**
- [ ] Check if loot-gen cloaks ever have `ItemCurMana` set (>0)
- [ ] Verify whether `TryActivateSpells` is being called for cloaks during equip
- [ ] Determine if `AssignMagic` should be called from `MutateCloak` to roll cantrip spells
- [ ] Check if `ProcSpell` filter in `TryActivateSpells` (`HasProcSpell`) might incorrectly filter non-proc spells
- [ ] Check the actual base cloak weenies in the world database for spellbook entries
- [ ] Fix: Either add `AssignMagic` call to `MutateCloak`, or create a Harmony patch that ensures cantrips on cloaks activate properly

---

## 🟡 Issue 3: Coalesced mana drop/reward rates — align with tier trophy system

**Request:** Match the existing tier trophy drop/reward rates.

**Current state:**
- **Vanilla ACE** `TryRollCoalescedMana`: 2% chance per mundane item slot, only tiers 1-4
  - Tiers 1-2: 100% Aetheric (best tier!)
  - Tier 3: 75% Aetheric, 25% Greater
  - Tier 4: 25% Aetheric, 50% Greater, 25% Lesser
  - **Result:** Highest tier drops at lowest levels — completely backwards
- **Windblown custom** (WCIDs 800000-800002, CoalescedMana_800000-800002.sql): created but unused by vanilla loot gen
- **Windblown trophy line** (coalesced-mana.json): `DropChance: 0.0` for all tiers — drops handled exclusively by BetterLootControl (GlobalRareDrops)
- **Tier trophy system** (mob-heads.json): DropChance=0.004 (0.4%) for all creature types, tier-independent
  - Rewards: XpFraction=0.15, BankCredit=100000
  - Coalesced mana rewards: Lesser=0.05/25000, Greater=0.10/50000, Aetheric=0.15/100000

**Needed changes:**
- [ ] Define drop rates per tier that match trophy system philosophy (e.g., 0.4% per tier-appropriate creature)
- [ ] Change CoalescedManaWcids tier mapping: Lesser→low tiers, Greater→mid, Aetheric→high
- [ ] Update BetterLootControl drop config for mana WCIDs
- [ ] Adjust trophy line rewards if needed (currently tiered: 0.05/0.10/0.15 vs flat 0.15 for mob heads)
- [ ] Verify on void-test

---

## 🟡 Issue 4: /fac teleport location

**Bug:** `/fac` doesn't take you to the correct Facility Hub location.

**Current state:**
- `QOL/FacilityHubPortal.cs` implements `/fac` command
- Destination resolution:
  1. Loads weenie 49563 (Facility Hub Portal Gem)
  2. Reads `LinkedPortalOne` property to find the linked portal weenie
  3. Reads portal weenie's `Destination` property
  4. **OR** uses `FallbackCell` from QOL Settings when the portal Destination can't be read
- Current fallback: `0x8A020212` (58.64, -89.92, 6.01, facing -0.0998)
- The bug is likely that:
  - The linked portal weenie's `Destination` is stale/wrong in the world DB
  - OR the fallback coordinates don't match the intended facility hub location
  - OR weenie 49563 itself doesn't exist in the world DB or has wrong `LinkedPortalOne`

**Needed investigation:**
- [ ] Query weenie 49563 in the target MySQL database to verify existence and `LinkedPortalOne`
- [ ] Query the linked portal weenie to verify its `Destination` position
- [ ] Compare against known-correct Facility Hub location
- [ ] If fallback is in use, verify fallback cell/coordinates match the real Facility Hub
- [ ] Check if PortalGem destination uses `UseUserAnimation` (which we needed the 2020 shard update for)

---

## 🟡 Issue 5: Collector Vaetha message appears when handing items to Behdo Yii

**Bug:** The message "Collector Vaetha accepts your 1 Jewelry" appears when turning items in to Behdo Yii (a completely unrelated NPC).

**Root cause analysis:**
- Collector Vaetha (810003) — custom Windblown NPC in Town Network
- Behdo Yii (10842) — vanilla ACE NPC in Redspire (emote-based quests)
- Vaetha's SQL (Windblown/Content/SQL/VanillaTweaks/10_CollectorVaetha_810003.sql) clones Give emotes (category 1) from Black Hill Collector (24215)
- The cloned emotes may include entries that intercept certain item WCIDs (including jewelry)
- The "accepts your 1 Jewelry" message is a generic vanilla emote type 24 (DirectBroadcast) or similar
- It fires for ANY item matching a jewelry-type WCID — and the cloned emote IDs accidentally reach Behdo Yii's NPC instance
- The QOL `EnableCollectorsAcceptAll` feature (now REMOVED, but `CollectorWcids` list includes 10842/Behdo Yii) may be contributing — the old code made collector NPCs accept any item, which would cause any handed jewelry to trigger the message
- Pattern: when a player gives Behdo Yii a non-quest jewelry item, the accept-all patch or cloned emote fires the wrong message

**Needed investigation:**
- [ ] Verify whether `EnableCollectorsAcceptAll` code still exists (the old CollectorWcids list includes 10842 Behdo Yii)
- [ ] Check the old `EnableCollectorsAcceptAll` patches — if any remain, they'd make Behdo Yii accept any item as a collector
- [ ] Inspect cloned emote actions from 24215 for jewelry-related entries
- [ ] Fix: Either remove 10842 from `CollectorWcids` list, disable stale accept-all patches, or filter emote clones

---

## Progress (recent)
- 2026-05-13 — Research phase complete for all 5 issues. See findings.md for detailed notes. Wiki updated with new pages for Lockpick Banking, Cloak Spell Activation, Coalesced Mana Drop/Reward Rates, Facility Hub Teleport Troubleshooting, and Collector NPC Emote Conflicts.
- 2026-05-13 — Issue 4 (/fac teleport) fixed. Root cause: cell 0x8A020212 had zero landblock instances (no walkable surface), causing disconnect→lifestone. Changed fallback to cell 0x8A020210 (Steward cell, proven walkable). Added /fh alias.
