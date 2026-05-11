#!/usr/bin/env bash
# deploy-void-test.sh — Full clean deploy of ALL buildable mods to void-test
#
# Usage:  bash scripts/deploy-void-test.sh
#
# What it does:
#   1. Builds every mod in the repo that has a .csproj
#   2. WIPES A:\void-test\Mods\ entirely (clean slate, no stale DLLs)
#   3. Copies each mod's DLL + Meta.json + Settings.json from build/ output
#   4. Excludes ValheelContent (permanently), Shared/ (no csproj), build/ (output dir)
#   5. Prints a restart reminder
#
# ⚠️  SQL DOES NOT AUTO-DEPLOY (push void = DLL + Settings + YOU apply SQL to void-test_world).
#    PowerShell pipe pattern (wiki: operations/SQL Procedures, operations/Deploy Procedures):
#      Get-Content "A:\ai\projects\ace-raaj-mods\SpellSiphon\Content\SQL\Spellsiphon_Tool_Create.sql" | & 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe' -u jeremy -pandersine11 "void-test_world"
#    Scoped backup before mutating weenies (example):
#      & 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe' -u jeremy -pandersine11 --single-transaction --skip-lock-tables "void-test_world" weenie --where="class_Id=850200" > WindblownContent/sql-backups/YYYY-MM-DD/pre-850200.sql
#    Windblown SQL: Windblown/Content/SQL/ — see Windblown/docs/CustomTrophyNPC-Deployment-Standard.md
#
# Trigger phrase for agents:  "push void" or "deploy void"
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

echo "=== deploy-void-test.sh ==="
echo "Repo: $REPO_ROOT"
echo "Target: $VOID_MODS"
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

# ── Step 2: Kill running server so watchdog can't start mid-deploy ───────
echo "=== Step 2: Killing running ACE server ==="
if command -v powershell.exe &>/dev/null; then
  powershell.exe -Command "Get-Process ACE.Server -ErrorAction SilentlyContinue | Stop-Process -Force" 2>/dev/null || true
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

echo "=== Deploy complete ==="
echo "Mods deployed to: $VOID_MODS"
echo ""
echo "Next: Restart the void-test ACE server to load new DLLs."
echo "  (e.g., restart the ACE.Server service on Windows)"