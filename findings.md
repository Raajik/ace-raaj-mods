# Findings: Skill Pruning

## Current State
- `.pi/settings.json` loaded two sources:
  1. `.cursor/skills` — 7 local project skills (ace-mod, ace-mod-team, ace-build, ace-log, mod-audit, doc, mcp2cli)
  2. `/mnt/c/Users/jeremy/.cursor/skills` — 1,321 global skills (massive noise)

## No Usage Telemetry
- Pi does not expose skill-invocation analytics by default.
- Pruning is based on **workflow heuristics** for this repo.

## Kept Global Skills (18 total)
| Skill | Why Kept |
|-------|----------|
| using-superpowers | Mandatory per AGENTS.md |
| planning-with-files | Mandatory per AGENTS.md |
| bash-scripting | Deploy scripts, server ops |
| bash-linux | WSL environment |
| powershell-windows | Windows-side deploy/watchdog tasks |
| windows-shell-reliability | Path/encoding pitfalls on Windows |
| git-advanced-workflows | Branch discipline, history cleanup |
| create-branch | Sentry-style branch naming |
| commit | Sentry-style conventional commits |
| git-pushing | Push workflow |
| github | PRs, issues, comments |
| jq | JSON filtering for logs/configs |
| debugging-strategies | Systematic bug investigation |
| code-simplifier | Refactor & readability |
| readme | README authoring |
| obsidian-markdown | Wiki syntax compliance |
| wiki-page-writer | Wiki docs for durable knowledge |

## Dropped Categories
- **Roleplay / celebrity personas** (sam-altman, elon-musk, steve-jobs, etc.)
- **Niche game engines** (godot, unreal, unity, minecraft)
- **Marketing / SEO / content** (seo-*, ad-creative, content-marketer)
- **Health analyzers** (sleep-analyzer, nutrition-analyzer, etc.)
- **E-commerce / SaaS platforms** (shopify, wordpress, odoo, salesforce)
- **Cloud-specific deep dives** (aws-penetration-testing, azure-ai-* series)
- **Data science / ML** (polars, scikit-learn, qiskit, cirq)
- **Frontend frameworks** (react-* , angular, sveltekit, vue)
- **Mobile dev** (flutter, react-native, swiftui)
- **Security audit / pentest** (metasploit, red-team-tactics, etc.)

## Restore Path
- Backup file: `.pi/settings.full.json.bak` (created before edit)
- To restore: `cp .pi/settings.full.json.bak .pi/settings.json`
- To expand later: add individual skill directories to the `skills` array
