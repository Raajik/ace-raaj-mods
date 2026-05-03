-- Update skeleton key descriptions to reflect actual behavior (BetterKeys unlock ranges + AutoLoot banking)
-- Applied: 2026-05-03

-- Sturdy Iron Key (6876) — doors up to 1000 difficulty
UPDATE weenie_properties_string SET value = 'Use this key to unlock doors with difficulty up to 1000.' WHERE object_Id = 6876 AND type = 14;
UPDATE weenie_properties_string SET value = 'A sturdy iron skeleton key. Opens locked doors with difficulty up to 1000. Looted copies are automatically banked.' WHERE object_Id = 6876 AND type = 15;
UPDATE weenie_properties_string SET value = 'A sturdy iron skeleton key. Opens locked doors with difficulty up to 1000. Looted copies are automatically banked.' WHERE object_Id = 6876 AND type = 16;

-- Sturdy Steel Key (24477) — chests up to 1000 difficulty
UPDATE weenie_properties_string SET value = 'Use this key to unlock chests with difficulty up to 1000.' WHERE object_Id = 24477 AND type = 14;
UPDATE weenie_properties_string SET value = 'A sturdy steel skeleton key. Opens locked chests with difficulty up to 1000. Looted copies are automatically banked.' WHERE object_Id = 24477 AND type = 15;
UPDATE weenie_properties_string SET value = 'A sturdy steel skeleton key. Opens locked chests with difficulty up to 1000. Looted copies are automatically banked.' WHERE object_Id = 24477 AND type = 16;

-- Mana Forge Key (38456) — doors up to 5000 difficulty
UPDATE weenie_properties_string SET value = 'Use this key to unlock Mana Forge doors with difficulty up to 5000.' WHERE object_Id = 38456 AND type = 14;
UPDATE weenie_properties_string SET value = 'A crystalline key that coruscates with purple energies. Opens Mana Forge doors with difficulty up to 5000. Looted copies are automatically banked.' WHERE object_Id = 38456 AND type = 15;
UPDATE weenie_properties_string SET value = 'A crystalline key that coruscates with purple energies. Opens Mana Forge doors with difficulty up to 5000. Looted copies are automatically banked.' WHERE object_Id = 38456 AND type = 16;

-- Aged Legendary Key (48746) — chests up to 5000 difficulty
UPDATE weenie_properties_string SET value = 'Use this key to unlock Legendary chests with difficulty up to 5000.' WHERE object_Id = 48746 AND type = 14;
UPDATE weenie_properties_string SET value = 'An aged legendary key. Opens Legendary chests with difficulty up to 5000. Looted copies are automatically banked.' WHERE object_Id = 48746 AND type = 15;
UPDATE weenie_properties_string SET value = 'An aged legendary key. Opens Legendary chests with difficulty up to 5000. Looted copies are automatically banked.' WHERE object_Id = 48746 AND type = 16;
