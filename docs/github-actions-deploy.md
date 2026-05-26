# GitHub Actions — deploy void-test / wb_test

Workflow: [`.github/workflows/deploy-test-servers.yml`](../.github/workflows/deploy-test-servers.yml)

Runs the same scripts as local deploy:

- `scripts/deploy-void-test.sh` → `A:\void-test\Mods`
- `scripts/deploy-wb-test.sh` → `C:\ACE\Mods` (optional world sync + SQL)

## One-time: self-hosted runner

1. On the Windows machine that has `A:\void-test`, `C:\ACE`, and MySQL access, install [GitHub Actions Runner](https://github.com/actions/runner/releases) (Windows x64).
2. From the repo **Settings → Actions → Runners → New self-hosted runner**, register the machine.
3. Use labels: `self-hosted`, `windows` (defaults from registration).
4. Install on that machine:
   - **Git for Windows** (Git Bash)
   - **.NET 10 SDK**
   - **ACE** at `C:\ACE\Server` (recommended — workflow uses it for `dotnet build` of mods)

Start the runner service so it stays online.

## Secrets and optional config

### Required for SQL apply (default)

In the GitHub repo: **Settings → Secrets and variables → Actions → New repository secret**

| Secret | Value |
|--------|--------|
| `ACE_MYSQL_USER` | MySQL user |
| `ACE_MYSQL_PASSWORD` | MySQL password |

Alternatively, place `scripts/.deploy-mysql.env` on the runner’s persistent checkout (gitignored locally; copy manually to the runner machine). The workflow sources it if secrets are unset.

### Optional repository variable

| Variable | Example | Purpose |
|----------|---------|---------|
| `ACE_EMULATOR_PATH` | `C:\ACE\Server` | ACE DLL folder for mod builds (avoids cloning ACE on the runner) |

Shard DB names (`VOID_SHARD_DATABASE`, `WB_TEST_SHARD_DATABASE`) follow `scripts/.deploy-mysql.env` when present on the runner.

## Run a deploy

1. **Actions** → **Deploy test servers** → **Run workflow**
2. Choose:
   - **target:** `void`, `wb_test`, or `both`
   - **git_ref:** branch or tag (default `main`)
   - **skip_sql:** mods only, no MySQL
   - **skip_world_sync:** wb_test only — no `void-test_world` → `ace_world` clone

3. After success, restart ACE on the affected servers (or let watchdogs restart).

## Notes

- **Never** targets live `C:\ACE-WB\` (Windblown live). Only void-test and wb_test paths from `AGENTS.md`.
- `wb_test` deploy **wipes** `C:\ACE\Mods\*\Settings.json` from repo templates. Back up operator-tuned JSON first if needed.
- Workflow uses concurrency group `deploy-test-servers` so two deploys do not overlap.
- Cloud-hosted `ubuntu-latest` runners **cannot** run this workflow; paths and MySQL are on your PC.

## Trigger phrases (local)

Same behavior as manual scripts: `push void`, `deploy void`, `push wb test`, `deploy wb test` — see `AGENTS.md` §5.
