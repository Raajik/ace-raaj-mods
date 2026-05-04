# Windblown custom trophy settings

Reference for **stackable quest trophies** and similar lines (charms, tokens, bulk turn-ins): where WCIDs live, how they stay **physical inventory objects**, and how **AutoLoot** pulls them into the pack **without** LeyLineLedger (LLL) treating them as abstract bank currency.

Use this as the checklist when adding the next custom trophy family.

---

## Design rule: physical vs LLL

- **Physical (default for trophies):** Item exists in pack/corpse; players see stacks; turn-ins consume stacks. Reward side may still credit **banked trade notes** or other LLL properties for *currency* (see Drudge charm quest XP path) — that is not the same as registering the trophy WCID as an LLL banked item type.
- **Do not** add custom trophy WCIDs to **`AutoLoot/Settings.json` → `KeyBankProperties`**, currency auto-bank paths, or LLL `Settings.Items` entries unless the item is intentionally a ledger-only token.

---

## Registry: Drudge charm line (example)

| Tier (display) | WCID |
|----------------|------|
| Bloodletter Drudge Charm (base) | 24835 |
| Bloodletter Drudge Charm (Quality) | 850271 |
| Bloodletter Drudge Charm (Pristine) | 850272 |
| Bloodletter Drudge Charm (Perfect) | 850273 |

**Icon / glow (world weenie):** `weenie_properties_int` **179** (`ImbuedEffect`) + **18** (`UiEffects`) = per-tier client rim/glow (appraisal chrome; not weapon rend combat). **24835** Bludgeon + Frost (white); **850271** Acid + Acid (green); **850272** Cold + Magical (blue); **850273** Electric + Lightning (purple). Shipped in `WindblownContent/Content/SQL/DrudgeCharm_TierWeenies_World.sql` and forward patches `DrudgeCharm_BloodletterBase_2026-05-05.sql`, `DrudgeCharm_UiRendIcons_2026-05-05.sql`.

---

## AutoLoot — default pack pull (no profile required)

**Setting:** `AutoLoot/Settings.json` → **`UpgradedTrophyWeenieClassIds`** (same property in `AutoLoot/Settings.cs`).

- Pass 1 in `AutoLoot/Autoloot.cs` (`ProcessContainerLoot`) removes matching items from the corpse/chest and calls **`AutolootTryCreateInInventoryWithNetworking`** so they land in the **main pack** as real objects.
- **Important:** If this list is non-empty, corpse processing **does not** early-exit when the player has no `.utl` profiles enabled — trophies still pull. (Shipped defaults include the four Drudge WCIDs.)

**`DefaultActiveProfiles`:** Trophies line does not need to appear in `Trophies.utl` for these WCIDs; Pass 1 is independent of profile allowlists.

---

## BetterSupportSkills

- **`DrudgeCharmTrophies`** — species-gated drops (`TrophyDrops.cs`), WCIDs and fractions in `Settings.json`.
- **`QuestTurnInCap`** — bulk turn-in for the same four WCIDs; scaled quest XP + **bank credit** on turn-in (charms stay physical until NPC consumes them).

### Drudge charm turn-in: per-tier bank amounts (LLL)

Credits **`BankCashProperty`** (default **39999**) via **`LeyLineLedgerBankInterop.IncBanked`**: Ley Line Ledger when that mod is loaded; otherwise the same delta is applied to the player’s **`PropertyInt64`** for that property id. **No** physical trade-note items are created.

| Charm tier | WCID | Default bank per charm | Reference ACE trade note (operator / doc only) |
|------------|------|------------------------|---------------------------------------------------|
| Regular | 24835 | 25_000 | 7376 Trade Note (25,000) |
| Quality | 850271 | 50_000 | 2626 Trade Note (50,000) |
| Pristine | 850272 | 100_000 | 2627 Trade Note (100,000) |
| Perfect | 850273 | 250_000 | 20630 Trade Note (250,000) |

Settings keys: **`BankTradeNoteValuePerCharmRegular`**, **`BankTradeNoteValuePerCharmRare1`**, **`BankTradeNoteValuePerCharmRare2`**, **`BankTradeNoteValuePerCharmRare3`**. **`BankPyrealsPerCharm`** remains as **legacy flat fallback** when all four tier amounts are **0** in JSON (older `Settings.json` that never added the new keys).

---

## QOL — NPC stack turn-in

- **`NpcStackTurnIn.StackableQuestWcids`** in `QOL/Settings.json` (and related `StackableWcids.json` where used) must include every stackable trophy WCID that should bulk-turn to NPCs.

---

## BetterLootControl

- **`LootRoller`** (and any corpse consolidation rules) — exclude or special-case trophy WCIDs if they must not be merged/salvaged incorrectly. Drudge line is already referenced in code; extend the same pattern for new lines.

---

## HybridClasses / trophy whitelists

- **`BetterSupportSkills/Skills/HybridClasses.cs`** — bludgeon (and other) trophy lists for class perks: add new WCIDs if they count as trophies for that feature.
- **`BetterSupportSkills/TrophyWhitelist.md`** — documentation for Assess/trophy gating where applicable (avoid WCID collisions with unrelated rows).

---

## World database

- Weenie definitions, `weenie_properties_create_list` cleanup, names, stack props: ship SQL under **`WindblownContent/Content/SQL/`** and use **`WindblownContent/Content/SQL/README-TrophyCharmCloneTemplate.md`** as the clone pattern for tiered lines.

---

## Checklist for a new trophy line

1. [ ] SQL: weenies + create_list / treasure as needed; apply to `ace_world`, restart ACE.
2. [ ] **AutoLoot** `UpgradedTrophyWeenieClassIds`: append all stackable WCIDs for pack autoloot.
3. [ ] **QOL** `NpcStackTurnIn.StackableQuestWcids` (+ `StackableWcids.json` if your server uses that bundle).
4. [ ] **BetterLootControl** — roller / consolidation hooks if the line needs protection from generic rules.
5. [ ] **BetterSupportSkills** — drops (`TrophyDrops` or new skill), turn-in (`QuestTurnInCap` or shared pattern), optional `QuestTrophyDrops` daily cap **only** if you want caps (Drudge bulk path does not use the tracker).
6. [ ] **HybridClasses** / other mods with hardcoded trophy tables — grep for sibling WCIDs and extend.
7. [ ] Update **this document** with the new WCID table and any exceptions (e.g. “also listed in X for reason Y”).

---

## Agent pointer

Repo **`AGENTS.md`** § Repo conventions links here so future sessions extend one canonical doc instead of scattering one-off notes.
