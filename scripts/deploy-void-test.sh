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

# ── Step 2: Wipe void-test Mods/ ──────────────────────────────────────────
echo "=== Step 2: Wiping $VOID_MODS ==="
rm -rf "$VOID_MODS"/*
echo "  Done."
echo ""

# ── Step 3: Copy build output ─────────────────────────────────────────────
echo "=== Step 3: Copying mods ==="
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

  # Copy DLL
  cp "$src/$name.dll" "$dst/$name.dll" 2>/dev/null && echo "  ✅ $name.dll" || echo "  ⚠️  $name.dll not found"

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