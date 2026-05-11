#!/usr/bin/env bash
# deploy-wb-test.sh — Full clean deploy of ALL buildable mods to wb_test (C:\ACE test server)
#
# Usage:  bash scripts/deploy-wb-test.sh
#
# What it does:
#   1. Builds every mod in the repo that has a .csproj
#   2. Stops only ACE.Server/dotnet processes whose command line is under C:\ACE\
#      (excludes C:\ACE-WB live, A:\void-test, etc.)
#   3. WIPES C:\ACE\Mods\ entirely (clean slate, no stale DLLs)
#   4. Copies each mod's DLL + Meta.json + Settings.json from build/ output (same as void-test)
#   5. Applies every mod's repo Content/SQL/**/*.sql to MySQL (default database: ace_world), sorted by path
#   6. Excludes ValheelContent (permanently), Shared/ (no csproj), build/ (output dir)
#   7. Prints a restart reminder
#
# ⚠️  Wipe replaces ALL files under C:\ACE\Mods\<Mod>\ including operator-tuned Settings.json.
#    Back up C:\ACE\Mods first if you rely on local JSON edits; then merge keys back as needed.
#
# SQL (Step 5): Requires ACE_MYSQL_USER and ACE_MYSQL_PASSWORD exported before run.
#   Optional: MYSQL_EXE, WB_TEST_SQL_DATABASE (default ace_world).
#   Skip: WB_TEST_SKIP_SQL=1
#   Applies repo source ModName/Content/SQL/**/*.sql (not build/). See scripts/Apply-RepoModSqlToMysql.ps1.
#
# Trigger phrase for agents:  "push wb test" / "deploy wb test" / "deploy test" (same tree as void)
# See AGENTS.md §5.
#
# World DB parity with void-test (same MySQL database name + same repo SQL result):
#   export DEPLOY_TEST_MATCH_VOID_WORLD_DB=1
# before running. That forces WB_TEST_SQL_DATABASE to VOID_SQL_DATABASE (default void-test_world).
# You must also point the C:\ACE ACE.Server world config at that same database name, or only
# filesystem parity holds. Do not run void-test and wb_test writers against one DB concurrently.
# Two ACE instances 24/7: use separate DBs + scripts/sync-world-void-test-to-wb-test.sh (AGENTS.md §5).

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
# Git Bash (MSYS): /c/ACE/Mods   WSL: /mnt/c/ACE/Mods   Override: WB_TEST_MODS=/path/to/Mods
if [ -z "${WB_TEST_MODS:-}" ]; then
  if [ -d "/c/ACE/Mods" ]; then
    WB_TEST_MODS="/c/ACE/Mods"
  elif [ -d "/mnt/c/ACE/Mods" ]; then
    WB_TEST_MODS="/mnt/c/ACE/Mods"
  else
    echo "ERROR: C:\\ACE\\Mods not found (Git Bash: /c/ACE/Mods, WSL: /mnt/c/ACE/Mods). Set WB_TEST_MODS." >&2
    exit 1
  fi
fi
BUILD_DIR="$REPO_ROOT/build"

cd "$REPO_ROOT"

if [ "${DEPLOY_TEST_MATCH_VOID_WORLD_DB:-0}" = "1" ]; then
  export WB_TEST_SQL_DATABASE="${VOID_SQL_DATABASE:-void-test_world}"
fi

echo "=== deploy-wb-test.sh (wb_test / C:\\ACE) ==="
echo "Repo: $REPO_ROOT"
echo "Target: $WB_TEST_MODS"
if [ "${DEPLOY_TEST_MATCH_VOID_WORLD_DB:-0}" = "1" ]; then
  echo "SQL DB: $WB_TEST_SQL_DATABASE (DEPLOY_TEST_MATCH_VOID_WORLD_DB=1 — same default DB name as void-test deploy)"
else
  echo "SQL DB: ${WB_TEST_SQL_DATABASE:-ace_world} (WB_TEST_SKIP_SQL=1 to skip; set DEPLOY_TEST_MATCH_VOID_WORLD_DB=1 to match void-test DB)"
fi
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

# ── Step 2: Kill wb_test ACE only (C:\ACE\, not C:\ACE-WB, not void-test) ─
echo "=== Step 2: Killing wb_test ACE.Server only (C:\\ACE) ==="
WB_ROOT="$(dirname "$WB_TEST_MODS")"
WB_PS_ROOT=""
if command -v cygpath &>/dev/null; then
  WB_PS_ROOT="$(cygpath -w "$WB_ROOT" 2>/dev/null || true)"
elif command -v wslpath &>/dev/null; then
  WB_PS_ROOT="$(wslpath -w "$WB_ROOT" 2>/dev/null || true)"
