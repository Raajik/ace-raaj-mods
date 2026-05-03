# Findings — Defense Imbue Client Hourglass Investigation

## Date: 2026-05-03

## Problem Statement
Applying defense imbues (Peridot MeleeDefense, Yellow Topaz MissileDefense, Zircon MagicDefense) to armor causes a **persistent client-side hourglass** when the item is appraised (press E). Attack imbues (Sunstone ArmorRending) on weapons do NOT cause this. The hourglass is cosmetic — other actions are not blocked.

## Ruled Out (with evidence)

### 1. Overtinked mod
- Disabled `Meta.json` → Enabled=false. Rebuilt, redeployed, restarted server.
- **Result:** Hourglass still occurs.
- **Conclusion:** Overtinked is NOT the cause.

### 2. SQL description changes
- Ran `zzz_Salvage_Defense_Bonus_Rollback.sql` to revert description changes.
- **Result:** Hourglass still occurs.
- **Conclusion:** SQL text updates are innocent.

### 3. Server-side infinite loops in appraisal code
- Examined `AppraiseInfo.BuildProfile`, `BuildArmor`, `AddEnchantments`, `AddPropertyEnchantments`, `ArmorProfile` constructor, `ArmorMaskHelper.GetHighlightMask`, `BuildFlags`, `GameEventIdentifyObjectResponse`.
- All paths are finite and straightforward.
- **Conclusion:** The hang is NOT in server appraisal logic. The server completes the response; the client is unhappy with it.

### 4. Incorrect recipe / cookbook mappings
- Queried `ace_world.cook_book`: Peridot→4435, YellowTopaz→4434, Zircon→4433.
- Queried `ace_world.recipe_mod`: data_Id values are 0x38000038, 0x38000039, 0x38000037 — correct mutation scripts.
- **Conclusion:** Recipe lookup is correct.

### 5. Corrupt mutation scripts
- Read `38000038 - Peridot.txt`, `38000039 - Yellow Topaz.txt`, `38000037 - Zircon.txt`.
- All three scripts only set `ImbuedEffect` and `NumTimesTinkered`. Nothing suspicious.
- **Conclusion:** Mutation scripts are correct.

### 6. Mod patches on appraisal or update packets
- Searched all mods for Harmony patches on `AppraiseInfo`, `GameMessageUpdateObject`, `IdentifyObjectResponse`.
- Only **EmpyreanAlteration** patches `BuildProfile` (ItemXpCurveContext stack) and `BuildProperties` (attuned override). Neither is specific to defense imbues.
- **Conclusion:** No mod is interfering with appraisal packets in a way that would only affect defense imbues.

### 7. RecipeManager patches in other mods
- `BetterSupportSkills/ChaosTinker.cs` — only triggers on failed tinkers.
- `ChallengeModes/SsfMode.cs` — only tags items for Ironman players.
- `LeyLineLedger/SalvageDirectDeposit.cs` — only patches `CreateItem`.
- **Conclusion:** None of these would affect a successful defense imbue on a non-Ironman player.

### 8. Extra property changes during tinkering
- `recipe_mods_int`, `recipe_mods_bool` for recipes 4433–4435 are **empty**.
- `ModifyItem` only runs mutation scripts; no int/bool/float/string/DID/IID mods.
- **Conclusion:** No stray properties are being set during tinkering.

### 9. `UiEffects` / glow discrepancy
- Queried `weenie_properties_int` for loot-gen items with defense imbues: `ImbuedEffect` (type=179) is set, but `UiEffects` (type=164) is **NULL**.
- Loot-gen imbued armor does NOT have `UiEffects` set either.
- **Conclusion:** The missing glow is NOT unique to player-applied imbues. Either a red herring or the user's memory of loot-gen glow is from spells on those items.

