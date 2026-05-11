#!/usr/bin/env bash
# sync-world-void-test-to-wb-test.sh — Copy MySQL world schema + data void-test_world → ace_world
#
# Use when void-test and C:\ACE both run 24/7: they cannot share one world DB. This clones the
# canonical void-test world into wb_test's world DB so wb_test matches void-test world state.
#
# Prerequisites:
#   export ACE_MYSQL_USER=...  export ACE_MYSQL_PASSWORD=...
#   Or create scripts/.deploy-mysql.env (gitignored; see scripts/.deploy-mysql.env.example).
#   Optional: MYSQL_EXE (default: MySQL 8.0 under Program Files on Windows)
#   Optional: VOID_SQL_DATABASE (default void-test_world), WB_TEST_SQL_DATABASE (default ace_world)
#
# Strongly recommended before run:
#   Stop ACE.Server on C:\ACE (wb_test) for the import window to avoid torn reads/writes.
#   void-test ACE can keep running; mysqldump uses --single-transaction (InnoDB consistent snapshot).
#
# Usage:
#   bash scripts/sync-world-void-test-to-wb-test.sh
#
# Dry run (dump only, no import):
#   SYNC_WORLD_DRY_RUN=1 bash scripts/sync-world-void-test-to-wb-test.sh
#
# Partial sync (only listed tables — leaves other tables in dest untouched; use if world+shard
# share one DB and you must not touch biota/character tables):
#   SYNC_WORLD_TABLES="weenie,weenie_properties_emote,weenie_properties_emote_action,landblock_instance" \
#     bash scripts/sync-world-void-test-to-wb-test.sh
#   (comma-separated, no spaces required; trims spaces around names.)
#
# Character / housing safety backups (before world import; skipped when SYNC_WORLD_DRY_RUN=1):
#   WB_TEST_SHARD_DATABASE or SYNC_WORLD_SHARD_DATABASE — full mysqldump of that DB when it
#     differs from the dest world DB (typical split World vs Shard on wb_test).
#   Default: also dumps biota/character/house* tables that exist in the dest world DB alone
#     into *-player-housing-tables-pre-sync-*.sql (handy surgical restore on combined-DB installs).
#   SYNC_WORLD_SKIP_PLAYER_BACKUP=1 — skip 1b/1c entirely.
#   SYNC_WORLD_BACKUP_DEST_PLAYER_TABLES=0 — skip only the dest-table subset (1c); shard dump (1b) still runs if set.
#
# See AGENTS.md §5.
# World schema only: if ACE uses a separate shard database, clone that schema with the same
# pattern (different script/env names) — this script does not touch shard.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

if [ -f "$REPO_ROOT/scripts/.deploy-mysql.env" ]; then
  set +u
  # shellcheck disable=SC1090
  . "$REPO_ROOT/scripts/.deploy-mysql.env"
  set -u
fi

SOURCE_DB="${VOID_SQL_DATABASE:-void-test_world}"
DEST_DB="${WB_TEST_SQL_DATABASE:-ace_world}"

