-- Biota cleanup: patch existing player items to match new weenie defaults
-- Run after 01-trophy-stacking.sql to update items already in inventories
-- Applied 2026-05-01
-- FIXED: type 16 was ItemUseable, corrected to type 11 (MaxStackSize)

-- Set MaxStackSize = 100 on existing trophy items in player inventories
INSERT INTO biota_properties_int (object_Id, type, value)
SELECT b.id, 11, 100
FROM biota b
WHERE b.weenie_class_id IN (
    36359, 3699, 3700, 3701, 3703, 7603, 8426,
    3693, 8144, 8145, 8146, 8147,
    4235, 4236, 4237, 4238, 4239, 4240, 4241, 5892,
    8656, 8657, 8658, 8664, 8665, 8674,
    9258, 9259, 9260
)
ON DUPLICATE KEY UPDATE value = 100;

-- Fix any trophy biotas that still have ItemUseable=100 (from the old bugged SQL)
DELETE FROM biota_properties_int
WHERE type = 16
  AND object_Id IN (
    SELECT id FROM biota WHERE weenie_class_id IN (
      36359, 3699, 3700, 3701, 3703, 7603, 8426,
      3693, 8144, 8145, 8146, 8147,
      4235, 4236, 4237, 4238, 4239, 4240, 4241, 5892,
      8656, 8657, 8658, 8664, 8665, 8674,
      9258, 9259, 9260
    )
  );

-- Coalesced Mana: remove attuned on existing items
UPDATE biota_properties_int
SET value = 0
WHERE type = 33
  AND object_Id IN (SELECT id FROM biota WHERE weenie_class_id IN (42516, 42517, 42518));
