"""One-off: EasyServerSettings/Sql/ace-shard-settings.sql -> Presets/RaajDefault.json"""
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SQL = ROOT / "EasyServerSettings" / "Sql" / "ace-shard-settings.sql"
OUT = ROOT / "EasyServerSettings" / "Presets" / "RaajDefault.json"

BOOL_RE = re.compile(
    r"config_properties_boolean SET `value` = (TRUE|FALSE) WHERE `key` = '([^']+)'"
)
LONG_RE = re.compile(
    r"config_properties_long SET `value` = (-?\d+) WHERE `key` = '([^']+)'"
)
DOUBLE_RE = re.compile(
    r"config_properties_double SET `value` = ([-+]?\d*\.?\d+(?:[eE][-+]?\d+)?) WHERE `key` = '([^']+)'"
)


def main() -> None:
    text = SQL.read_text(encoding="utf-8")
    bools: dict[str, bool] = {}
    longs: dict[str, int] = {}
    doubles: dict[str, float] = {}
    for line in text.splitlines():
        m = BOOL_RE.search(line)
        if m:
            bools[m.group(2)] = m.group(1) == "TRUE"
            continue
        m = LONG_RE.search(line)
        if m:
            longs[m.group(2)] = int(m.group(1))
            continue
        m = DOUBLE_RE.search(line)
        if m:
            doubles[m.group(2)] = float(m.group(1))

    OUT.parent.mkdir(parents=True, exist_ok=True)
    payload = {
        "description": "Parsed from EasyServerSettings/Sql/ace-shard-settings.sql.",
        "booleans": dict(sorted(bools.items())),
        "longs": dict(sorted(longs.items())),
        "doubles": dict(sorted(doubles.items())),
    }
    OUT.write_text(
        json.dumps(payload, indent=2, sort_keys=False) + "\n",
        encoding="utf-8",
    )
    print(f"Wrote {OUT} ({len(bools)} bool, {len(longs)} long, {len(doubles)} double)")


if __name__ == "__main__":
    main()
