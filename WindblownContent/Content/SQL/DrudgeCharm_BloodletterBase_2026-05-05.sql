-- Drudge charm: Bloodletter (24835) as bulk base + tiers 850271-850273.
-- Per-tier ImbuedEffect (179) + UiEffects (18); unified Use/Short/Long (14-16); PluralName (20); MaxStackSize 11=999; tier type=51.
-- Idempotent. Apply ace_world; restart ACE for weenie cache.
-- Full destructive clone: DrudgeCharm_TierWeenies_World.sql

START TRANSACTION;

UPDATE weenie SET type = 51 WHERE class_Id IN (850271, 850272, 850273);

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

UPDATE weenie_properties_string SET value = 'Bloodletter Drudge Charm (Quality)' WHERE object_Id = 850271 AND type = 1;
UPDATE weenie_properties_string SET value = 'Bloodletter Drudge Charm (Pristine)' WHERE object_Id = 850272 AND type = 1;
UPDATE weenie_properties_string SET value = 'Bloodletter Drudge Charm (Perfect)' WHERE object_Id = 850273 AND type = 1;

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

DELETE FROM weenie_properties_create_list WHERE weenie_Class_Id = 24835;

COMMIT;
