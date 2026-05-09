-- Cleaving (Tiger Eye 21081): magic item tinkering bag (blue palette) — match Salvaged Green Garnet (21050): PaletteTemplate 2, ItemUseable 524296, TargetType 32768.
-- Nether Rending (Onyx 21064): weapon tinkering bag (red palette) — match Salvaged Red Garnet / Hemorrhage line: PaletteTemplate 14, ItemUseable 524296, TargetType 33025.
-- Revert: SalvageCleavingNether-tinker-bags-rollback.sql

UPDATE weenie_properties_int SET value = 2 WHERE object_Id = 21081 AND type = 3;
UPDATE weenie_properties_int SET value = 524296 WHERE object_Id = 21081 AND type = 16;
INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES (21081, 94, 32768)
ON DUPLICATE KEY UPDATE value = VALUES(value);

UPDATE weenie_properties_int SET value = 14 WHERE object_Id = 21064 AND type = 3;
UPDATE weenie_properties_int SET value = 524296 WHERE object_Id = 21064 AND type = 16;
INSERT INTO weenie_properties_int (object_Id, type, value)
VALUES (21064, 94, 33025)
ON DUPLICATE KEY UPDATE value = VALUES(value);
