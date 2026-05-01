-- Make Olthoi Ichor (10864) and Dark Revenant Thighbone (7045) stackable
-- MaxStackSize = PropertyInt 151
-- Run this against ace_world

-- Olthoi Ichor
INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES (10864, 151, 100)
ON DUPLICATE KEY UPDATE value = 100;

-- Dark Revenant Thighbone
INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES (7045, 151, 100)
ON DUPLICATE KEY UPDATE value = 100;
