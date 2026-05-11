# Findings

- User wants these WCIDs spread sensibly through loot pools:
  - `36509` Greater Gem of Knowledge
  - `36510`, `43185`, `43186`, `43187`, `43188`, `43189` Gem of Knowledge variants
- Constraint from user: `36509` should be common because it scales well without being overpowered.
- Shared loot ownership was split incorrectly: runtime default path pointed at `Loremaster/LootConfig.json` even though `BetterLootControl` owns the shared loot system.
- `BetterLootControl.csproj` did not copy `LootConfig.json`; `Loremaster.csproj` did. Ownership move needs both path change and build-output change.
