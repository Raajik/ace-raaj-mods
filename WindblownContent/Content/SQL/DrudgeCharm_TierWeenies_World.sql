-- Drudge charm tiers: clone 3669 to Quality / Pristine / Perfect (850271-850273).
-- Scrub create-list spawns on 3669 (mod drops replace vanilla chest spawns).
-- See README-TrophyCharmCloneTemplate.md for the same pattern on other trophy lines.
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

-- WeenieType.Stackable = 51 (literal so a corrupted 3669.type cannot clone wrong).
INSERT INTO weenie (class_Id, class_Name, type) VALUES (850271, 'drudgecharm_quality', 51);
INSERT INTO weenie (class_Id, class_Name, type) VALUES (850272, 'drudgecharm_pristine', 51);
INSERT INTO weenie (class_Id, class_Name, type) VALUES (850273, 'drudgecharm_perfect', 51);

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

UPDATE weenie_properties_string SET value = 'Drudge Charm' WHERE object_Id = 3669 AND type = 1;
UPDATE weenie_properties_string SET value = 'Drudge Charm (Quality)' WHERE object_Id = 850271 AND type = 1;
UPDATE weenie_properties_string SET value = 'Drudge Charm (Pristine)' WHERE object_Id = 850272 AND type = 1;
UPDATE weenie_properties_string SET value = 'Drudge Charm (Perfect)' WHERE object_Id = 850273 AND type = 1;

-- Use (14), ShortDesc (15), LongDesc (16): Trophy Collector bulk turn-in; LLL banked trade notes + quest XP (ASCII only).
-- INSERT ... ON DUPLICATE: base 3669 may lack 14-16 rows in some DBs; clones only copy existing rows.
INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(3669, 14, 'Turn in stacked drudge trophies plus this charm at a Trophy Collector for bulk rewards.'),
(3669, 15, 'Trophy charm for common drudge lines.'),
(3669, 16, 'Awards quest experience and banked trade notes through LeyLineLedger. Does not grant loose pyreals.'),
(850271, 14, 'Turn in quality drudge trophy stacks plus this charm at a Trophy Collector for bulk rewards.'),
(850271, 15, 'Trophy charm for quality drudge stacks.'),
(850271, 16, 'Higher quest experience and banked trade notes than the base drudge charm.'),
(850272, 14, 'Turn in pristine drudge trophy stacks plus this charm at a Trophy Collector for bulk rewards.'),
(850272, 15, 'Trophy charm for pristine drudge stacks.'),
(850272, 16, 'Higher quest experience and banked trade notes than the quality charm.'),
(850273, 14, 'Turn in perfect drudge trophy stacks plus this charm at a Trophy Collector for bulk rewards.'),
(850273, 15, 'Trophy charm for perfect drudge stacks.'),
(850273, 16, 'Top quest experience and banked trade notes in this drudge line.')
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- PluralName (20): fixes stack display e.g. "40 Drudge Charms (Perfect)" not "...Charm (Perfect)s".
INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(3669, 20, 'Drudge Charms'),
(850271, 20, 'Drudge Charms (Quality)'),
(850272, 20, 'Drudge Charms (Pristine)'),
(850273, 20, 'Drudge Charms (Perfect)')
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- Icon chrome: sunstone / armor rending look on all tiers (ImbuedEffectType.ArmorRending = 4). UiEffects 0 = no extra tint layer.
-- If weenie.type were Portal (7), appraisal could append portal rules; tiers use Stackable (51) above.
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(3669, 179, 4), (3669, 18, 0),
(850271, 179, 4), (850271, 18, 0),
(850272, 179, 4), (850272, 18, 0),
(850273, 179, 4), (850273, 18, 0)
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- MaxStackSize (11): template StackSize (12) is often 40; raising max lets admin spawn larger stacks than 40.
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(3669, 11, 999),
(850271, 11, 999),
(850272, 11, 999),
(850273, 11, 999)
ON DUPLICATE KEY UPDATE value = VALUES(value);

UPDATE weenie SET class_Name = 'drudgecharm_quality' WHERE class_Id = 850271;
UPDATE weenie SET class_Name = 'drudgecharm_pristine' WHERE class_Id = 850272;
UPDATE weenie SET class_Name = 'drudgecharm_perfect' WHERE class_Id = 850273;

-- Belt-and-suspenders: keep tiers Stackable even if 3669.type were ever wrong in a DB.
UPDATE weenie SET type = 51 WHERE class_Id IN (850271, 850272, 850273);

COMMIT;

-- Readonly audit (run separately; do not paste passwords into shared docs):
-- ace_world: SELECT type, value FROM weenie_properties_int WHERE object_Id IN (3669,850271,850272,850273) AND type IN (11,18,179);
-- ace_world: SELECT type, value FROM weenie_properties_string WHERE object_Id IN (3669,850271,850272,850273) AND type IN (14,15,16,20);
-- ace_world: SELECT object_Id, destination_Type, weenie_Class_Id FROM weenie_properties_create_list WHERE weenie_Class_Id IN (3669,850271,850272,850273);
-- ace_world: SELECT treasure_Type, weenie_Class_Id, probability FROM treasure_wielded WHERE weenie_Class_Id IN (3669,850271,850272,850273);
-- ace_shard: SELECT weenie_Class_Id, COUNT(*) FROM biota WHERE weenie_Class_Id IN (3669,850271,850272,850273) GROUP BY weenie_class_id;
