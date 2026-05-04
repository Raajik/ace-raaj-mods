# Trophy charm clone template (Windblown)

Use this pattern when replacing vanilla stackable quest trophies with **tiered WCIDs** + **BetterSupportSkills** bulk turn-in (`QuestTurnInCap` + `DrudgeCharmTrophies`-style settings).

## Design goals

1. **Clone** a vanilla weenie (`class_Id` A) into new `class_Id`s (B, C, D) with `INSERT ... SELECT` across `weenie_properties_*` (same as `DrudgeCharm_TierWeenies_World.sql`).
2. **Scrub** vanilla world spawns on the base weenie if mod drops replace them (`weenie_properties_create_list` on A).
3. **Names** — `weenie_properties_string` type **1** (Name): base + `(Quality)`, `(Pristine)`, `(Perfect)` (or your tier labels).
4. **Examine** — write the body **only** to `weenie_properties_string` type **16** (LongDesc); leave **14** (Use) and **15** (ShortDesc) absent. Populating both 14 and 16 makes the AC client render the sentence twice on examine. State **bulk turn-in at Trophy Collector**, **XP + banked trade notes** (Ley Line / `BankCashProperty`), not vanilla pocket pyreals.
5. **UI** — `weenie_properties_d_i_d` type **52** (`IconUnderlay`) drives the icon tint; sunstone-orange = `0x06003356` = `100676438` (matches `RecipeManager.IconUnderlay[ImbuedEffectType.ArmorRending]`). Avoid `ImbuedEffect (179)` and `UiEffects (18)` on stackable charms — those describe rending weapons / glow gear and create misleading examine text.
6. **Plural stacks** — type **20** (`PluralName`) so plural lines read e.g. `40 Drudge Charms (Perfect)` not `...Charm (Perfect)s`.
7. **Tier `weenie.type`** — insert clones as **`WeenieType.Stackable` = 51** literal (not `SELECT type FROM` base) so a bad base `type` cannot inherit **Portal** appraisal boilerplate.
8. **Code wiring** (mirror drudge) — full checklist: **`WindblownContent/docs/Windblown-Custom-Trophy-Settings.md`**.
   - `BetterSupportSkills.Settings`: trophy drop block + `QuestTurnInCap` / `BulkQuestWcids` list; per-tier **`BankTradeNoteValuePerCharm*`** + **`BankCashProperty`** for `LeyLineLedgerBankInterop.IncBanked` (no physical note spawns).
   - `QuestTurnInCap.GetItemName` (or generic) for system messages.
   - `AutoLoot.UpgradedTrophyWeenieClassIds` / `QOL` / `BetterLootControl` allowlists if items must stack-pull or skip loot merge.
9. **Apply** to `ace_world`, **restart** ACE (weenie cache). Optional: `mysqldump` scoped slice before apply per `AGENTS.md`. Forward-only fix: **`DrudgeCharm_SunstoneUnderlay_2026-05-08.sql`**. Deprecated stubs: `DrudgeCharm_BloodletterPerTierRestore_2026-05-07.sql`, `DrudgeCharm_SunstoneRimAndCopy_2026-05-06.sql`, `DrudgeCharm_BloodletterBase_2026-05-05.sql`, `DrudgeCharm_UiRendIcons_2026-05-05.sql`.

## Reference implementation

- `WindblownContent/Content/SQL/DrudgeCharm_TierWeenies_World.sql` — drudge charms **24835** (base), **850271–850273** (clone tiers from 24835).
