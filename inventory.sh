#!/usr/bin/env bash
# inventory.sh – generate mod inventory files (lightweight)

set -euo pipefail

# Directories to skip
SKIP=(
  ".git"
  ".cursor"
  ".opencode"
  ".references"
  ".worktrees"
  "scripts"
  "docs"
  "tools"
  "templates"
  ".*"
)

# Output files
LIST_FILE="mod_list.md"
OVERVIEW_FILE="mod_overview.md"

# Write header for inventory table
echo "# Mod Inventory" > "$LIST_FILE"
echo "" >> "$LIST_FILE"
echo "| Mod | Purpose (first line of README) | Settings.json? | Cross-mod refs? |" >> "$LIST_FILE"
echo "|---|---|---|---|" >> "$LIST_FILE"

# Write overview file header
echo "# Mod Overview" > "$OVERVIEW_FILE"
echo "" >> "$OVERVIEW_FILE"
echo "High‑level overview of each mod. Purpose taken from the first line of README.md." >> "$OVERVIEW_FILE"
echo "" >> "$OVERVIEW_FILE"

# Helper: skip hidden dirs
is_skipped() {
  local dir="$1"
  for s in "${SKIP[@]}"; do
    if [[ "$dir" == "$s" ]]; then return 0; fi
  done
  return 1
}

# Loop through top‑level directories only
for entry in */; do
  # Remove trailing slash
  name="${entry%/}"
  # Skip if empty or skipped
  [[ -z "$name" ]] && continue
  is_skipped "$name" && continue

  # Get purpose from README if it exists
  if [[ -f "${name}/README.md" ]]; then
    purpose=$(head -n 1 "${name}/README.md" | sed 's/^# \?//' | tr -d '\r' || true)
    [[ -z "$purpose" ]] && purpose="No README"
  else
    purpose="No README"
  fi

  # Settings.json presence
  if [[ -f "${name}/Settings.json" ]]; then
    has_settings="✅"
  else
    has_settings="❌"
  fi

  # Detect cross-mod references - simple check for a few known patterns
  # (avoid deep greps that can cause long scans)
  cross_refs=()
  for target in */; do
    t="${target%/}"
    [[ "$t" == "$name" ]] && continue
    [[ -f "${t}/README.md" ]] && grep -i "$name" "${t}/README.md" | head -n 1 && cross_refs+=("$t")
  done
  if (( ${#cross_refs[@]} )); then
    cross_deps=$(IFS=", "; echo "${cross_refs[*]}")
    cross_deps_icon="🔗"
  else
    cross_deps_icon=""
  fi

  # Append table row
  echo "| ${name} | ${purpose} | ${has_settings} | ${cross_deps_icon} |" >> "$LIST_FILE"

  # Append overview details
  echo "## ${name}" >> "$OVERVIEW_FILE"
  echo "- **Purpose**: ${purpose}" >> "$OVERVIEW_FILE"
  echo "- **Contains Settings.json**: ${has_settings}" >> "$OVERVIEW_FILE"
  if [[ -n "$cross_deps_icon" ]]; then
    echo "- **Cross‑mod deps**: ${cross_deps}" >> "$OVERVIEW_FILE"
  fi
  echo "" >> "$OVERVIEW_FILE"
done

echo "✅ Inventory complete."
echo "Generated: $LIST_FILE and $OVERVIEW_FILE"
