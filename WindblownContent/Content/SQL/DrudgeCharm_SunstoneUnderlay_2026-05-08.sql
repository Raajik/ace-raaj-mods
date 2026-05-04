-- Drudge Charm icon = sunstone orange underlay (no ImbuedEffect rending, no UiEffects glow).
-- Examine fix: keep only type 16 (LongDesc); drop 14/15 to stop client showing the sentence twice.
-- IconUnderlay DID 0x06003356 = 100676438 (decimal) — same value RecipeManager.IconUnderlay maps to ImbuedEffectType.ArmorRending.
-- Idempotent. Apply ace_world; restart ACE for weenie cache.
-- Supersedes DrudgeCharm_BloodletterPerTierRestore_2026-05-07.sql (per-tier 179 BludgeonRending bits + duplicated 14/15/16 strings).

START TRANSACTION;

-- Remove rending bits and UiEffects glow on all four WCIDs.
DELETE FROM weenie_properties_int
 WHERE object_Id IN (24835, 850271, 850272, 850273)
   AND type IN (18, 179);

-- Sunstone orange underlay (PropertyDataId.IconUnderlay = 52).
INSERT INTO weenie_properties_d_i_d (object_Id, type, value) VALUES
(24835, 52, 100676438),
(850271, 52, 100676438),
(850272, 52, 100676438),
(850273, 52, 100676438)
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- MaxStackSize 11 = 999 (idempotent re-affirm).
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(24835, 11, 999),
(850271, 11, 999),
(850272, 11, 999),
(850273, 11, 999)
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- Examine: only type 16 (LongDesc). Delete types 14 (Use) and 15 (ShortDesc) to avoid client duplication.
DELETE FROM weenie_properties_string
 WHERE object_Id IN (24835, 850271, 850272, 850273)
   AND type IN (14, 15);

INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(24835, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850271, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850272, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850273, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.')
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- Display + plural names (Bloodletter, idempotent re-affirm).
UPDATE weenie_properties_string SET value = 'Bloodletter Drudge Charm' WHERE object_Id = 24835 AND type = 1;
UPDATE weenie_properties_string SET value = 'Bloodletter Drudge Charm (Quality)' WHERE object_Id = 850271 AND type = 1;
UPDATE weenie_properties_string SET value = 'Bloodletter Drudge Charm (Pristine)' WHERE object_Id = 850272 AND type = 1;
UPDATE weenie_properties_string SET value = 'Bloodletter Drudge Charm (Perfect)' WHERE object_Id = 850273 AND type = 1;

INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(24835, 20, 'Bloodletter Drudge Charms'),
(850271, 20, 'Bloodletter Drudge Charms (Quality)'),
(850272, 20, 'Bloodletter Drudge Charms (Pristine)'),
(850273, 20, 'Bloodletter Drudge Charms (Perfect)')
ON DUPLICATE KEY UPDATE value = VALUES(value);

UPDATE weenie SET type = 51 WHERE class_Id IN (850271, 850272, 850273);

COMMIT;

-- Audit (run separately):
-- SELECT type, value FROM weenie_properties_int      WHERE object_Id IN (24835,850271,850272,850273) ORDER BY object_Id, type;
-- SELECT type, value FROM weenie_properties_d_i_d    WHERE object_Id IN (24835,850271,850272,850273) AND type = 52;
-- SELECT type, value FROM weenie_properties_string   WHERE object_Id IN (24835,850271,850272,850273) AND type IN (1,14,15,16,20) ORDER BY object_Id, type;
