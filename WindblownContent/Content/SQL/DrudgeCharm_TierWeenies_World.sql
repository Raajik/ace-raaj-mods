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

INSERT INTO weenie (class_Id, class_Name, type)
SELECT 850271, 'drudgecharm_quality', type FROM weenie WHERE class_Id = 3669 LIMIT 1;
INSERT INTO weenie (class_Id, class_Name, type)
SELECT 850272, 'drudgecharm_pristine', type FROM weenie WHERE class_Id = 3669 LIMIT 1;
INSERT INTO weenie (class_Id, class_Name, type)
SELECT 850273, 'drudgecharm_perfect', type FROM weenie WHERE class_Id = 3669 LIMIT 1;

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

-- Use (14), ShortDesc (15), LongDesc (16): bulk Trophy Collector turn-in; mod pays scaled quest XP + banked trade notes (LLL), not vanilla pocket pyreals.
-- INSERT ... ON DUPLICATE: base 3669 may lack 14-16 rows in some DBs; clones only copy existing rows.
INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(3669, 14, 'Present stacked drudge trophies and this charm to a Trophy Collector for a bulk reward.'),
(3669, 15, 'Charm for common Dereth drudge trophy hauls.'),
(3669, 16, 'Collectors will award experience and banked trade notes for these common drudge trophies. Full stacks beat the old token payouts, and the note payout goes to your bank instead of raw pyreals in your pack.'),
(850271, 14, 'Present quality-grade drudge trophy stacks and this charm to a Trophy Collector for a bulk reward.'),
(850271, 15, 'Charm for quality drudge trophy stacks.'),
(850271, 16, 'Same collector path as the base charm, with a higher quest XP bracket per trophy and more trade notes banked per charm than Drudge Charm.'),
(850272, 14, 'Present pristine drudge trophy stacks and this charm to a Trophy Collector for a bulk reward.'),
(850272, 15, 'Charm for pristine drudge trophy stacks.'),
(850272, 16, 'Same collector path; stronger quest XP scaling and banked trade notes per charm than Drudge Charm (Quality).'),
(850273, 14, 'Present perfect-tier drudge trophy stacks and this charm to a Trophy Collector for a bulk reward.'),
(850273, 15, 'Charm for perfect drudge trophy stacks.'),
(850273, 16, 'Same collector path; top quest XP bracket and banked trade notes per charm in this drudge line.')
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (3669, 18, 1)
ON DUPLICATE KEY UPDATE value = 1;
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (850271, 18, 33)
ON DUPLICATE KEY UPDATE value = 33;
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (850272, 18, 65)
ON DUPLICATE KEY UPDATE value = 65;
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (850273, 18, 4097)
ON DUPLICATE KEY UPDATE value = 4097;

UPDATE weenie SET class_Name = 'drudgecharm_quality' WHERE class_Id = 850271;
UPDATE weenie SET class_Name = 'drudgecharm_pristine' WHERE class_Id = 850272;
UPDATE weenie SET class_Name = 'drudgecharm_perfect' WHERE class_Id = 850273;

COMMIT;

-- Readonly audit (run separately; do not paste passwords into shared docs):
-- ace_world: SELECT type, value FROM weenie_properties_int WHERE object_Id IN (3669,850271,850272,850273) AND type IN (16,94,218);
-- ace_world: SELECT object_Id, destination_Type, weenie_Class_Id FROM weenie_properties_create_list WHERE weenie_Class_Id IN (3669,850271,850272,850273);
-- ace_world: SELECT treasure_Type, weenie_Class_Id, probability FROM treasure_wielded WHERE weenie_Class_Id IN (3669,850271,850272,850273);
-- ace_shard: SELECT weenie_Class_Id, COUNT(*) FROM biota WHERE weenie_Class_Id IN (3669,850271,850272,850273) GROUP BY weenie_class_id;
