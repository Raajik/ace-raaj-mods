# SpellSiphon v2.1 — Native ACE Integration Plan

## Reference Analysis: Pocket Buffing Stone (WCID 802940)

### How It Works (Emote-Driven Casting)
The Pocket Buffing Stone is a **masterclass** in custom reusable buff items. It uses NO spellbook — instead, all spells are cast via emotes:

**Key Properties:**
- `ItemType = Caster` (2048) — makes it a "usable" item
- `ItemUseable = Contained` (8) — must be in inventory to use
- `ActivationResponse = CastSpell` (4) — double-click triggers `OnCastSpell`
- `Bonded = Bonded` (1) — won't drop on death
- `Attuned = Attuned` (1) — can't be traded
- **NO spellbook entries** — spells are purely emote-driven

**Emote Chain:**
1. **Emote 100145** (`TestSuccess` / type 21): Checks local signal `BuffedUp@2` (cooldown check)
2. **Emote 100146** (`LocalBroadcast` / type 18): Shows "You cannot buff yourself yet." if on cooldown
3. **Emote 100147** (`CastSpell` / type 19 × 46): Casts all 46 buff spells in sequence

**Why This Is Brilliant:**
- No spellbook = no info panel clutter
- Emote-driven = never consumed (no consumption logic)
- `TestSuccess` with local signal = built-in cooldown system
- `CastSpell` emotes = each spell cast independently with proper spell effects

### Applying to Endless Mana Lattice
We should use the **same pattern** but hybridized:
- Keep `PropertiesSpellBook` for info panel display (user likes seeing spells)
- Add emotes for actual usage (cast spells, cooldown check)
- Set `ActivationResponse = CastSpell`
- Remove Harmony patches for usage — let ACE's native activation flow handle it

---

## Native ACE Recipe Integration

### Current Problem
Our Harmony prefix on `HandleActionUseOnTarget` bypasses ACE's entire crafting pipeline:
- No confirmation dialog
- No skill check display
- No "floaty" crafting feel
- Items consumed via custom code (buggy)

### Proposed Solution: Hybrid Recipe Approach

**Phase 1 — Recipe Database Entries**
Create recipe entries in `recipe` table:
- `recipe.id = 900001`: Spellsiphon + Any Magical Item → Extraction
- `recipe.source_W_C_I_D = 850200` (Spellsiphon)
- `recipe.target_W_C_I_D = 0` (wildcard — requires patch)
- `recipe.difficulty = dynamic` (calculated from player MIT skill)
- `recipe.success_W_C_I_D = 850200` (result is charged Spellsiphon)

**Phase 2 — Harmony Patches on RecipeManager**
Instead of bypassing recipes entirely, we **participate** in them:

1. **Patch `RecipeManager.GetRecipe`**: Return our recipe 900001 when source = Spellsiphon and target has spells
2. **Patch `RecipeManager.GetRecipeChance`**: Calculate our skill-based success rate (33% base + MIT bonus + augment)
3. **Patch `RecipeManager.ExecuteRecipe`**: Handle custom outcomes:
   - Success: Destroy source + target, create charged Spellsiphon with extracted spells
   - Failure: Destroy Spellsiphon, target may survive
4. **Patch `RecipeManager.VerifyRequirements`**: Allow the recipe even if target is attuned/bonded (configurable)

**Phase 3 — Native Dialog Integration**
ACE shows the confirmation dialog when:
- `recipe.HasDifficulty == true`
- `player.CharacterOption.UseCraftingChanceOfSuccessDialog == true`

Our patch on `GetRecipeChance` returns a percentage, and ACE automatically:
- Shows "You have a X% chance of success" popup
- Player clicks "Yes" → `ExecuteRecipe` runs
- Player clicks "No" → nothing happens

**Phase 4 — Consumption Fix**
Instead of our custom `Destroy()` + manual inventory removal:
- Let ACE's `RecipeManager` consume the items via normal recipe consumption
- Use `InventoryHelpers.TryRemoveFromInventory` (the proper ACE way)
- Or let the recipe's `destroy_Source_Amount` / `destroy_Target_Amount` handle it

---

## Implementation Plan

### Step 1: Create Recipe SQL
```sql
-- Recipe 900001: Spellsiphon Extraction
INSERT INTO recipe (id, source_W_C_I_D, target_W_C_I_D, difficulty, success_W_C_I_D, 
  success_Amount, fail_W_C_I_D, destroy_Source_Chance, destroy_Target_Chance,
  destroy_Source_Amount, destroy_Target_Amount, data_Id)
VALUES (900001, 850200, 0, 250, 850200, 1, 0, 100, 50, 1, 1, 0);
```

### Step 2: Recipe Hooks C#
- `RecipeHooks.cs`: Postfix on `GetRecipe` to inject our recipe
- `RecipeHooks.cs`: Postfix on `GetRecipeChance` to calculate custom success rate
- `RecipeHooks.cs`: Prefix on `ExecuteRecipe` to handle custom outcomes

### Step 3: Endless Mana Lattice Emotes
Instead of Harmony patches for usage, use emotes:
- Add `CastSpell` emote category to Mana Lattice weenie
- Dynamically populate emote actions with extracted spells
- Add `TestSuccess` for cooldown
- Set `ActivationResponse = CastSpell`

### Step 4: Remove Obsolete Hooks
- Remove `EndlessGemHooks` (replaced by native emotes)
- Remove `InventoryHelpers` custom destroy logic (use ACE recipe consumption)
- Simplify `UseOnTargetHooks` to only handle non-recipe interactions

---

## Files to Modify

| File | Action |
|------|--------|
| `SpellSiphon/Features/RecipeHooks.cs` | NEW — RecipeManager integration |
| `SpellSiphon/Features/UseOnTargetHooks.cs` | SIMPLIFY — Remove extraction logic, keep apply logic |
| `SpellSiphon/Content/SQL/Recipe_Create.sql` | NEW — Recipe database entries |
| `SpellSiphon/Content/SQL/ManaLattice_Create.sql` | UPDATE — Add emotes for CastSpell |
| `SpellSiphon/Features/EndlessGemHooks.cs` | DELETE — Replaced by native emotes |
| `SpellSiphon/Helpers/InventoryHelpers.cs` | DELETE — Use ACE recipe consumption |
| `SpellSiphon/PatchClass.cs` | UPDATE — Wire new RecipeHooks |

---

## Risks & Mitigations

| Risk | Mitigation |
|------|-----------|
| Recipe wildcard (target_W_C_I_D = 0) not supported | Patch `GetRecipe` to check our logic before the DB lookup |
| Emote bloat (46 spells = 46 emote actions) | Dynamically create emotes in C# when item is created, store in biota |
| Existing charged Spellsiphons break | Keep backward compatibility — old items still work via fallback |
| Skill popup shows wrong chance | Test `GetRecipeChance` patch thoroughly against expected formula |

---

## User Decision Points

1. **Cooldown on Endless Mana Lattice**: What should the cooldown be? (Pocket Buffing Stone uses 2 minutes)
2. **Attuned vs Bonded**: Should Endless Mana Lattice be attuned (untradeable) or just bonded (tradeable)?
3. **Recipe difficulty display**: Should the popup show "Magic Item Tinkering" as the skill, or something else?
4. **Failure behavior**: Should failed extraction ALWAYS destroy the source item, or keep the 40% strip-and-survive chance?
