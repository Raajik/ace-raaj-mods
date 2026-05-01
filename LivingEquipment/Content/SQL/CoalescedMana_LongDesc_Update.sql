-- Update Coalesced Mana item descriptions to include LivingEquipment usage hints
-- Run against ace_world

UPDATE weenie_properties_string
SET value = 'Use on equippable equipment to awaken its living potential. Lesser Coalesced Mana grants a maximum level of 25.'
WHERE object_Id = 42516 AND type = 16; /* LongDesc */

UPDATE weenie_properties_string
SET value = 'Use on equippable equipment to awaken its living potential. Greater Coalesced Mana grants a maximum level of 50.'
WHERE object_Id = 42517 AND type = 16; /* LongDesc */

UPDATE weenie_properties_string
SET value = 'Use on equippable equipment to awaken its living potential. Aetheric Coalesced Mana grants a maximum level of 75.'
WHERE object_Id = 42518 AND type = 16; /* LongDesc */

-- If the LongDesc rows don't exist, insert them
INSERT INTO weenie_properties_string (object_Id, type, value)
VALUES (42516, 16, 'Use on equippable equipment to awaken its living potential. Lesser Coalesced Mana grants a maximum level of 25.')
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO weenie_properties_string (object_Id, type, value)
VALUES (42517, 16, 'Use on equippable equipment to awaken its living potential. Greater Coalesced Mana grants a maximum level of 50.')
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO weenie_properties_string (object_Id, type, value)
VALUES (42518, 16, 'Use on equippable equipment to awaken its living potential. Aetheric Coalesced Mana grants a maximum level of 75.')
ON DUPLICATE KEY UPDATE value = VALUES(value);
