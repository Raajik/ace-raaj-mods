## AureatePath

*(Documentation previously titled “EasyEnlightenment”; same mod folder and assembly.)*

Adds flexibility to enlightenments. **Defaults target an endless-style server:** no enlightenment cap (`MaxEnlightenments` 0), level requirement scales (`LevelReq` + `LevelReqPerEnlightenment` × current count), lum-aug and society gates start at configurable enlightenment numbers, only level/attributes/skills are reset by default, and luminance cap uses `MaxLumBase` / `MaxLumPerEnlightenment` (defaults effectively uncapped).

**How to enlighten:** use **`/enlighten`** or **`/enl`** when eligible. If `EnlightenmentRequiresConfirmation` is true, a client confirmation lists what will be reset (from your `Remove*` settings) before proceeding. Optional: set `AllowEnlightenmentViaEnlightenmentObject` to true to also allow the stock enlightenment object (WCID 53412).

**Pass-up XP pause:** when `SuppressAllegiancePassupXpAfterEnlightenment` is true, for `AllegiancePassupXpSuppressMinutes` after each enlightenment, XP granted to that player with `ShareType.Allegiance` is zeroed (helps patrons reorganize allegiance chains after resetting to level 1).

* **Level gates:** `LevelReq`, `LevelReqPerEnlightenment` (required level for the next attempt = base + current Enlightenment × per).
* **Cap:** `MaxEnlightenments` — **0 = unlimited**; otherwise must be below this count to enlighten again.
* **Gated requirements (when the bool is true):**
  * `RequireAllLuminanceAuras` + `LumAugRequirementFromEnlightenment` (1-based; e.g. 11 = gate applies starting at the 11th enlightenment).
  * `RequireSocietyMaster` + `SocietyMasterRequirementFromEnlightenment` (1-based; e.g. 26 = gate applies starting at the 26th).
* **Lum-aug sum:** `BaseLumAugmentationsRequired`, `LumAugmentationsRequiredPerEnlightenment`, optional `RequireMinimumPerLumAugContributor` / `LumAugMinimumPerContributor`, `ShowLumAugVerificationCounts`.

* Set a bonus per Enlightenment in Dictionaries 
  * For `PropertyFloat|Int`
    * `IntAugments` 
    * `FloatAugments`

  * Bonuses that require **ChallengeModes** with **`BonusStatsEnabled`** (adds `Creature.GetBonus` on top of init/starting values)
    * `SkillAugments`
    * `AttributeAugments`
    * `VitalAugments`

* `SkillCreditAmount` / `SkillCreditInterval` are used to add an amount of credits based on number of enlightenments
* `SkipNormalBroadcast` 
* `SkipResetCertificate` prevents item creation
* `MaxLumBase` / `MaxLumPerEnlightenment` (applied after each enlightenment when `MaximumLuminance` is set)

Change what is removed on enlightenment with:

* `RemoveSociety`
* `RemoveLuminance`
* `RemoveAetheria`
* `RemoveAttributes`
* `RemoveSkills`
* `RemoveLevel`

* `PatchWieldRequirements` — when true, items may use `ItemWieldRequirementEnlightenments` (FakeInt) for minimum enlightenment to wield.

`Settings.json` supports `//` line comments (via ACE.Shared `JsonSettings`). AureatePath does not overwrite an existing `Settings.json` on save so those comments stay in the shipped file; if the file is missing, a plain default JSON is written once. The project copies `Settings.json` to the mod output next to `Meta.json`.

If you change augment dictionaries in settings and a character’s props are out of sync with their enlightenment count, fix by temporarily reapplying logic (e.g. a one-off admin tool or re-enlighten)—there is no built-in `/fixee` anymore.
