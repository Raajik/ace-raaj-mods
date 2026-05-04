-- Drudge charm: display name "Drudge Charm" (no Bloodletter prefix), sunstone-style rim ImbuedEffect 179=4 (ArmorRending), UiEffects 18=0.
-- Split examine: type 14 Use = short line; 15 ShortDesc empty; 16 LongDesc = full reward sentence (avoids duplicate paragraph in client).
-- Idempotent. Apply ace_world; restart ACE for weenie cache.
-- Supersedes visual/copy rows from DrudgeCharm_BloodletterBase_2026-05-05.sql for DBs already patched.

START TRANSACTION;

UPDATE weenie SET type = 51 WHERE class_Id IN (850271, 850272, 850273);

UPDATE weenie_properties_string SET value = 'Drudge Charm' WHERE object_Id = 24835 AND type = 1;
UPDATE weenie_properties_string SET value = 'Drudge Charm (Quality)' WHERE object_Id = 850271 AND type = 1;
UPDATE weenie_properties_string SET value = 'Drudge Charm (Pristine)' WHERE object_Id = 850272 AND type = 1;
UPDATE weenie_properties_string SET value = 'Drudge Charm (Perfect)' WHERE object_Id = 850273 AND type = 1;

INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(24835, 14, 'Give this stack to a Trophy Collector.'),
(24835, 15, ''),
(24835, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850271, 14, 'Give this stack to a Trophy Collector.'),
(850271, 15, ''),
(850271, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850272, 14, 'Give this stack to a Trophy Collector.'),
(850272, 15, ''),
(850272, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),
(850273, 14, 'Give this stack to a Trophy Collector.'),
(850273, 15, ''),
(850273, 16, 'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.')
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(24835, 20, 'Drudge Charms'),
(850271, 20, 'Drudge Charms (Quality)'),
(850272, 20, 'Drudge Charms (Pristine)'),
(850273, 20, 'Drudge Charms (Perfect)')
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(24835, 179, 4), (24835, 18, 0),
(850271, 179, 4), (850271, 18, 0),
(850272, 179, 4), (850272, 18, 0),
(850273, 179, 4), (850273, 18, 0)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(24835, 11, 999),
(850271, 11, 999),
(850272, 11, 999),
(850273, 11, 999)
ON DUPLICATE KEY UPDATE value = VALUES(value);

COMMIT;
