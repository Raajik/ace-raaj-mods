#!/usr/bin/env bash
# deploy-void-test.sh — Full clean deploy of ALL buildable mods to void-test
#
# Usage:  bash scripts/deploy-void-test.sh
#
# What it does:
#   1. Builds every mod in the repo that has a .csproj
#   2. Stops only ACE.Server processes whose command line includes the void-test install path
#      (does not kill C:\ACE or other ACE instances)
#   3. WIPES A:\void-test\Mods\ entirely (clean slate, no stale DLLs)
#   4. Copies each mod's DLL + Meta.json + Settings.json from build/ output
#   5. Applies every mod's repo Content/SQL/**/*.sql to MySQL (default database: void-test_world), sorted by path
#   6. Excludes ValheelContent (permanently), Shared/ (no csproj), build/ (output dir)
#   7. Prints a restart reminder
#
# SQL (Step 5): Requires ACE_MYSQL_USER and ACE_MYSQL_PASSWORD exported before run.
#   Optional: MYSQL_EXE, VOID_SQL_DATABASE (default void-test_world).
#   Skip: VOID_TEST_SKIP_SQL=1
#   Scoped backups before risky weenie work: see wiki operations/SQL Procedures.
#   Optional shard SQL target: VOID_SHARD_DATABASE (preferred), WB_TEST_SHARD_DATABASE (legacy fallback).
#   Windblown SQL layout: Windblown/Content/SQL/ — see Windblown/docs/CustomTrophyNPC-Deployment-Standard.md
#
# Trigger phrase for agents:  "push void" or "deploy void"
# wb_test (C:\ACE): see scripts/deploy-wb-test.sh (use DEPLOY_TEST_MATCH_VOID_WORLD_DB=1 there for same MySQL DB name as this script)
# See AGENTS.md §5.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
# Git Bash (MSYS): /a/void-test/Mods  WSL: /mnt/a/void-test/Mods  Override: VOID_MODS=/path/to/Mods
if [ -z "${VOID_MODS:-}" ]; then
  if [ -d "/a/void-test" ]; then
    VOID_MODS="/a/void-test/Mods"
  else
    VOID_MODS="/mnt/a/void-test/Mods"
  fi
fi
BUILD_DIR="$REPO_ROOT/build"

cd "$REPO_ROOT"

if [ -f "$REPO_ROOT/scripts/.deploy-mysql.env" ]; then
  set +u
  # shellcheck disable=SC1090
  . "$REPO_ROOT/scripts/.deploy-mysql.env"
  set -u
fi

echo "=== deploy-void-test.sh ==="
echo "Repo: $REPO_ROOT"
echo "Target: $VOID_MODS"
echo "SQL DB: ${VOID_SQL_DATABASE:-void-test_world} (VOID_TEST_SKIP_SQL=1 to skip)"
echo ""

# ── Step 1: Build all mods ────────────────────────────────────────────────
echo "=== Step 1: Building all mods ==="
BUILD_FAILED=0
FAILED_MODS=""
for mod_dir in */; do
  name="${mod_dir%/}"
  csproj="$name/$name.csproj"
  # Skip non-mod directories
  [ -f "$csproj" ] || continue
  [ "$name" = "ValheelContent" ] && continue
  [ "$name" = "Shared" ] && continue

  echo "  Building $name..."
  if ! dotnet build "$csproj" > /dev/null 2>&1; then
    echo "  ❌ $name BUILD FAILED — skipping deploy"
    BUILD_FAILED=1
    FAILED_MODS="$FAILED_MODS $name"
  else
    echo "  ✅ $name"
  fi
done

if [ "$BUILD_FAILED" -ne 0 ]; then
  echo ""
  echo "⚠️  One or more mods failed to build:${FAILED_MODS}"
  echo "   Deploying only successfully-built mods."
fi
echo ""

# ── Step 2: Kill void-test ACE only (do not stop C:\\ACE or other instances) ─
echo "=== Step 2: Killing void-test ACE.Server only ==="
VOID_ROOT="$(dirname "$VOID_MODS")"
VOID_PS_ROOT=""
if command -v cygpath &>/dev/null; then
  VOID_PS_ROOT="$(cygpath -w "$VOID_ROOT" 2>/dev/null || true)"
elif command -v wslpath &>/dev/null; then
  VOID_PS_ROOT="$(wslpath -w "$VOID_ROOT" 2>/dev/null || true)"
fi
if [ -z "$VOID_PS_ROOT" ]; then
  # Last resort: dirname as-is (PowerShell may still match if path appears in command line)
  VOID_PS_ROOT="$VOID_ROOT"
fi

if command -v powershell.exe &>/dev/null && [ -n "$VOID_PS_ROOT" ]; then
  export DEPLOY_VOID_ROOT="$VOID_PS_ROOT"
  powershell.exe -NoProfile -ExecutionPolicy Bypass -Command '
    $voidRoot = $env:DEPLOY_VOID_ROOT
    if ([string]::IsNullOrWhiteSpace($voidRoot)) { exit 0 }
    $like = "*" + $voidRoot + "*"
    $procs = @(Get-CimInstance Win32_Process -ErrorAction SilentlyContinue | Where-Object {
      $cl = $_.CommandLine
      if ([string]::IsNullOrEmpty($cl)) { return $false }
      if ($cl -notlike $like) { return $false }
      $n = $_.Name
      if ($n -eq "ACE.Server.exe" -or $n -like "ACE.Server*.exe") { return $true }
      if (($n -eq "dotnet.exe" -or $n -eq "dotnet") -and ($cl -match "ACE[\\/]Server")) { return $true }
      return $false
    })
    foreach ($p in $procs) {
      Stop-Process -Id $p.ProcessId -Force -ErrorAction SilentlyContinue
    }
    Write-Host ("  Stopped void-test ACE process(es): " + $procs.Count)
  ' 2>/dev/null || true
  unset DEPLOY_VOID_ROOT || true
