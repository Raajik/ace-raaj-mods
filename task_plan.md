# Task Plan: Olthoi Ichor Clone + Remove Old Drops + Timewalker Kaleb

**Status**: ✅ Complete

## Summary of Changes

### Completed

- ✅ **Custom weenie 850339** (`Windblown/Content/Weenies/olthoi-ichor.json`): Stackable clone of 10864 (Olthoi Ichor), blue underlay, MirrorEmoteFromWcid 3680
- ✅ **Trophy line** (`Windblown/Content/TrophyLines/olthoi-ichor.json`): Single tier, Olthoi gate, 1.5% chance, ReplaceSiblingWcids [10864], bank credit 100k
- ✅ **SQL registration** (`Windblown/Content/SQL/Items/07_OlthoiIchorTrophy_850339.sql`): Weenie + cook_book recipe redirect
- ✅ **Harmony patch** (`Windblown/ItemsRemovalPatches.cs`): Prefix on `WorldObjectFactory.CreateNewWorldObject(uint)` blocking 31352, 31354, 31355
- ✅ **Timewalker Kaleb (810001)**: Vendor in Town Network, AltCurrency=20630 (MMD), sells vanilla 10864 + other replaced trophy originals
- ✅ **Spawn placement**: Cell `0x00070155`, `[80.5, -60.0, 0.005]`, GUID 0x70130051
- ✅ **Config**: AutoLoot + QOL StackableQuestWcids updated with 850339
- ✅ **Docs**: TrophyLineRegistry, TownNetwork-Positions, CustomTrophyNPC-Deployment-Standard.md

### Notes

- Vanilla 10864 still sold by Kaleb (recipe failsafe) — keeps working with recipe 2450
- 850339 also works with recipe 2450 (separate cook_book entry)
- 31352/31354/31355 completely blocked from ALL creation (loot + gambling + admin)
- Used **Prefix** (not Postfix) — more reliable than filtering after creation
- JSON weenie properties loaded at runtime by WeenieLoader mod system