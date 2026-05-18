# ACE Property Mappings

This document serves as the single source of truth for shared property IDs used across multiple mods in this repository.

| Property | Meaning | Used By |
|----------|---------|---------|
| `FakeFloat 11012` | EnlightenmentPoolBonus | AureatePath / Loremaster / ChallengeModes |
| `FakeInt 40113` | BuddySpawn tag | Swarmed |
| `FakeInt 10029` | CreatureExType | Swarmed |
| `FakeBool 40100` | GrowthItem | EmpyreanAlteration |
| `FakeBool 40130` | IsAwakened | EmpyreanAlteration |
| `FakeInt 40131` | AwakenedTier | EmpyreanAlteration |
| `FakeInt 40132` | PreImbuedCount | EmpyreanAlteration |
| `FakeInt 40133` | Overtinked custom imbue bitmask | Overtinked |
| `FakeInt 40134` | Shatter debuff stack count on creature | Overtinked |
| `FakeInt 40135` | Shatter broken (max stacks) on creature | Overtinked |
| `FakeString 11033` | OriginalName | EmpyreanAlteration |
| `FakeString 11034` | ProfileName | EmpyreanAlteration |
| `FakeBool 12003` | Summoning toggle (TEMP) - DO NOT REUSE | PersonalProjectsTesting |
| `FakeBool 12001` | Event announcement opt-out | WorldEvents |
| `FakeBool 12002` | **Legacy** periodic auto-claim flag (pre-json); migrated to `Mods/WorldEvents/PendingClaimsAuto/<guid>.json` on login/tick - do not reuse for new features | WorldEvents |
