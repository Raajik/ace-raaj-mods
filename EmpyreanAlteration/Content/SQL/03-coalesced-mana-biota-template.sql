-- Patch existing Coalesced Mana biotas (42516-42518) to match 01_CoalescedMana_LesserGreaterAetheric.sql
-- Run on ace_shard after weenie apply + server restart (or alongside weenie if fixing inventory-only).
-- ItemUseable 524296, TargetType 35215, UiEffects + Icon/Setup DIDs for correct use-on-target + art.

INSERT INTO biota_properties_int (object_Id, type, value)
SELECT b.id, 16, 524296
FROM biota b
WHERE b.weenie_class_id IN (42516, 42517, 42518)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_int (object_Id, type, value)
SELECT b.id, 94, 35215
FROM biota b
WHERE b.weenie_class_id IN (42516, 42517, 42518)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_int (object_Id, type, value)
SELECT b.id, 18,
  CASE b.weenie_class_id
    WHEN 42516 THEN 20
    WHEN 42517 THEN 32
    WHEN 42518 THEN 1
    ELSE 20
  END
FROM biota b
WHERE b.weenie_class_id IN (42516, 42517, 42518)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 1, 33557506
FROM biota b
WHERE b.weenie_class_id IN (42516, 42517, 42518)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 3, 536870932
FROM biota b
WHERE b.weenie_class_id IN (42516, 42517, 42518)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 6, 67112808
FROM biota b
WHERE b.weenie_class_id IN (42516, 42517, 42518)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 22, 872415275
FROM biota b
WHERE b.weenie_class_id IN (42516, 42517, 42518)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 8,
  CASE b.weenie_class_id
    WHEN 42516 THEN 100690901
    WHEN 42517 THEN 100690900
    WHEN 42518 THEN 100690899
    ELSE 100690901
  END
FROM biota b
WHERE b.weenie_class_id IN (42516, 42517, 42518)
ON DUPLICATE KEY UPDATE value = VALUES(value);