# Optional: comma-separated table names → mysqldump only those tables (partial replace on dest).
SYNC_TABLE_ARGS=()
if [ -n "${SYNC_WORLD_TABLES:-}" ]; then
  _csv="${SYNC_WORLD_TABLES//$'\r'/}"
  _lines=()
  mapfile -t _lines < <(printf '%s' "$_csv" | tr ',' '\n')
  for _t in "${_lines[@]}"; do
    _t="${_t#"${_t%%[![:space:]]*}"}"
    _t="${_t%"${_t##*[![:space:]]}"}"
    [ -n "$_t" ] && SYNC_TABLE_ARGS+=("$_t")
  done
fi

if [ -z "${ACE_MYSQL_USER:-}" ] || [ -z "${ACE_MYSQL_PASSWORD+x}" ]; then
  echo "ERROR: Set ACE_MYSQL_USER and ACE_MYSQL_PASSWORD." >&2
  exit 1
fi

MYSQL_EXE="${MYSQL_EXE:-}"
if [ -z "$MYSQL_EXE" ]; then
  if [ -x "/c/Program Files/MySQL/MySQL Server 8.0/bin/mysql.exe" ]; then
    MYSQL_EXE="/c/Program Files/MySQL/MySQL Server 8.0/bin/mysql.exe"
  elif [ -x "/mnt/c/Program Files/MySQL/MySQL Server 8.0/bin/mysql.exe" ]; then
    MYSQL_EXE="/mnt/c/Program Files/MySQL/MySQL Server 8.0/bin/mysql.exe"
  else
    MYSQL_EXE="mysql"
  fi
fi

if ! command -v "$MYSQL_EXE" &>/dev/null && ! [ -x "$MYSQL_EXE" ]; then
  echo "ERROR: mysql client not found: $MYSQL_EXE (set MYSQL_EXE)" >&2
  exit 1
fi

BACKUP_ROOT="${SYNC_WORLD_BACKUP_DIR:-$REPO_ROOT/sql-backups/world-sync}"
mkdir -p "$BACKUP_ROOT"
STAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP_FILE="$BACKUP_ROOT/${DEST_DB}-pre-sync-${STAMP}.sql"

echo "=== sync-world-void-test-to-wb-test.sh ==="
echo "Source DB: $SOURCE_DB"
echo "Dest DB:   $DEST_DB"
echo "Backup:    $BACKUP_FILE"
if [ "${#SYNC_TABLE_ARGS[@]}" -gt 0 ]; then
  echo "Mode:      PARTIAL (${#SYNC_TABLE_ARGS[@]} tables)"
  echo "Tables:    ${SYNC_TABLE_ARGS[*]}"
else
  echo "Mode:      FULL (entire database $DEST_DB will be replaced from $SOURCE_DB)"
  echo "           If player/biota data lives in this DB, confirm config or use SYNC_WORLD_TABLES."
fi
echo ""

# Keep the option file on the repo drive: Windows mysql.exe cannot read WSL/MSYS /tmp paths.
cnf="$(mktemp "$BACKUP_ROOT/ace-world-sync-XXXXXX.cnf")"
chmod 600 "$cnf" 2>/dev/null || true
cleanup() { rm -f "$cnf" 2>/dev/null || true; }
trap cleanup EXIT

printf '%s\n' '[client]' "user=$ACE_MYSQL_USER" "password=$ACE_MYSQL_PASSWORD" >"$cnf"

CNF_CLI="$cnf"
case "$MYSQL_EXE" in
  *.[Ee][Xx][Ee])
    if command -v wslpath &>/dev/null; then
      CNF_CLI="$(wslpath -w "$cnf" 2>/dev/null || echo "$cnf")"
    elif command -v cygpath &>/dev/null; then
      CNF_CLI="$(cygpath -w "$cnf" 2>/dev/null || echo "$cnf")"
    fi
    ;;
esac

echo "=== Step 1: Backup destination world ($DEST_DB) ==="
"$MYSQL_EXE" --defaults-extra-file="$CNF_CLI" --default-character-set=utf8mb4 \
  --single-transaction --set-gtid-purged=OFF --routines --triggers --events \
  --databases "$DEST_DB" >"$BACKUP_FILE"
echo "  Done."
echo ""

if [ "${SYNC_WORLD_DRY_RUN:-0}" != "1" ] && [ "${SYNC_WORLD_SKIP_PLAYER_BACKUP:-0}" != "1" ]; then
  SHARD_DB="${SYNC_WORLD_SHARD_DATABASE:-${WB_TEST_SHARD_DATABASE:-}}"
  if [ -n "$SHARD_DB" ] && [ "$SHARD_DB" != "$DEST_DB" ]; then
    SHARD_BACKUP="$BACKUP_ROOT/${SHARD_DB}-shard-pre-sync-${STAMP}.sql"
    echo "=== Step 1b: Backup wb_test shard ($SHARD_DB) ==="
    "$MYSQL_EXE" --defaults-extra-file="$CNF_CLI" --default-character-set=utf8mb4 \
      --single-transaction --set-gtid-purged=OFF --routines --triggers --events \
      --databases "$SHARD_DB" >"$SHARD_BACKUP"
    echo "  Wrote $SHARD_BACKUP"
    echo ""
  elif [ -n "$SHARD_DB" ] && [ "$SHARD_DB" = "$DEST_DB" ]; then
    echo "=== Step 1b: Skipping shard-only dump ($SHARD_DB equals dest world; Step 1 is already a full backup) ==="
    echo ""
  fi

  if [ "${SYNC_WORLD_BACKUP_DEST_PLAYER_TABLES:-1}" != "0" ]; then
    echo "=== Step 1c: Backup character / biota / housing tables in $DEST_DB (if present) ==="
    PLAYER_TABS=()
    _q="SELECT table_name FROM information_schema.tables WHERE table_schema='${DEST_DB}' AND (table_name IN ('biota','character','house') OR table_name LIKE 'biota\\_%' OR table_name LIKE 'character\\_%' OR table_name LIKE 'house\\_%') ORDER BY table_name;"
    while IFS= read -r _tab; do
      [ -n "$_tab" ] && PLAYER_TABS+=("$_tab")
    done < <("$MYSQL_EXE" --defaults-extra-file="$CNF_CLI" -N -B --default-character-set=utf8mb4 -e "$_q")
    if [ "${#PLAYER_TABS[@]}" -eq 0 ]; then
      echo "  (no matching tables in $DEST_DB — normal if shard holds players; set WB_TEST_SHARD_DATABASE for a full shard snapshot)"
    else
      PLAYER_BACKUP="$BACKUP_ROOT/${DEST_DB}-player-housing-tables-pre-sync-${STAMP}.sql"
      "$MYSQL_EXE" --defaults-extra-file="$CNF_CLI" --default-character-set=utf8mb4 \
        --single-transaction --set-gtid-purged=OFF --triggers \
        "$DEST_DB" "${PLAYER_TABS[@]}" >"$PLAYER_BACKUP"
      echo "  Wrote $PLAYER_BACKUP (${#PLAYER_TABS[@]} tables)"
    fi
    echo ""
  fi
