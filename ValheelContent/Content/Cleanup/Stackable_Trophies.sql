-- Make Olthoi Ichor (10864) and Dark Revenant Thighbone (7045) stackable
-- MaxStackSize = PropertyInt 151

-- Olthoi Ichor
INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES (10864, 151, 100)
ON DUPLICATE KEY UPDATE value = 100;

-- Dark Revenant Thighbone
INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES (7045, 151, 100)
ON DUPLICATE KEY UPDATE value = 100;

-- Update existing biota in ace_shard so items already in inventories become stackable
UPDATE biota_properties_int
SET value = 100
WHERE type = 151 AND object_Id IN (
    SELECT id FROM biota WHERE weenie_Class_Id IN (10864, 7045)
);
