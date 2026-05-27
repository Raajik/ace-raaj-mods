# Glyph of Extraction — what changed since it last worked

Use this when tier 0 / vendor behavior regressed after SQL or tier 9 work.

## Symptom → usual cause

| Symptom | Likely cause |
|--------|----------------|
| `The Glyph of Extraction cannot be used on the …` (Overtinked craft text) | `GetRecipe` returned null — old DLL, wrong Harmony target, or spells not read from imbues |
| `[Spellsiphon] … no valid extraction targets` | Tier filter or spell list empty (different code path; fix is working) |
| Glyphs missing at jewelers | Vendor inject before BLC `LoadInventory`, or weenie 850210–850219 missing in world DB |
| Glyph works on gems but not imbued armor | Pre-fix `ReadItemSpellIds` skipped `PropertiesEnchantmentRegistry` / live `EnchantmentManager` |

## Commit timeline (newest first)

| Commit | What changed |
|--------|----------------|
| `a0757c8a` | **Fix shipped in PR #9:** `ItemSpellIds` (+ imbue registry), `UseObjectOnTarget` prefix registered, vendor `LoadInventory` postfix, Major/cantrip tier-0 filter |
| `312e8ac9` | Docs: vendor runs after BLC |
| `7872b047` | **SQL merge conflict cleanup:** removed duplicate `GlyphExtraction_Tools_Create.sql` (file had been ~1029 lines with `<<<<<<<` / `=======` / `>>>>>>>`) |
| `dfe01ba2` | **Spellsiphon rename refactor:** large RecipeHooks/PatchClass churn — **`UseObjectOnTarget` prefix was not re-registered** (regression window) |
| `05e6ec57` | **Tier 0–9 weenies added** — commit still contained unresolved conflict markers; tier 0 props match current file (`TargetType` 560015, `ItemUseable` 524296) |
| `38971ed2` | Initial glyph extraction C# + vendors; `ReadItemSpellIds` = spellbook + SpellDID only (no imbue registry) |

## Tier 0 SQL (repo today)

`Content/SQL/GlyphExtraction_Tools_Create.sql` tier 0 (850210) keys:

- `weenie_properties_int` type **94** = **560015** (`ItemEnchantableTarget`)
- type **16** = **524296** (`SourceContainedTargetContained`)
- Stack vendor fields: `MaxStackSize` 250, `StackUnitValue` 5000

If you changed tier 0 `TargetType` or `ItemUseable` locally, compare your edit to the above. Wrong `TargetType` on **existing** glyph biotas is patched by `Content/SQL-shard/Biota_Cleanup.sql` (sets type 94 → 560015 for WCIDs 850210–850219).

## Tier 9

- WCID **850219** is in world SQL (tier 9 block at end of `GlyphExtraction_Tools_Create.sql`).
- C# treats tiers **0–9** (`baseWcid` … `baseWcid + 9`).
- Vendor injection now includes tier **9** (was 0–8 only).

## Deploy checklist (test server)

1. `git pull` on `main` (includes PR #9+).
2. `.\scripts\Deploy-All-Test.ps1` (or void-test deploy script) — **GitHub Actions deploy is separate; failed CI does not update `C:\ACE\Mods`**.
3. Confirm `Ace_Log.txt`: `[Spellsiphon] Recipe hook applied (UseObjectOnTarget prefix)` and `(GetRecipe postfix, Priority.Last)`.
4. World: `GlyphExtraction_Tools_Create.sql` applied.
5. Shard: `Content/SQL-shard/Biota_Cleanup.sql` for glyphs already in packs.
6. Restart ACE.

## Git compare commands

```bash
git log --oneline 38971ed2..HEAD -- SpellSiphon/
git diff 38971ed2..HEAD -- SpellSiphon/Content/SQL/GlyphExtraction_Tools_Create.sql
git show dfe01ba2 -- SpellSiphon/PatchClass.cs
git show a0757c8a --stat
```
