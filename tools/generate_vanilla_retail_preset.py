"""
Download ACE PropertyManager.cs (contains DefaultPropertyManager) and emit
EasyServerSettings/Presets/VanillaRetail.json with all Default* dictionary values.

Run after ACE adds/removes shard config keys. Requires network.
"""
import json
import re
import urllib.request

URL = (
    "https://raw.githubusercontent.com/ACEmulator/ACE/master/"
    "Source/ACE.Server/Managers/PropertyManager.cs"
)
OUT = __import__("pathlib").Path(__file__).resolve().parents[1] / "EasyServerSettings" / "Presets" / "VanillaRetail.json"

BOOL_PAIR = re.compile(r'\("([^"]+)",\s*new Property<bool>\((true|false),', re.I)
LONG_PAIR = re.compile(r'\("([^"]+)",\s*new Property<long>\((-?\d+),', re.I)
DOUBLE_PAIR = re.compile(
    r'\("([^"]+)",\s*new Property<double>\(([-+]?\d+(?:\.\d+)?(?:[eE][-+]?\d+)?),',
    re.I,
)


def extract_block(text: str, start_marker: str, end_marker: str) -> str:
    i = text.find(start_marker)
    if i < 0:
        raise SystemExit(f"marker not found: {start_marker!r}")
    j = text.find(end_marker, i + len(start_marker))
    if j < 0:
        raise SystemExit(f"end marker not found: {end_marker!r}")
    return text[i:j]


def main() -> None:
    with urllib.request.urlopen(URL, timeout=60) as r:
        text = r.read().decode("utf-8")

    bool_section = extract_block(
        text,
        "DefaultBooleanProperties =",
        "public static readonly ReadOnlyDictionary<string, Property<long>> DefaultLongProperties",
    )
    long_section = extract_block(
        text,
        "DefaultLongProperties =",
        "public static readonly ReadOnlyDictionary<string, Property<double>> DefaultDoubleProperties",
    )
    double_section = extract_block(
        text,
        "DefaultDoubleProperties =",
        "public static readonly ReadOnlyDictionary<string, Property<string>> DefaultStringProperties",
    )

    bools = {m.group(1): m.group(2).lower() == "true" for m in BOOL_PAIR.finditer(bool_section)}
    longs = {m.group(1): int(m.group(2)) for m in LONG_PAIR.finditer(long_section)}
    doubles = {m.group(1): float(m.group(2)) for m in DOUBLE_PAIR.finditer(double_section)}

    OUT.parent.mkdir(parents=True, exist_ok=True)
    doc = {
        "description": "ACE upstream DefaultPropertyManager defaults (from PropertyManager.cs on ACE master).",
        "source_url": URL,
        "booleans": dict(sorted(bools.items())),
        "longs": dict(sorted(longs.items())),
        "doubles": dict(sorted(doubles.items())),
    }
    OUT.write_text(json.dumps(doc, indent=2) + "\n", encoding="utf-8")
    print(f"Wrote {OUT} ({len(bools)} bool, {len(longs)} long, {len(doubles)} double)")


if __name__ == "__main__":
    main()
