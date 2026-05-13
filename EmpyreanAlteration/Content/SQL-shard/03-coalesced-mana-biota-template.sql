-- Patch existing Coalesced Mana biotas (800000-800002) to match the consolidated weenie + Windblown JSON overrides.
-- Run on ace_shard after weenie apply + server restart (or alongside weenie if fixing inventory-only).
-- ItemUseable 524296, TargetType 35215, UiEffects + DID overrides for correct use-on-target + tiered art.

INSERT INTO biota_properties_int (object_Id, type, value)
SELECT b.id, 16, 524296
FROM biota b
WHERE b.weenie_class_id IN (800000, 800001, 800002)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_int (object_Id, type, value)
SELECT b.id, 94, 35215
FROM biota b
WHERE b.weenie_class_id IN (800000, 800001, 800002)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_int (object_Id, type, value)
SELECT b.id, 18,
  CASE b.weenie_class_id
    WHEN 800000 THEN 128
    WHEN 800001 THEN 256
    WHEN 800002 THEN 1
    ELSE 128
  END
FROM biota b
WHERE b.weenie_class_id IN (800000, 800001, 800002)
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- Setup / SoundTable / PaletteBase / PhysicsEffectTable (inherited from SQL weenie, patch if missing)
INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 1, 33557506
FROM biota b
WHERE b.weenie_class_id IN (800000, 800001, 800002)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 3, 536870932
FROM biota b
WHERE b.weenie_class_id IN (800000, 800001, 800002)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 6, 67112808
FROM biota b
WHERE b.weenie_class_id IN (800000, 800001, 800002)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 22, 872415275
FROM biota b
WHERE b.weenie_class_id IN (800000, 800001, 800002)
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- Icon (keep vanilla coalesced mana colors: yellow/red/blue)
INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 8,
  CASE b.weenie_class_id
    WHEN 800000 THEN 100690901
    WHEN 800001 THEN 100690900
    WHEN 800002 THEN 100690899
    ELSE 100690901
  END
FROM biota b
WHERE b.weenie_class_id IN (800000, 800001, 800002)
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- IconUnderlay (blue background) + IconOverlay (tier numbers) — Windblown JSON overrides
INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 52, 100676435
FROM biota b
WHERE b.weenie_class_id IN (800000, 800001, 800002)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO biota_properties_d_i_d (object_Id, type, value)
SELECT b.id, 50,
  CASE b.weenie_class_id
    WHEN 800000 THEN 100690976
    WHEN 800001 THEN 100690977
    WHEN 800002 THEN 100690978
    ELSE 100690976
  END
FROM biota b
WHERE b.weenie_class_id IN (800000, 800001, 800002)
ON DUPLICATE KEY UPDATE value = VALUES(value);