### 10. Wrong property for defense imbues
- Retail AC may have stored defense imbues in `ImbuedEffect2` (303), but:
  - ACE's `GetImbuedEffects()` ORs all properties together, so the server handles either.
  - Loot-gen items in the DB also use `ImbuedEffect` (179) for defense imbues.
  - If this were the issue, loot-gen armor would also show the hourglass (it doesn't).
- **Conclusion:** Property number is unlikely to be the root cause.

### 11. Bitmask overlap between `ImbuedEffectType` and `IdentifyResponseFlags`
- `MeleeDefense = 0x0400` coincidentally equals `ResistEnchantmentBitfield = 0x0400`.
- `MissileDefense = 0x0800` coincidentally equals `WeaponEnchantmentBitfield = 0x0800`.
- `MagicDefense = 0x1000` coincidentally equals `DidStatsTable = 0x1000`.
- However, for armor appraisal:
  - `ResistHighlight = 0` → `ResistEnchantmentBitfield` is NOT set.
  - `WeaponProfile = null` → `WeaponEnchantmentBitfield` is NOT set.
  - `PropertiesDID.Count > 0` → `DidStatsTable` IS set for ALL appraised items, regardless of imbue.
- **Conclusion:** Overlap is coincidental; flags are set (or not) consistently. Not the cause.

## Remaining Hypotheses (ranked by likelihood)

### Hypothesis A: Client-side appraisal rendering bug
The AC client's appraisal panel has logic that checks `ImbuedEffect` and conditionally renders extra info. When `ImbuedEffect` contains `MeleeDefense`/`MissileDefense`/`MagicDefense` on an **armor** item, the client might expect a property that is missing (e.g., `WeaponMagicDefense`, `WeaponMeleeDefense`, or a spell entry). Because the expected data is absent, the client's renderer doesn't complete its cycle and leaves the hourglass.

**Why attack imbues on weapons don't trigger it:** Weapons have a `WeaponProfile`, and the client might handle attack imbues differently (or the expected properties are naturally present on weapons).

**Test needed:** Compare the full `AppraiseInfo` packet bytes for a defense-imbued armor vs. a normal armor vs. an attack-imbued weapon. But we don't have a packet dumper.

### Hypothesis B: Missing `WeaponDefense` property
Defense imbues on armor in retail AC added a `WeaponDefense`-like bonus. ACE stores this as `PropertyFloat.WeaponMagicDefense` / `WeaponMissileDefense` etc. The mutation scripts do NOT set these. Loot-gen armor also doesn't have them set (they're typically on weapons, not armor). However, loot-gen armor might have been created with them, or the client might not check for them on loot-gen items.

**Test needed:** Check if loot-gen imbued armor has any `Weapon*Defense` floats set.

### Hypothesis C: `GameMessageUpdateObject` after tinkering
After tinkering, ACE sends `GameMessageUpdateObject` to broadcast the changed item. The client might enter a "waiting for visual update" state because it sees a new `ImbuedEffect` on armor but no corresponding `UiEffects` or `ObjDesc` change. The hourglass then persists into the next appraisal.

**Why attack imbues don't trigger it:** Weapons naturally have `WeaponProfile` in updates; armor updates might be missing a flag.

## Next Actions for Another Agent

1. **Verify with fresh test character and fresh armor** — ensure it's not a stale biota issue.
2. **Check `ace_world.weenie_properties_float` for loot-gen armor with defense imbues** — look for `WeaponMeleeDefense` (31), `WeaponMissileDefense` (32), `WeaponMagicDefense` (157) property types.
3. **Add a packet-level debug mod** — patch `GameEventIdentifyObjectResponse` to write the raw packet bytes to a file when the target has `ImbuedEffect` with defense bits. Compare byte-for-byte with a non-imbued armor.
4. **Try manually adding `UiEffects = Magical` to the armor after imbue** — via admin command or SQL biota edit. If the hourglass clears, we have a workaround.
5. **Check if the issue exists on a stock ACE 1.x server** — if a vanilla ACE server with the same client also shows the hourglass, it's a base ACE bug. If not, it's specific to this server's mod/config combination.
6. **Try patching `RecipeManager.TryMutateNative` for Peridot/YellowTopaz/Zircon** to also set `UiEffects = Magical` and broadcast via `GameMessagePublicUpdatePropertyInt`. This is a cheap experiment.

---

## 2026-05-03 — Overtinked salvage/tinker display audit

Shipped: `Overtinked/docs/Salvage-Tinker-Display-Audit.md` (full `SalvageRules` matrix, six-material detail, LLL/craft surfaces). Code: `PatchClass.MarkTargetModifiedForCraftUpdate` so Harmony short-circuits still register `modified` for `HandleRecipe` → `GameMessageUpdateObject`; Granite craft/bank text now includes variance multiplier (×0.4 for fixed 60).
