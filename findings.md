# Findings — BSS / LLL Debug 2026-05-11

## Salvage interop

- User-reported failing salvage WCIDs (`21052`, `21042`, `21050`, `21059`, `21058`, `20982`, `21045`, `21070`) all exist in `LeyLineLedger/Settings.json` `SalvageBank.DepositRules`.
- `A:\void-test\Server\ACE_Log.txt` shows LeyLineLedger fully initialized well before the salvage warnings.
- Shared resolver bug found in `Shared/LeyLineLedgerSalvageBankInterop.cs`:
  - `patchType.GetProperty("Settings", BindingFlags.Public | BindingFlags.Static)` does **not** find inherited static properties.
  - Reflection repro confirms inherited static lookup needs `BindingFlags.FlattenHierarchy`.
- Because the LLL assembly is loaded but `settings` resolves null, the code returns `-1` instead of resolving the bank property. That exactly matches the live `"[BSS->LLL Salvage]"` warnings.

## MagicWithoutMC

- Void-test log shows NREs happen right after ArcaneLore follow-up casts on the player target.
- `MagicWithoutManaConversion.PostHandleCastSpellEcho()` routes replay casts through `BssPlayerPaidSpellCast.TryCastSpellWithRedirects_PlayerMana()`.
- In ACE source, `Player.CalculateManaUsage(...)` unconditionally calls:
  - `Proficiency.OnSuccessUse(this, GetCreatureSkill(Skill.ManaConversion), spell.PowerMod);`
- In ACE source, `Proficiency.OnSuccessUse(Player, CreatureSkill, ...)` dereferences `skill.AdvancementClass` with no null guard.
- Therefore MagicWithoutMC currently reuses a mana/proficiency path that assumes Mana Conversion exists, but the feature specifically targets players who may not have that skill trained.

## Verification targets after fix

- No new `"[BSS->LLL Salvage] Could not resolve bank PropertyInt64..."` lines for stack salvage WCIDs that are present in `DepositRules`
- No new `"[BSS MagicWithoutMC] PostHandleCastSpellEcho error..."` lines during ArcaneLore echo chains

## Drudge charm regression

- Current live drudge charm line is `24835 -> 850300..850303` (`Windblown/Content/TrophyLines/drudge-charm.json`), not the older `3669 -> 850271..850273` setup in the wiki note.
- Custom weenies `850300..850303` correctly set `StackSize = 1` in `Windblown/Content/Weenies/drudge-charms.json`.
- `Windblown/TrophyLines/TrophyDropPatches.cs` does **sibling replacement only**:
  - if vanilla sibling WCID drops on corpse, it removes that item
  - creates the custom base WCID
  - reapplies the **same original stack count**
- `Windblown/ItemsRemovalPatches.cs` blocked only `31352/31354/31355`; it did **not** block vanilla `24835`.
- Therefore any still-active vanilla source for `24835` (likely ACE treasure/create-list path) gets remapped into a custom stack with the same size. That explains the observed stack-40 drudge charms.