elif [ "${SYNC_WORLD_SKIP_PLAYER_BACKUP:-0}" = "1" ]; then
  echo "=== Step 1b/1c: Skipped (SYNC_WORLD_SKIP_PLAYER_BACKUP=1) ==="
  echo ""
elif [ "${SYNC_WORLD_DRY_RUN:-0}" = "1" ]; then
  echo "=== Step 1b/1c: Skipped (SYNC_WORLD_DRY_RUN=1; no import) ==="
  echo ""
fi

echo "=== Step 2: Dump $SOURCE_DB → rewrite DB name → import into $DEST_DB ==="

# No --databases on source: dump is USE `source`; + tables (avoids CREATE DATABASE for wrong name).
# sed rewrites every backtick-qualified source schema token to dest (USE + rare `src`.`tbl` refs).
sed_rewrite='s/`'"${SOURCE_DB}"'`/`'"${DEST_DB}"'`/g'

DUMP_BASE_FLAGS=(--defaults-extra-file="$CNF_CLI" --default-character-set=utf8mb4
  --single-transaction --set-gtid-purged=OFF --triggers)
if [ "${#SYNC_TABLE_ARGS[@]}" -eq 0 ]; then
  DUMP_BASE_FLAGS+=(--routines --events)
fi

if [ "${SYNC_WORLD_DRY_RUN:-0}" = "1" ]; then
  DUMP_ONLY="$BACKUP_ROOT/${SOURCE_DB}-dry-run-${STAMP}.sql"
  if [ "${#SYNC_TABLE_ARGS[@]}" -gt 0 ]; then
    "$MYSQL_EXE" "${DUMP_BASE_FLAGS[@]}" "$SOURCE_DB" "${SYNC_TABLE_ARGS[@]}" \
      | sed "$sed_rewrite" >"$DUMP_ONLY"
  else
    "$MYSQL_EXE" "${DUMP_BASE_FLAGS[@]}" "$SOURCE_DB" \
      | sed "$sed_rewrite" >"$DUMP_ONLY"
  fi
  echo "  Dry run: wrote $DUMP_ONLY (no import)."
  exit 0
fi

if [ "${#SYNC_TABLE_ARGS[@]}" -gt 0 ]; then
  "$MYSQL_EXE" "${DUMP_BASE_FLAGS[@]}" "$SOURCE_DB" "${SYNC_TABLE_ARGS[@]}" \
    | sed "$sed_rewrite" \
    | "$MYSQL_EXE" --defaults-extra-file="$CNF_CLI" --default-character-set=utf8mb4 "$DEST_DB"
else
  "$MYSQL_EXE" "${DUMP_BASE_FLAGS[@]}" "$SOURCE_DB" \
    | sed "$sed_rewrite" \
    | "$MYSQL_EXE" --defaults-extra-file="$CNF_CLI" --default-character-set=utf8mb4 "$DEST_DB"
fi

echo "  Done."
echo ""
echo "=== Sync complete ==="
echo "Next: restart wb_test ACE (C:\\ACE) if it was stopped; run bash scripts/deploy-wb-test.sh"
echo "      (default SQL target ace_world) to re-apply repo Content/SQL on top of the clone."
echo ""
