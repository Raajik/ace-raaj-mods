# ACE Quick Gotchas

This document contains a collection of common pitfalls and "gotchas" encountered when developing for the ACE environment. For full details, please refer to the relevant pages in the Wiki.

| Gotcha | Fix | Wiki |
|--------|-----|------|
| `WorldObject` is abstract | Use `WorldObjectFactory.CreateNewWorldObject` | [[ACE Entity Gotchas]] |
| `Vendor.DefaultItemsForSale` is readonly | Only `.Add()` / `.Remove()` / `.Clear()` | [[ACE Entity Gotchas]] |
| `ItemType.Shield` does NOT exist | Use `ItemType.Armor` | [[ACE Entity Gotchas]] |
| `/god` sets `IsAdmin` but NOT `player.Level` | Add `AdminLevelOverrideProperty` | [[ACE Entity Gotchas]] |
| `Meta.json` not copying to output | Use `PreserveNewest` in `.csproj` | [[ACE Entity Gotchas]] |
| `BasicPatch<T>.Settings` is NOT static | `GetField(..., Instance)` or read from disk | [[ACE Entity Gotchas]] |
| Stackable items need 11 int props | SQL template + Harmony postfixes | [[Stackable Items Checklist]] |
| SQL dumps contain `CREATE DATABASE` | Strip before piping; never `sed` a dump | [[operations/SQL Procedures]] |
| `SpellId.Undef` in blast spells | Filter `Undef` from rolled lists | [[ACE Vanilla Behavior Traps]] |
| `InqYesNo` emote type 75: `message` vs `test_String` | `message` = player-facing text, `test_String` = routing key. Swapped = routing key shown as popup | [[ACE Vanilla Behavior Traps]] |
| Empty `PropertiesEmoteAction` in emote set | `ElementAt(0)` in `EmoteManager.Enqueue` throws `ArgumentOutOfRangeException`. Always clone emote actions alongside headers - bare headers with no actions crash the server on turn-in. | [[ace-raaj-mods Patterns]] |
| Synchronous `TryCastSpell` during `HandleCastSpell` prefix | Creates spell projectiles while LandblockManager.TickPhysics iterates in Parallel.ForEach $\rightarrow$ `Collection was modified` crash. Defer via `WorldManager.EnqueueAction`. | [[ace-raaj-mods Patterns]] |
| Non-sequential ACE IDs | Use hardcoded arrays, never arithmetic | [[ACE Vanilla Behavior Traps]] |
| `Assembly.Location` is empty for plugin-loaded assemblies | Use `Assembly.GetEntryAssembly().Location` (ACE.Server.exe) for absolute paths | [[ACE Entity Gotchas]] |
| `MaybeMergeLegacyWcidOffsetSalvageBank` legacy prop formula collides with current correct props | Disable if no legacy data; or add collision check via `correctPropSet` | [[ace-raaj-mods Patterns]] |
| `IsValidSalvageWcid` only covers standard salvage bags (20980-21089) | Quest salvage bags (29571-29582, 36570-36574) need `AdditionalDepositWeenieClassIds` in LLL DepositRules | [[ace-raaj-mods Patterns]] |
| ACE `*_100_CLASS` weenies (29571+ / 36570+) = 100-unit material bags | Map via `AdditionalDepositWecidIds` on the corresponding LLL DepositRule | [[ace-raaj-mods Patterns]] |
