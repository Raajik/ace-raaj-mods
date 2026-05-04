-- Drudge charm tier stackables: clone 3669, scrub create-list spawns on 3669 (mod drops replace).
-- Apply to ace_world; restart ACE to reload weenie cache.
-- Revert: restore from WindblownContent/sql-backups/2026-05-03/pre-drudgecharm-* dumps.

START TRANSACTION;

DELETE FROM weenie_properties_create_list WHERE weenie_Class_Id = 3669;

DELETE FROM weenie_properties_anim_part WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie_properties_attribute WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie_properties_attribute_2nd WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie_properties_body_part WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie_properties_book WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie_properties_bool WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie_properties_d_i_d WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie_properties_emote WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie_properties_float WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie_properties_int WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie_properties_int64 WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie_properties_string WHERE object_Id IN (850271, 850272, 850273);
DELETE FROM weenie WHERE class_Id IN (850271, 850272, 850273);

INSERT INTO weenie (class_Id, class_Name, type)
SELECT 850271, 'drudgecharmtier1', type FROM weenie WHERE class_Id = 3669 LIMIT 1;
INSERT INTO weenie (class_Id, class_Name, type)
SELECT 850272, 'drudgecharmtier2', type FROM weenie WHERE class_Id = 3669 LIMIT 1;
INSERT INTO weenie (class_Id, class_Name, type)
SELECT 850273, 'drudgecharmtier3', type FROM weenie WHERE class_Id = 3669 LIMIT 1;

INSERT INTO weenie_properties_int (object_Id, type, value)
SELECT 850271, type, value FROM weenie_properties_int WHERE object_Id = 3669;
INSERT INTO weenie_properties_int (object_Id, type, value)
SELECT 850272, type, value FROM weenie_properties_int WHERE object_Id = 3669;
INSERT INTO weenie_properties_int (object_Id, type, value)
SELECT 850273, type, value FROM weenie_properties_int WHERE object_Id = 3669;

INSERT INTO weenie_properties_bool (object_Id, type, value)
SELECT 850271, type, value FROM weenie_properties_bool WHERE object_Id = 3669;
INSERT INTO weenie_properties_bool (object_Id, type, value)
SELECT 850272, type, value FROM weenie_properties_bool WHERE object_Id = 3669;
INSERT INTO weenie_properties_bool (object_Id, type, value)
SELECT 850273, type, value FROM weenie_properties_bool WHERE object_Id = 3669;

INSERT INTO weenie_properties_float (object_Id, type, value)
SELECT 850271, type, value FROM weenie_properties_float WHERE object_Id = 3669;
INSERT INTO weenie_properties_float (object_Id, type, value)
SELECT 850272, type, value FROM weenie_properties_float WHERE object_Id = 3669;
INSERT INTO weenie_properties_float (object_Id, type, value)
SELECT 850273, type, value FROM weenie_properties_float WHERE object_Id = 3669;

INSERT INTO weenie_properties_string (object_Id, type, value)
SELECT 850271, type, value FROM weenie_properties_string WHERE object_Id = 3669;
INSERT INTO weenie_properties_string (object_Id, type, value)
SELECT 850272, type, value FROM weenie_properties_string WHERE object_Id = 3669;
INSERT INTO weenie_properties_string (object_Id, type, value)
SELECT 850273, type, value FROM weenie_properties_string WHERE object_Id = 3669;

INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
SELECT 850271, type, value FROM weenie_properties_d_i_d WHERE object_Id = 3669;
INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
SELECT 850272, type, value FROM weenie_properties_d_i_d WHERE object_Id = 3669;
INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
SELECT 850273, type, value FROM weenie_properties_d_i_d WHERE object_Id = 3669;

UPDATE weenie_properties_string SET value = 'Drudge Charm (Regular)' WHERE object_Id = 3669 AND type = 1;
UPDATE weenie_properties_string SET value = 'Drudge Charm (Verdant)' WHERE object_Id = 850271 AND type = 1;
UPDATE weenie_properties_string SET value = 'Drudge Charm (Storm)' WHERE object_Id = 850272 AND type = 1;
UPDATE weenie_properties_string SET value = 'Drudge Charm (Abyssal)' WHERE object_Id = 850273 AND type = 1;

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (3669, 18, 1)
ON DUPLICATE KEY UPDATE value = 1;
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (850271, 18, 33)
ON DUPLICATE KEY UPDATE value = 33;
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (850272, 18, 65)
ON DUPLICATE KEY UPDATE value = 65;
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (850273, 18, 4097)
ON DUPLICATE KEY UPDATE value = 4097;

COMMIT;
