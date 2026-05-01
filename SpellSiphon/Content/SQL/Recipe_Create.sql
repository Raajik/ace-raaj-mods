-- Recipe 900001: Spellsiphon Extraction
-- Provides native ACE crafting dialog + skill check for spell extraction.
-- Source: Spellsiphon (850200) on any spell-bearing item.

DELETE FROM cook_book WHERE recipe_Id = 900001;
DELETE FROM recipe WHERE id = 900001;

INSERT INTO recipe (
  id, unknown_1, skill, difficulty, salvage_Type,
  success_W_C_I_D, success_Amount, success_Message,
  fail_W_C_I_D, fail_Amount, fail_Message,
  success_Destroy_Source_Chance, success_Destroy_Source_Amount, success_Destroy_Source_Message,
  success_Destroy_Target_Chance, success_Destroy_Target_Amount, success_Destroy_Target_Message,
  fail_Destroy_Source_Chance, fail_Destroy_Source_Amount, fail_Destroy_Source_Message,
  fail_Destroy_Target_Chance, fail_Destroy_Target_Amount, fail_Destroy_Target_Message,
  data_Id, last_Modified
)
VALUES (
  900001,
  0,              -- unknown_1
  38,             -- skill = MagicItemTinkering
  250,            -- difficulty (tuned for ~33% base success)
  0,              -- salvage_Type
  0,              -- success_W_C_I_D (0 = created manually by mod)
  0,              -- success_Amount
  'You successfully extract the spells!',
  0,              -- fail_W_C_I_D
  0,              -- fail_Amount
  'The extraction fails catastrophically!',
  1.0,            -- success_Destroy_Source_Chance = 100%
  1,              -- success_Destroy_Source_Amount
  'The Spellsiphon is consumed.',
  1.0,            -- success_Destroy_Target_Chance = 100%
  1,              -- success_Destroy_Target_Amount
  'The source item is destroyed.',
  1.0,            -- fail_Destroy_Source_Chance = 100%
  1,              -- fail_Destroy_Source_Amount
  'The Spellsiphon shatters.',
  1.0,            -- fail_Destroy_Target_Chance = 100%
  1,              -- fail_Destroy_Target_Amount
  'The source item is destroyed.',
  0,              -- data_Id
  NOW()
);
