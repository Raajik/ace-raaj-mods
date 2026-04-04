# Overall TODO inventory (ace-raaj-mods)

Single index of tracked work. **Authoritative detail stays in each mod’s `TODO.md` (when present) and in code**—this file is for navigation only.

## Repo-level backlog

[MOD_IDEAS.md](MOD_IDEAS.md) lists **uncommitted concepts** (not active mod tasks): Combos, Follow through Portals, Shared Flags, Chat Filter (ML.NET), Extra storage.

---

## Per-mod backlog — deferred work, planned features, or optional follow-ups

| Mod | What remains |
|-----|----------------|
| **[QOL](QOL/TODO.md)** | No open backlog; tuning pointers live in `AnimationSettings` and fellowship settings (see mod `TODO.md`). |
| **[LeyLineLedger](LeyLineLedger/TODO.md)** | Core bank features done; AutoLoot `BankCashProperty` pairing documented and defaulted to match `CashProperty` (39999). |
| **[AureatePath](AureatePath/TODO.md)** | No open backlog; see `Settings.json` / `Settings.cs` for scaling level req, enlightenment-index gates, lum aug sum, and removes. |
| **[Overtinked](Overtinked/TODO.md)** | No open backlog; tune via `Settings.json`. |
| **[Loremaster](Loremaster/TODO.md)** | Barkeeper parchments (gem/book, pools); see mod `TODO.md` for any follow-ups. |
| **[Swarmed](Swarmed/TODO.md)** | `AuraPulser` / `CorpseExploiter` in; reinforcement can scale by landblock player count; CreatureEx per-landblock scaling still needs a post-factory hook (see mod `TODO.md`). |
| **EmpyreanAlteration** | Optional: gear or mutators using AureatePath `ItemWieldRequirementEnlightenments` (FakeInt) for high-tier effects (e.g. level 9/10 spells) tied to enlightenment count. |

Per-mod `TODO.md` is **optional**: omit it when there is nothing to track; tuning-only notes may still live in a mod `TODO.md` or Readme without a row here. Mods with no `TODO.md` may still carry work in code comments (below).

---

## Code review audit backlog — cleared (2026-03-22)

The detailed per-mod audit tables that used to follow (AethericWeaver through Swarmed) tracked **null-safety, Harmony lifecycle, settings reload, divide-by-zero, and formula edge cases**. Those findings have been worked through in the codebase (including Numbersmith `func` null guards and session-safe XP sends, AureatePath OnWorldOpen timeout / luminance requirement overflow / enlightenment activation `Session` checks, Loremaster `OverrideCheckUseRequirements` + settings reload vs `SettingsContainer`, ChallengeModes XP table and Ironman/alt-leveling guards, AutoLoot `GenerateTreasure` unpatch on `Stop`, LeyLineLedger unpatch-before-patch with logged failures, Gemcrafter `TryMutate` hooks applied from `PatchClass`, Overtinked `Stop` logging and stable Harmony category names, etc.).

For a **new** snapshot before a release, run `/mod-audit` on a specific mod or a fresh `rg` pass; do not rely on old line numbers from the removed tables.

---

## Code review findings — AethericWeaver, AureatePath, ChallengeModes — cleared (2026-03-22)

The prior snapshot for those three mods (chain projectile null `Spell`; `SpellCustomization(Spell)` validation; `Settings.cs` note for omitted JSON keys; AureatePath `Stop` unpatch for `WieldRequirements` / `PassupSuppress`, enlightenment object use with non-player or null `Session` defers to vanilla, `nameof(Player.CheckWieldRequirements)`, `ApplyBonuses` cleanup; ChallengeModes SSF give message placement, hardcore `Session?.LogOffPlayer`, `/cm refund` vital filter aligned with `/cm levels`, one-time log when `Proficiency.OnSuccessUse` is unresolved, `/cm off hardcoressf` requires an active mode, SSF POI cache cleared on mod `Stop`) is addressed in code.

For a **new** snapshot before a release, run `/mod-audit` on a specific mod or a fresh `rg` pass.

---

## Code review findings — ChallengeModes — cleared (2026-03-22 follow-up)

Prior audit items addressed: `/cm off aptitude` guards null `Session`; prefs reload uses file `LastWriteTimeUtc` (replacing one-shot `LoadedPlayers`) with retry on failure and stamp update on save; Harmony targets use `nameof(Proficiency.OnSuccessUse)` / `nameof(Player.DoCastSpell_Inner)`; unused settings and orphaned XP-rate keys removed from `Settings` / `Settings.json`; `LevelCost` polynomial sums avoid unsafe `(int)` spans via long loop fallback.

---

## Inline `*.cs` markers (case-insensitive sweep)

Pass: `rg -i "todo|fixme|hack" --glob "*.cs"` with manual filtering (exclude substrings like `Convert.ToDouble`).

Previous stray markers were cleaned up or reworded to `NOTE` / descriptive comments. Re-run the search when refreshing this section.
