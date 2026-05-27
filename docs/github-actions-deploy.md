# GitHub Actions — deploy void-test / wb_test

## Cannot find GitHub Settings? Do this instead (recommended)

On your **Windows game PC** (where `A:\void-test` and `C:\ACE` live), open **PowerShell** and run:

```powershell
cd A:\ai\projects\ace-raaj-mods
git pull
.\scripts\Setup-GitHubDeployRunner.ps1
.\scripts\Setup-GitHubDeploySecrets.ps1
```

1. **Setup-GitHubDeployRunner.ps1** — downloads the Actions runner, opens the correct GitHub page in your browser, asks you to paste a one-time token, installs the runner service.

2. **Setup-GitHubDeploySecrets.ps1** — reads `scripts\.deploy-mysql.env` and uploads MySQL creds to GitHub (needs `gh auth login` once).

After that: **GitHub → Actions → Deploy test servers → Run workflow**.

### Even simpler: skip GitHub entirely

Same deploy, no runner setup:

```powershell
cd A:\ai\projects\ace-raaj-mods
.\scripts\Deploy-All-Test.ps1
```

Uses the same `deploy-void-test.sh` / `deploy-wb-test.sh` scripts locally.

---

## Where things are in GitHub (manual path)

| What | URL |
|------|-----|
| **New self-hosted runner** | https://github.com/Raajik/ace-raaj-mods/settings/actions/runners/new |
| **Actions secrets** | https://github.com/Raajik/ace-raaj-mods/settings/secrets/actions |
| **Run deploy workflow** | https://github.com/Raajik/ace-raaj-mods/actions/workflows/deploy-test-servers.yml |

Repo **Settings** is only visible if you are logged in as an owner/collaborator with admin access. If you do not see **Settings**, ask the repo owner or use **Deploy-All-Test.ps1** locally.

---

## Workflow reference

Workflow file: [`.github/workflows/deploy-test-servers.yml`](../.github/workflows/deploy-test-servers.yml)

| Input | Purpose |
|-------|---------|
| `target` | `void`, `wb_test`, or `both` |
| `git_ref` | Branch/tag (default `main`) |
| `skip_sql` | Mods only |
| `skip_world_sync` | wb_test: no world DB clone |

**Secrets:** `ACE_MYSQL_USER`, `ACE_MYSQL_PASSWORD` (or `scripts/.deploy-mysql.env` on the runner machine).

**Optional variable:** `ACE_EMULATOR_PATH` = `C:\ACE\Server`

**Runner labels:** `self-hosted`, `windows` (set automatically by setup script).

Cloud GitHub-hosted runners **cannot** run this job — only your PC with ACE installed.

### Deploy failed with `cd: ... No such file or directory`

The workflow log shows `/bin/bash` and a `cd` to `C:/actions-runner/...` that fails — that is almost always the **WSL shim** at `C:\Windows\System32\bash.exe`, not Git Bash. Install **Git for Windows** at `C:\Program Files\Git\bin\bash.exe`.

### Deploy failed with `The term 'C:\Program Files' is not recognized`

The resolved Git Bash path contains spaces. Older workflow versions wrote `path=C:\Program Files\...` to `GITHUB_OUTPUT` without a heredoc, so only `C:\Program Files` was passed to the next step. Update to latest `main` and re-run.

See `AGENTS.md` §5 for void vs wb_test behavior and warnings.