fi
if [ -z "$WB_PS_ROOT" ]; then
  WB_PS_ROOT="$WB_ROOT"
fi

if command -v powershell.exe &>/dev/null && [ -n "$WB_PS_ROOT" ]; then
  export DEPLOY_WB_ROOT="$WB_PS_ROOT"
  powershell.exe -NoProfile -ExecutionPolicy Bypass -Command '
    $wbRoot = $env:DEPLOY_WB_ROOT
    if ([string]::IsNullOrWhiteSpace($wbRoot)) { exit 0 }
    $like = "*" + $wbRoot + "\*"
    $procs = @(Get-CimInstance Win32_Process -ErrorAction SilentlyContinue | Where-Object {
      $cl = $_.CommandLine
      if ([string]::IsNullOrEmpty($cl)) { return $false }
      if ($cl -notlike $like) { return $false }
      if ($cl -like "*C:\ACE-WB*" -or $cl -like "*C:/ACE-WB*") { return $false }
      if ($cl -like "*void-test*" -or $cl -like "*\void-test*") { return $false }
      $n = $_.Name
      if ($n -eq "ACE.Server.exe" -or $n -like "ACE.Server*.exe") { return $true }
      if (($n -eq "dotnet.exe" -or $n -eq "dotnet") -and ($cl -match "ACE[\\/]Server")) { return $true }
      return $false
    })
    foreach ($p in $procs) {
      Stop-Process -Id $p.ProcessId -Force -ErrorAction SilentlyContinue
    }
    Write-Host ("  Stopped wb_test ACE process(es): " + $procs.Count)
  ' 2>/dev/null || true
  unset DEPLOY_WB_ROOT || true
else
  echo "  (skipped: powershell.exe or wb root path unavailable — stop C:\ACE ACE manually if needed)"
fi
# Clear watchdog block so next poll will restart clean
rm -f "$(dirname "$WB_TEST_MODS")/Server/wb_test_watchdog_BLOCKED.txt"
rm -f "$(dirname "$WB_TEST_MODS")/Server/wb_test_watchdog_state.json"
echo "  Done."
echo ""

# ── Step 3: Wipe wb_test Mods/ ────────────────────────────────────────────
echo "=== Step 3: Wiping $WB_TEST_MODS ==="
rm -rf "$WB_TEST_MODS"/*
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
  dst="$WB_TEST_MODS/$name"

  # Skip if build output doesn't exist
  [ -d "$src" ] || continue

  mkdir -p "$dst"

  # Copy all DLLs from build output (mod + ProjectReference + NuGet deps)
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

  # Copy Settings.json (prefer build output, fall back to source) — same as void-test
  if [ -f "$src/Settings.json" ]; then
    cp "$src/Settings.json" "$dst/Settings.json"
    echo "    Settings.json"
  elif [ -f "$name/Settings.json" ]; then
    cp "$name/Settings.json" "$dst/Settings.json"
    echo "    Settings.json (from source)"
  fi
done
echo ""

# ── Step 5: Apply repo Content/SQL to wb_test world DB ─────────────────────
echo "=== Step 5: Applying repo Content/SQL to MySQL ==="
if [ "${WB_TEST_SKIP_SQL:-0}" = "1" ]; then
  echo "  Skipped (WB_TEST_SKIP_SQL=1)"
else
  if [ -z "${ACE_MYSQL_USER:-}" ] || [ -z "${ACE_MYSQL_PASSWORD+x}" ]; then
    echo "ERROR: Export ACE_MYSQL_USER and ACE_MYSQL_PASSWORD before deploy (mysql credentials)." >&2
    echo "       Or set WB_TEST_SKIP_SQL=1 to deploy DLLs only." >&2
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
  SQL_DB="${WB_TEST_SQL_DATABASE:-ace_world}"
  export ACE_MYSQL_USER
  export ACE_MYSQL_PASSWORD
  export MYSQL_EXE
  PS_APPLY="${SCRIPT_PS}\\Apply-RepoModSqlToMysql.ps1"
  if ! powershell.exe -NoProfile -ExecutionPolicy Bypass -File "$PS_APPLY" -RepoRoot "$REPO_PS" -Database "$SQL_DB"; then
    echo "ERROR: Apply-RepoModSqlToMysql.ps1 failed." >&2
    exit 1
  fi
fi
echo ""

echo "=== Deploy complete ==="
echo "Mods deployed to: $WB_TEST_MODS"
echo ""
echo "Next: Restart the wb_test ACE server (C:\\ACE) to load new DLLs."
echo "  (e.g., restart ACE.Server under C:\\ACE\\Server or the wb_test watchdog)"
