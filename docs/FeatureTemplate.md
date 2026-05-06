# Feature Template — Immutable Source of Truth

> Use this template for every new or redesigned feature in the ace-raaj-mods repo.
> Fill all sections. Delete instructional comments before committing.

---

## Feature Name

**Owner Mod:** `ModName`  
**Status:** `✅ Active` / `⚠️ Draft` / `🔴 Deprecated`  
**Design Doc:** `Docs/FeatureName.md` (this file)  
**Immutable File(s):** `ModName/Settings.json`, `ModName/Content/...`  
**Test File:** `C:\ACE\Mods\ModName\Settings.json`  
**Live File:** `C:\ACE-WB\Mods\ModName\Settings.json`  

---

## 1. Intent

*One paragraph. What problem does this feature solve? What's the player-facing value?*

> *Example:*  
> *Chaos Tinker allows players to apply a second tinker attempt to a fully-tinked item at the risk of destroying it. This extends the endgame gear treadmill without requiring new content.*

## 2. Formulas & Defaults

*Key mathematical relationships. Use code blocks for formulas. Link to relevant C# constants.*

```csharp
// Example
successChance = baseChance * (1f - (currentTinks / maxTinks));
```

| Variable | Default | Source |
|----------|---------|--------|
| `baseChance` | 0.50 | `Settings.ChaosTinkerBaseChance` |
| `maxTinks` | 10 | `Settings.MaxTinks` |

## 3. Behavior

### Happy Path
*Normal flow: what happens step-by-step.*

### Edge Cases
- *Item is already at max tinks*
- *Player has insufficient pyreals*
- *Item is attuned/rare*

### Failure States
- *What logs or error messages does the player see?*
- *What happens on crash/rollback?*

## 4. Cross-Mod Integration

| Dependency | Type | Purpose |
|-----------|------|---------|
| `Overtinked` | Reflection | Reads `NumTimesTinkered` property |
| `LeyLineLedger` | Direct call | Deducts pyreal cost |

*List every cross-mod touchpoint. Include Harmony patch order if applicable.*

## 5. Configuration

### Settings.json Keys

```jsonc
{
    "// Chaos Tinker": "Doc line — precedes setting block",
    "EnableChaosTinker": true,
    "ChaosTinkerBaseChance": 0.50,
    "ChaosTinkerPyrealCost": 50000
}
```

### Runtime Config (Settings.cs defaults)

| Property | Type | Default | Doc |
|----------|------|---------|-----|
| `EnableChaosTinker` | `bool` | `true` | Master toggle |
| `ChaosTinkerBaseChance` | `float` | `0.50f` | Success probability before modifiers |
| `ChaosTinkerPyrealCost` | `long` | `50000` | Pyreal cost per attempt |

## 6. Database Changes

### New Weenies
| WCID | ClassName | Purpose |
|------|-----------|---------|
| `850200` | `chaos_tinker_token` | Trade item for chaos tinker attempts |

### SQL Migration Scripts
- `Content/SQL/001_ChaosTinkerToken.sql` — creates weenie + create_list entries

### Biota Cleanup
*After applying world SQL, run:*  
```sql
DELETE FROM ace_shard.biota_properties_int WHERE object_Id IN (SELECT id FROM biota WHERE weenie_Class_Id = 850200);
```

## 7. Testing

### Test Commands
```
/ci chaos_tinker_token
/ci test_armor
/chaostinker
```

### Verification
1. `/ci` creates the token ✅
2. Use token on fully-tinked armor → success dialog shown ✅
3. Use token on non-tinked armor → error message ✅
4. `/bank balance` shows correct deduction ✅

## 8. Change History

| Date | Author | Change |
|------|--------|--------|
| 2026-05-06 | @agent | Initial creation |
| 2026-05-07 | @user | Adjusted base chance to 0.35 | 