else
  echo "  (skipped: powershell.exe or void root path unavailable — stop void-test ACE manually if needed)"
fi
# Clear watchdog block so next poll will restart clean
rm -f "$(dirname "$VOID_MODS")/Server/void-test_watchdog_BLOCKED.txt"
rm -f "$(dirname "$VOID_MODS")/Server/void-test_watchdog_state.json"
echo "  Done."
echo ""

# ── Step 3: Wipe void-test Mods/ ──────────────────────────────────────────
echo "=== Step 3: Wiping $VOID_MODS ==="
rm -rf "$VOID_MODS"/*
echo "  Done."
echo ""

# ── Step 4: Copy build output ─────────────────────────────────────────────
echo "=== Step 4: Copying mods ==="
for mod_dir in */; do
  name="${mod_dir%/}"
  csproj="$name/$name.csproj"

  [ -f "$csproj" ] || continue
  [ "$name" = "ValheelContent" ] && continue
  [ "$name" = "Shared" ] && continue

  # Skip mods that failed to build (would deploy stale DLLs)
  if echo "$FAILED_MODS" | grep -qw "$name"; then
    echo "  ⏭️  $name (build failed, stale DLL not deployed)"
    continue
  fi

  src="$BUILD_DIR/$name"
  dst="$VOID_MODS/$name"

  # Skip if build output doesn't exist
  [ -d "$src" ] || continue

  mkdir -p "$dst"

  # Copy all DLLs from build output (mod + ProjectReference + NuGet deps)
  # McMaster PluginLoader's per-mod ALC must resolve ALL dependencies locally,
  # including transitive ProjectReferences (BetterLootControl, AceModQa) and
  # NuGet packages (AngouriMath, ACE.Shared), otherwise JIT will crash at runtime.
  count=0
  for dll in "$src"/*.dll; do
    [ -f "$dll" ] || continue
    cp "$dll" "$dst/"
    count=$((count + 1))
  done
  echo "  ✅ $count DLL(s)"

  # Copy Content/ directory (e.g. Windblown custom weenies/trophies)
  if [ -d "$src/Content" ]; then
    cp -r "$src/Content" "$dst/Content"
    echo "    Content/"
  fi

  # Copy Meta.json (prefer build output, fall back to source)
  if [ -f "$src/Meta.json" ]; then
    cp "$src/Meta.json" "$dst/Meta.json"
    echo "    Meta.json"
  elif [ -f "$name/Meta.json" ]; then
    cp "$name/Meta.json" "$dst/Meta.json"
    echo "    Meta.json (from source)"
  fi

  # Copy Settings.json (prefer build output, fall back to source)
  if [ -f "$src/Settings.json" ]; then
    cp "$src/Settings.json" "$dst/Settings.json"
    echo "    Settings.json"
  elif [ -f "$name/Settings.json" ]; then
    cp "$name/Settings.json" "$dst/Settings.json"
    echo "    Settings.json (from source)"
  fi
done
echo ""

# ── Step 5: Apply repo Content/SQL to void-test world DB ──────────────────
echo "=== Step 5: Applying repo Content/SQL to MySQL ==="
if [ "${VOID_TEST_SKIP_SQL:-0}" = "1" ]; then
  echo "  Skipped (VOID_TEST_SKIP_SQL=1)"
else
  if [ -z "${ACE_MYSQL_USER:-}" ] || [ -z "${ACE_MYSQL_PASSWORD+x}" ]; then
    echo "ERROR: Export ACE_MYSQL_USER and ACE_MYSQL_PASSWORD before deploy (mysql credentials)." >&2
    echo "       Or set VOID_TEST_SKIP_SQL=1 to deploy DLLs only." >&2
    exit 1
  fi
  REPO_PS=""
  SCRIPT_PS=""
  if command -v cygpath &>/dev/null; then
    REPO_PS="$(cygpath -w "$REPO_ROOT")"
    SCRIPT_PS="$(cygpath -w "$SCRIPT_DIR")"
  elif command -v wslpath &>/dev/null; then
    REPO_PS="$(wslpath -w "$REPO_ROOT")"
    SCRIPT_PS="$(wslpath -w "$SCRIPT_DIR")"
  else
    REPO_PS="$REPO_ROOT"
    SCRIPT_PS="$SCRIPT_DIR"
  fi
  SQL_DB="${VOID_SQL_DATABASE:-void-test_world}"
  export ACE_MYSQL_USER
  export ACE_MYSQL_PASSWORD
  export MYSQL_EXE
  SHARD_SQL_DB="${VOID_SHARD_DATABASE:-${WB_TEST_SHARD_DATABASE:-}}"
  export VOID_SHARD_DATABASE
  export WB_TEST_SHARD_DATABASE
  PS_APPLY="${SCRIPT_PS}\\Apply-RepoModSqlToMysql.ps1"
  PS_CMD=(powershell.exe -NoProfile -ExecutionPolicy Bypass -File "$PS_APPLY" -RepoRoot "$REPO_PS" -Database "$SQL_DB")
  if [ -n "$SHARD_SQL_DB" ]; then
    PS_CMD+=(-ShardDatabase "$SHARD_SQL_DB")
  fi
  if ! "${PS_CMD[@]}"; then
    echo "ERROR: Apply-RepoModSqlToMysql.ps1 failed." >&2
    exit 1
  fi
fi
echo ""

echo "=== Deploy complete ==="
echo "Mods deployed to: $VOID_MODS"
echo ""
echo "Next: Restart the void-test ACE server to load new DLLs."
echo "  (e.g., restart the ACE.Server service on Windows)"