## BetterKeys Mod Plan

### Introduction
Revamps traditional Asheron's Call keys to function as low-tier skeleton keys that can open any lock below a specified difficulty threshold, making them useful for players who can't or won't train lockpicking.

### Features Implemented
- **Skeleton Key Functionality**: Keys can now open any lock with difficulty <= their max difficulty threshold
- **Tiered System**:
  - Sturdy Iron Key (WCID 6876): Opens locks up to 250 difficulty
  - Sturdy Steel Key (WCID 24477): Opens locks up to 500 difficulty
  - Mana Forge Keys (WCIDs 38456, 38917-38920): Opens locks up to 750 difficulty
  - Legendary Keys (WCIDs 48746-87168): Opens locks up to 1000 difficulty

- **LeyLineLedger Integration** (optional, auto-detected):
  - Keys are bankable via PropertyInt64 storage
  - All key variants (e.g., 21 legendary key variants) collapse to a single canonical WCID when banked
  - Auto-withdraw and consume from bank when player uses a lock without a key in inventory

### Implementation Details
- **Harmony Patch on Chest.Unlock(Key)**:
  - Prefix checks if key can open lock based on difficulty threshold
  - If lock difficulty <= key's max difficulty, unlock succeeds
  - Otherwise, falls through to vanilla behavior
  
- **Bank Integration**:
  - Uses PropertyInt64 IDs 40100-40103 for banked keys
  - Auto-detects LeyLineLedger by checking Settings.EnableLeyLineLedgerIntegration
  - Sends player message when withdrawing from bank to unlock

### Configuration (Settings.json)
- `Enabled`: Toggle mod on/off (default: true)
- `EnableDebugLogging`: Extra logging for diagnostics (default: false)
- `EnableLeyLineLedgerIntegration`: Enable bank features (default: true)
- `EnableAutoConsumeFromBank`: Auto-withdraw from bank when needed (default: true)
- `KeyMappings`: Maps variant WCIDs to canonical WCIDs
- `DifficultyThresholds`: Configurable max difficulty per key tier

### Files
- `PatchClass.cs`: Main Harmony patch logic
- `Settings.cs`: Settings class definition
- `Settings.json`: Default configuration
- `Meta.json`: Mod metadata
- `Mod.cs`: Mod entry point
- `BetterKeys.csproj`: Build project
- `PLAN.md`: This file