-- Drudge charm tiers: clone template WCID 24835 to Quality / Pristine / Perfect (850271-850273).
-- Scrub create-list spawns on 24835 (mod drops replace vanilla chest spawns).
-- See README-TrophyCharmCloneTemplate.md for the same pattern on other trophy lines.
-- Apply to ace_world; restart ACE to reload weenie cache.
-- Forward-only idempotent patch: DrudgeCharm_BloodletterPerTierRestore_2026-05-07.sql

START TRANSACTION;

DELETE FROM weenie_properties_create_list WHERE weenie_Class_Id = 24835;

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

-- WeenieType.Stackable = 51 (literal; do not inherit a bad template type).
INSERT INTO weenie (class_Id, class_Name, type) VALUES (850271, 'drudgecharm_quality', 51);
INSERT INTO weenie (class_Id, class_Name, type) VALUES (850272, 'drudgecharm_pristine', 51);
INSERT INTO weenie (class_Id, class_Name, type) VALUES (850273, 'drudgecharm_perfect', 51);

INSERT INTO weenie_properties_int (object_Id, type, value)
SELECT 850271, type, value FROM weenie_properties_int WHERE object_Id = 24835;
INSERT INTO weenie_properties_int (object_Id, type, value)
SELECT 850272, type, value FROM weenie_properties_int WHERE object_Id = 24835;
INSERT INTO weenie_properties_int (object_Id, type, value)
SELECT 850273, type, value FROM weenie_properties_int WHERE object_Id = 24835;

INSERT INTO weenie_properties_bool (object_Id, type, value)
SELECT 850271, type, value FROM weenie_properties_bool WHERE object_Id = 24835;
INSERT INTO weenie_properties_bool (object_Id, type, value)
SELECT 850272, type, value FROM weenie_properties_bool WHERE object_Id = 24835;
INSERT INTO weenie_properties_bool (object_Id, type, value)
SELECT 850273, type, value FROM weenie_properties_bool WHERE object_Id = 24835;

INSERT INTO weenie_properties_float (object_Id, type, value)
SELECT 850271, type, value FROM weenie_properties_float WHERE object_Id = 24835;
INSERT INTO weenie_properties_float (object_Id, type, value)
SELECT 850272, type, value FROM weenie_properties_float WHERE object_Id = 24835;
INSERT INTO weenie_properties_float (object_Id, type, value)
SELECT 850273, type, value FROM weenie_properties_float WHERE object_Id = 24835;

INSERT INTO weenie_properties_string (object_Id, type, value)
SELECT 850271, type, value FROM weenie_properties_string WHERE object_Id = 24835;
INSERT INTO weenie_properties_string (object_Id, type, value)
SELECT 850272, type, value FROM weenie_properties_string WHERE object_Id = 24835;
INSERT INTO weenie_properties_string (object_Id, type, value)
SELECT 850273, type, value FROM weenie_properties_string WHERE object_Id = 24835;

INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
SELECT 850271, type, value FROM weenie_properties_d_i_d WHERE object_Id = 24835;
INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
SELECT 850272, type, value FROM weenie_properties_d_i_d WHERE object_Id = 24835;
INSERT INTO weenie_properties_d_i_d (object_Id, type, value)
SELECT 850273, type, value FROM weenie_properties_d_i_d WHERE object_Id = 24835;

UPDATE weenie_properties_string SET value = 'Bloodletter Drudge Charm' WHERE object_Id = 24835 AND type = 1;
UPDATE weenie_properties_string SET value = 'Bloodletter Drudge Charm (Quality)' WHERE object_Id = 850271 AND type = 1;
UPDATE weenie_properties_string SET value = 'Bloodletter Drudge Charm (Pristine)' WHERE object_Id = 850272 AND type = 1;
UPDATE weenie_properties_string SET value = 'Bloodletter Drudge Charm (Perfect)' WHERE object_Id = 850273 AND type = 1;

-- Same Collectors sentence on 14 (Use), 15 (ShortDesc), 16 (LongDesc) for all four WCIDs.
INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(24835, 14, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(24835, 15, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(24835, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850271, 14, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850271, 15, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850271, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850272, 14, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850272, 15, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850272, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850273, 14, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850273, 15, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850273, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.')
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(24835, 20, 'Bloodletter Drudge Charms'),
(850271, 20, 'Bloodletter Drudge Charms (Quality)'),
(850272, 20, 'Bloodletter Drudge Charms (Pristine)'),
(850273, 20, 'Bloodletter Drudge Charms (Perfect)')
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- Per-tier client rim/glow (179 ImbuedEffect + 18 UiEffects); not weapon combat rend on charms.
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(24835, 179, 32), (24835, 18, 128),
(850271, 179, 64), (850271, 18, 256),
(850272, 179, 128), (850272, 18, 1),
(850273, 179, 256), (850273, 18, 64)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(24835, 11, 999),
(850271, 11, 999),
(850272, 11, 999),
(850273, 11, 999)
ON DUPLICATE KEY UPDATE value = VALUES(value);

UPDATE weenie SET class_Name = 'drudgecharm_quality' WHERE class_Id = 850271;
UPDATE weenie SET class_Name = 'drudgecharm_pristine' WHERE class_Id = 850272;
UPDATE weenie SET class_Name = 'drudgecharm_perfect' WHERE class_Id = 850273;

UPDATE weenie SET type = 51 WHERE class_Id IN (850271, 850272, 850273);

COMMIT;

-- Readonly audit (run separately; do not paste passwords into shared docs):
-- ace_world: SELECT type, value FROM weenie_properties_int WHERE object_Id IN (24835,850271,850272,850273) AND type IN (11,18,179);
-- ace_world: SELECT type, value FROM weenie_properties_string WHERE object_Id IN (24835,850271,850272,850273) AND type IN (14,15,16,20,1);
-- ace_world: SELECT object_Id, destination_Type, weenie_Class_Id FROM weenie_properties_create_list WHERE weenie_Class_Id IN (24835,850271,850272,850273);
