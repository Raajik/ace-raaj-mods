## DecalQaRunner (Decal 2.9.8.3)

Client-side QA driver: runs server `/gemqa runall`, optional full Gemcrafter crush/apply flow, logs to `qa-run-YYYYMMDD-HHMMSS.log` next to the DLL. (Former Aptitude `/aptqa` suite was removed when Aptitude merged into ChallengeModes.)

### The “you run the show” mode (99% hands-off)

1. One-time: copy `qa-auto.example.cfg` → **`qa-auto.cfg`** into the **same folder as `DecalQaRunner.dll`** (your Decal plugins folder).
2. Edit **`gemFragment`** / **`equipFragment`** to match your character (defaults: `garnet`, `bracelet`).
3. Optional: set **`runOnLogin=true`** — after Thwargle (or any launcher) drops you in-world, the pipeline starts by itself after **`loginDelayMs`**.
4. Otherwise type **`/qa auto`** once per session — that’s it.

**`/qa auto`** does (by default): `/gemspawn` → wait → `/qa prep gem` (uses cfg fragments) → wait → `/qa runall` (Gemcrafter server suite only).

Override fragments without editing the file: **`/qa auto garnet bracelet`** (no spaces inside a fragment).

Other commands: **`/qa help`**, **`/qa runall`** (server suites only, fastest), **`/qa stop`**, **`/qa status`**.

### Prereqs

- Decal `2.9.8.3`
- Server mods: Gemcrafter (+ `/gemspawn` admin), AceModQa (optional); ChallengeModes replaces Aptitude and has no `/aptqa` suite
- UtilityBelt recommended for `/qa ub` passthrough

### Build setup

Decal assemblies are not on NuGet. Junction your Decal install to `tools/DecalQaRunner/deps` (or copy `Decal.Adapter.dll` there).

Then build `tools/DecalQaRunner/DecalQaRunner.csproj` (`net48`).

### Install

Copy `DecalQaRunner.dll` into your Decal plugins folder and enable it. Copy `qa-auto.example.cfg` → `qa-auto.cfg` beside it if you want configurable automation.

### `qa-auto.cfg` keys

| Key | Meaning |
|-----|--------|
| `runOnLogin` | `true` / `false` — start pipeline after login |
| `loginDelayMs` | ms to wait after login before auto start |
| `spawnGems` | `true` — send `/gemspawn` |
| `spawnCount` | count for `/gemspawn` (1–50) |
| `runPrepGem` | `true` — run crush/apply prep |
| `gemFragment` | name fragment for gem |
| `equipFragment` | name fragment for target gear |
| `runServerSuites` | `true` — schedule `/qa runall` after prep delay |
| `msAfterSpawnBeforePrep` | ms after spawn before prep |
| `msAfterPrepStartBeforeRunAll` | ms after prep starts before server suites |

Tune the two `ms*` values if your shard is slow or prep times out.
