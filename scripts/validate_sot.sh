#!/bin/bash
# Immutable Source of Truth Audit Script
# Run from repo root: bash scripts/validate_sot.sh
# Exits with non-zero if any check fails.
# Can be run in CI or manually.

set -euo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

PASS=0
FAIL=0
WARN=0

check_pass() {
    echo -e "${GREEN}[PASS]${NC} $1"
    PASS=$((PASS + 1))
}

check_fail() {
    echo -e "${RED}[FAIL]${NC} $1"
    FAIL=$((FAIL + 1))
}

check_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
    WARN=$((WARN + 1))
}

echo "========================================"
echo " Immutable Source of Truth Audit"
echo " Date: $(date -u '+%Y-%m-%d %H:%M UTC')"
echo "========================================"
echo ""

# ─── Check 1: README.md per mod ───
echo "--- 1. Mod README Coverage ---"
REQUIRED_README_MODS=(
    "AchievementUnlocked" "AureatePath" "AutoLoot" "BetterKeys"
    "BetterLootControl" "BetterSupportSkills" "ChallengeModes" "CommonGoals"
    "CustomSpells" "EasyServerSettings" "EmpyreanAlteration" "LeyLineLedger"
    "Lockboxes" "Loremaster" "Numbersmith" "Overtinked" "QOL"
    "SpellSiphon" "Swarmed" "Windblown" "WorldEvents"
)

for mod in "${REQUIRED_README_MODS[@]}"; do
    if [ -f "$mod/README.md" ] || [ -f "$mod/Readme.md" ]; then
        check_pass "$mod/Readme.md exists"
    else
        check_fail "$mod/Readme.md MISSING"
    fi
done

echo ""

# ─── Check 2: Settings.json per mod ───
echo "--- 2. Settings.json Coverage ---"
REQUIRED_SETTINGS_MODS=(
    "AchievementUnlocked" "AureatePath" "AutoLoot" "BetterKeys"
    "BetterLootControl" "BetterSupportSkills" "ChallengeModes" "CommonGoals"
    "CustomSpells" "EasyServerSettings" "EmpyreanAlteration" "LeyLineLedger"
    "Lockboxes" "Loremaster" "Numbersmith" "Overtinked" "QOL"
    "SpellSiphon" "Swarmed" "ValheelContent" "Windblown"
    "WorldEvents"
)

for mod in "${REQUIRED_SETTINGS_MODS[@]}"; do
    if [ -f "$mod/Settings.json" ]; then
        check_pass "$mod/Settings.json exists"
    else
        check_fail "$mod/Settings.json MISSING"
    fi
done

echo ""

# ─── Check 3: Source-of-Truth Docs ───
echo "--- 3. Source-of-Truth Documentation ---"
if [ -f "FEATURE_MATRIX.md" ]; then
    check_pass "FEATURE_MATRIX.md exists"
else
    check_fail "FEATURE_MATRIX.md MISSING"
fi

if [ -f "FEATURE_TRUTH.md" ]; then
    check_pass "FEATURE_TRUTH.md exists"
else
    check_fail "FEATURE_TRUTH.md MISSING"
fi

if [ -f ".github/PULL_REQUEST_TEMPLATE.md" ]; then
    check_pass "PULL_REQUEST_TEMPLATE.md exists"
else
    check_fail "PULL_REQUEST_TEMPLATE.md MISSING"
fi

if [ -f "docs/FeatureTemplate.md" ] || [ -f "Docs/FeatureTemplate.md" ]; then
    check_pass "docs/FeatureTemplate.md exists"
else
    check_warn "docs/FeatureTemplate.md MISSING"
fi

echo ""

# ─── Check 4: Backup Directory Exists ───
echo "--- 4. SQL Backup Directory ---"
if [ -d "sql-backups" ]; then
    check_pass "sql-backups/ exists"
else
    check_warn "sql-backups/ missing (create if SQL work planned)"
fi

echo ""

# ─── Summary ───
echo "========================================"
echo " RESULTS: ${GREEN}$PASS passed${NC}, ${RED}$FAIL failed${NC}, ${YELLOW}$WARN warnings${NC}"
echo "========================================"

if [ "$FAIL" -gt 0 ]; then
    exit 1
fi
exit 0
