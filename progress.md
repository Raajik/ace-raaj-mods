# Progress Log — Quest Salvage Auto-Deposit

## Session 2026-05-01
- Created `task_plan.md`, `findings.md`, `progress.md` per `planning-with-files` skill.
- **Phase 1 complete:** Ran DB queries — confirmed all quest salvage WCIDs (29571-29582, 30260) share Value=10, Burden=100, Workmanship=100 (10.00), unique IconOverlay=100.
- **Phase 2 complete:** Cross-referenced with ACE source (`.references/ACE-1.76.4751/Source/ACE.Entity/Enum/WeenieClassName.cs`) — resolved truncated DB names (29572=Black Garnet, 29578=Jet, 29579=Mahogany, 29580=Red Garnet).
- **Phase 3 complete:** Reviewed LLL `PathwardenAutoBank.cs`, `BankSalvage.cs`, `SalvageDirectDeposit.cs` — existing intercept pattern confirmed.
- **Phase 4/5 complete:** Documented 5 clarifying questions in `findings.md`; user answered all. Implementation plan locked.
- **Phase 6 in progress:**
  - Added `EnableQuestSalvageAutoBank` to `Settings.cs`; deprecated `EnablePathwardenAutoBank` doc.
  - Created `QuestSalvageAutoBank.cs` with 15-entry mapping (13 CoK + 2 Pathwarden bags), emote prefix hook.
  - Refactored `PathwardenAutoBank.cs` to remove Granite/Steel handling (now in QuestSalvageAutoBank); keeps Sturdy Iron Key handling.
  - Updated `EmoteBankPatches.cs` `PrefixGiveFromEmote` to call `QuestSalvageAutoBank.TryAutoDepositEmote` first, then fall through to `PathwardenAutoBank`.
  - Updated `PatchClass.cs` to register `QuestSalvageAutoBank` patch category conditionally.
  - **Build + deploy issue:** Initial `Container.TryAddToInventory` postfix with `out Container` parameter caused Harmony patching exception, killing entire LLL mod on startup. Removed container patch; emote prefix is sufficient primary hook (quest bags are acquired almost exclusively via NPC emotes). Rebuilt and restarted test server — clean load confirmed.
  - **ToDo:** Non-emote sources (loot drops, script injections) are not yet auto-deposited. If needed, implement via `Player.HandleActionPutItemInContainer` or periodic inventory scan.
