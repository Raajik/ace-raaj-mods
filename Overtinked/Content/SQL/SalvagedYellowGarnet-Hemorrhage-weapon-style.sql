-- Salvaged Yellow Garnet (21087): weapon-tinkering salvage presentation (palette + use mask)
-- like Red Garnet / Emerald, while keeping IconOverlay 100673311 (yellow garnet gem art).
-- Hemorrhage imbue material (Overtinked). Revert: SalvagedYellowGarnet-Hemorrhage-weapon-style-rollback.sql

UPDATE weenie_properties_int SET value = 14 WHERE object_Id = 21087 AND type = 3;
UPDATE weenie_properties_int SET value = 524296 WHERE object_Id = 21087 AND type = 16;

INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES (21087, 94, 33025)
ON DUPLICATE KEY UPDATE value = VALUES(value);

UPDATE weenie_properties_string SET value =
'Apply this material to a treasure-generated weapon to imbue the target with Hemorrhage. Hemorrhage causes stacking damage over time on struck foes (Overtinked server).'
WHERE object_Id = 21087 AND type = 14;
