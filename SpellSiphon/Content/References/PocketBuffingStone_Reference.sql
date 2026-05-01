-- Reference: Attuned Pocket Buffing Stone (WCID 802940)
-- Demonstrates emote-driven reusable buff item pattern.
-- This weenie has NO spellbook — all spells are cast via emotes.

-- === PROPERTIES ===
-- ItemType = 2048 (Caster) — required for ActivationResponse.CastSpell
-- ItemUseable = 8 (Contained) — must be in inventory to activate
-- ActivationResponse = 4 (CastSpell) — double-click triggers OnCastSpell
-- Bonded = 1 (Bonded) — won't drop on death
-- Attuned = 1 (Attuned) — can't be traded

-- === EMOTE FLOW ===
-- Emote Category: CastSpell (activated by double-click)
--   Step 1: TestSuccess (type 21) checks local signal "BuffedUp@2"
--     → If success (cooldown expired): proceed to cast spells
--     → If fail (on cooldown): show "You cannot buff yourself yet."
--   Step 2: CastSpell (type 19) × 46 — casts each buff spell in sequence

-- === KEY INSIGHTS ===
-- 1. No spellbook means no info panel clutter
-- 2. Emote-driven casting means item is NEVER consumed
-- 3. TestSuccess with local signal = built-in cooldown (no C# needed)
-- 4. Each CastSpell emote action casts one spell with proper effects
-- 5. The item type (Caster + ActivationResponse.CastSpell) is the magic

-- === REUSABLE PATTERN ===
-- To create any reusable buff item:
-- 1. Weenie type = Generic or Caster
-- 2. ItemType = Caster (2048)
-- 3. ItemUseable = Contained (8)
-- 4. ActivationResponse = CastSpell (4)
-- 5. Add emote category CastSpell with:
--    - TestSuccess (optional, for cooldown)
--    - CastSpell (type 19) for each spell to cast
-- 6. Bonded = 1 (so it doesn't drop on death)

-- === SPELL LIST (802940) ===
-- The stone casts 46 level-8 self-buff spells:
-- 3976, 3981, 3982, 3983, 4459, 4461, 4463, 4465, 4467, 4469,
-- 4471, 4493, 4495, 4497, 4296, 4298, 4304, 4318, 4324, 4328,
-- 4505, 4509, 4511, 4517, 4521, 4525, 4529, 4537, 4541, 4547,
-- 4551, 4555, 4557, 4559, 4563, 4565, 4571, 4577, 4581, 4585,
-- 4591, 4595, 4601, 4603, 4607, 4615, 4623
