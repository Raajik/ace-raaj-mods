-- Biota cleanup for quest items that were created before the weenie stack fix.
-- Items already in player inventories/corpses retain the old weenie properties
-- (WeenieType=Generic, no stack props), causing "tried to merge invalid source item"
-- when the player tries to stack them with newly-looted fixed charms.
--
-- Run this against ace_shard while the server is running (biota changes are live).
-- No restart needed.

-- =============================================
-- Drudge Charm (WCID 3669) — fix existing biotas
-- =============================================

-- Update the stored weenie type on existing biotas
UPDATE biota SET weenie_type = 51 WHERE weenie_class_id = 3669 AND weenie_type = 1;

-- Add missing stack properties to existing biotas (idempotent)
INSERT INTO biota_properties_int (object_Id, type, value)
SELECT id, 33, 1 FROM biota WHERE weenie_class_id = 3669
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_int (object_Id, type, value)
SELECT id, 111, 100 FROM biota WHERE weenie_class_id = 3669
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_int (object_Id, type, value)
SELECT id, 12, 40 FROM biota WHERE weenie_class_id = 3669
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_int (object_Id, type, value)
SELECT id, 14, 5 FROM biota WHERE weenie_class_id = 3669
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- =============================================
-- Template for adding more items:
--
-- UPDATE biota SET weenie_type = 51 WHERE weenie_class_id = <WCID> AND weenie_type = 1;
-- INSERT INTO biota_properties_int (object_Id, type, value)
-- SELECT id, 33, 1 FROM biota WHERE weenie_class_id = <WCID>
-- ON DUPLICATE KEY UPDATE value = VALUES(value);
-- INSERT INTO biota_properties_int (object_Id, type, value)
-- SELECT id, 111, 100 FROM biota WHERE weenie_class_id = <WCID>
-- ON DUPLICATE KEY UPDATE value = VALUES(value);
-- ... etc for 12 and 14
-- =============================================
