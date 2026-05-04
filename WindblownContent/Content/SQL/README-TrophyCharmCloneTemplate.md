# Trophy charm clone template (Windblown)

Use this pattern when replacing vanilla stackable quest trophies with **tiered WCIDs** + **BetterSupportSkills** bulk turn-in (`QuestTurnInCap` + `DrudgeCharmTrophies`-style settings).

## Design goals

1. **Clone** a vanilla weenie (`class_Id` A) into new `class_Id`s (B, C, D) with `INSERT ... SELECT` across `weenie_properties_*` (same as `DrudgeCharm_TierWeenies_World.sql`).
2. **Scrub** vanilla world spawns on the base weenie if mod drops replace them (`weenie_properties_create_list` on A).
3. **Names** — `weenie_properties_string` type **1** (Name): base + `(Quality)`, `(Pristine)`, `(Perfect)` (or your tier labels).
4. **Examine** — types **14** (Use), **15** (ShortDesc), **16** (LongDesc): state **bulk turn-in at Trophy Collector**, **XP + banked trade notes** (Ley Line / `BankCashProperty`), not vanilla pocket pyreals. If the base weenie has no rows for 14–16, use **`INSERT ... ON DUPLICATE KEY UPDATE`** (see `DrudgeCharm_TierWeenies_World.sql`) so clones and base all get strings.
5. **UI** — `weenie_properties_int` type **179** (`ImbuedEffect`) for sunstone-style rim on drudge charms (**4** = ArmorRending); type **18** (`UiEffects`) often **0** with that rim. Type **131** is `MaterialType` (different).
6. **Plural stacks** — type **20** (`PluralName`) so plural lines read e.g. `40 Drudge Charms (Perfect)` not `...Charm (Perfect)s`.
7. **Tier `weenie.type`** — insert clones as **`WeenieType.Stackable` = 51** literal (not `SELECT type FROM` base) so a bad base `type` cannot inherit **Portal** appraisal boilerplate.
8. **Code wiring** (mirror drudge) — full checklist: **`WindblownContent/docs/Windblown-Custom-Trophy-Settings.md`**.
   - `BetterSupportSkills.Settings`: trophy drop block + `QuestTurnInCap` / `BulkQuestWcids` list; per-tier **`BankTradeNoteValuePerCharm*`** + **`BankCashProperty`** for `LeyLineLedgerBankInterop.IncBanked` (no physical note spawns).
   - `QuestTurnInCap.GetItemName` (or generic) for system messages.
   - `AutoLoot.UpgradedTrophyWeenieClassIds` / `QOL` / `BetterLootControl` allowlists if items must stack-pull or skip loot merge.
9. **Apply** to `ace_world`, **restart** ACE (weenie cache). Optional: `mysqldump` scoped slice before apply per `AGENTS.md`. Forward-only fixes: **`DrudgeCharm_SunstoneRimAndCopy_2026-05-06.sql`** (names, **179=4** sunstone rim, split Use/LongDesc). Deprecated stubs: `DrudgeCharm_BloodletterBase_2026-05-05.sql`, `DrudgeCharm_UiRendIcons_2026-05-05.sql`.

## Reference implementation

- `WindblownContent/Content/SQL/DrudgeCharm_TierWeenies_World.sql` — drudge charms **24835** (base), **850271–850273** (clone tiers from 24835).
