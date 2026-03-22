# Overall TODO inventory (ACEmulator-Mods)

Single index of tracked work. **Authoritative detail stays in each mod’s `TODO.md` (when present) and in code**—this file is for navigation only.

## Repo-level backlog

[MOD_IDEAS.md](MOD_IDEAS.md) lists **uncommitted concepts** (not active mod tasks): Combos, Follow through Portals, Shared Flags, Chat Filter (ML.NET), Extra storage.

---

## Per-mod backlog — deferred work, planned features, or optional follow-ups

| Mod | What remains |
|-----|----------------|
| **[QOL](QOL/TODO.md)** | No open backlog; tuning pointers live in `AnimationSettings` and fellowship settings (see mod `TODO.md`). |
| **[LeyLineLedger](LeyLineLedger/TODO.md)** | Core bank features done; AutoLoot `BankCashProperty` pairing documented and defaulted to match `CashProperty` (39999). |
| **[AureatePath](AureatePath/TODO.md)** | No open backlog; luminance gate settings in `Settings.json` / `Settings.cs`. |
| **[Overtinked](Overtinked/TODO.md)** | No open backlog; tune via `Settings.json`. |
| **[Loremaster](Loremaster/TODO.md)** | Barkeeper parchments (gem/book, pools); see mod `TODO.md` for any follow-ups. |
| **[Swarmed](Swarmed/TODO.md)** | `AuraPulser` / `CorpseExploiter` in; reinforcement can scale by landblock player count; CreatureEx per-landblock scaling still needs a post-factory hook (see mod `TODO.md`). |

Per-mod `TODO.md` is **optional**: omit it when there is nothing to track; tuning-only notes may still live in a mod `TODO.md` or Readme without a row here. Mods with no `TODO.md` may still carry work in code comments (below).

---

## Code review audit backlog — cleared (2026-03-22)

The detailed per-mod audit tables that used to follow (AethericWeaver through Swarmed) tracked **null-safety, Harmony lifecycle, settings reload, divide-by-zero, and formula edge cases**. Those findings have been worked through in the codebase (including Numbersmith `func` null guards and session-safe XP sends, AureatePath OnWorldOpen timeout / luminance requirement overflow / enlightenment activation `Session` checks, Loremaster `OverrideCheckUseRequirements` + settings reload vs `SettingsContainer`, ChallengeModes XP table and Ironman/alt-leveling guards, AutoLoot `GenerateTreasure` unpatch on `Stop`, LeyLineLedger unpatch-before-patch with logged failures, Gemcrafter `TryMutate` hooks applied from `PatchClass`, Overtinked `Stop` logging and stable Harmony category names, etc.).

For a **new** snapshot before a release, run `/mod-audit` on a specific mod or a fresh `rg` pass; do not rely on old line numbers from the removed tables.

---

## Inline `*.cs` markers (case-insensitive sweep)

Pass: `rg -i "todo|fixme|hack" --glob "*.cs"` with manual filtering (exclude substrings like `Convert.ToDouble`).

Previous stray markers were cleaned up or reworded to `NOTE` / descriptive comments. Re-run the search when refreshing this section.
