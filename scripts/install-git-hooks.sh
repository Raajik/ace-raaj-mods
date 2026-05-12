#!/bin/sh
# Install git hooks for ace-raaj-mods
# Run from repo root: bash scripts/install-git-hooks.sh

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
HOOKS_DIR="$REPO_ROOT/scripts/git-hooks"
GIT_HOOKS_DIR="$REPO_ROOT/.git/hooks"

for hook in post-checkout pre-commit; do
    SRC="$HOOKS_DIR/$hook"
    DST="$GIT_HOOKS_DIR/$hook"
    if [ -f "$SRC" ]; then
        cp "$SRC" "$DST"
        chmod +x "$DST"
        echo "Installed $hook hook"
    else
        echo "Missing $SRC"
    fi
done

echo "Done. Hooks will now warn about uncommitted changes."
