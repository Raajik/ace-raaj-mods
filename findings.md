# Findings — Immutable Source of Truth Initiative

## 2026-05-06 — Phase 2-4 Complete

### Feature Ownership Gaps Found

1. **Defense imbue hang on armor (Overtinked)** — Known bug from 2026-05-03. Peridot/Yellow Topaz/Zircon on armor causes server hang. The RecipeManagerEx code reaches `ShowDialog` or `HandleRecipe` and hangs — root cause not yet determined. SEE: `AGENTS.md §8.11` and Overtinked investigation notes.

2. **Gemcrafter appears empty** — Only `obj/` directory, no `.cs` or `.csproj` files. Likely a placeholder or abandoned mod. Action: evaluate for removal or formalize.

3. **Work-In-Progress appears empty** — No source files. Likely detritus. Action: clean up.

4. **Cross-mod feature overlap needs monitoring** — Several mods share feature space (e.g., CreatureEx between Swarmed and EmpyreanAlteration). The `FakeInt 10029` enum is the canonical connector. Documented in FEATURE_MATRIX.md.

### Documentation Gaps (NOW CLOSED)

All 22 primary mod READMEs now exist. All mods requiring Settings.json templates have them (23/23). The one gap was WindblownContent which now has a Settings.json created.

### Docs That Need Correction (from previous session)

- `README.md`: AutoLoot still claims "corpse autoloot using .utl profiles" as primary story — now partially migrated to C# for currency/trophies behavior.
- `AutoLoot/Readme.md`: still lists `Currency.utl` + `Trophies.utl` as shipped defaults.
- `BetterLootControl/Readme.md` + `COMPLETED.md`: contain outdated "one elemental + one physical" compatibility statement.

### Scripts Created

- `scripts/validate_sot.sh` — automated audit (50 pass, 0 fail, 2 warnings)
- Consider adding to GitHub Actions CI on push

### ACRealms Notes (from Phase 1)

- CustomSpells has `#if !REALM` conditional compilation — verify this still works on ACRealms builds
- Referenced in `AGENTS.md §7.0` for ACRealms source lookup paths
