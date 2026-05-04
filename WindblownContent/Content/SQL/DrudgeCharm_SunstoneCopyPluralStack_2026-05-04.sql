-- Drudge charm: sunstone-style icon (ImbuedEffect 179=ArmorRending 4), UiEffects 18=0, PluralName 20,
-- shorter Use/Short/Long strings, MaxStackSize 11=999, tier weenie.type=51 Stackable.
-- Idempotent. Apply ace_world; restart ACE for weenie cache.
-- Canonical full clone script: DrudgeCharm_TierWeenies_World.sql

START TRANSACTION;

UPDATE weenie SET type = 51 WHERE class_Id IN (850271, 850272, 850273);

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

INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(3669, 20, 'Drudge Charms'),
(850271, 20, 'Drudge Charms (Quality)'),
(850272, 20, 'Drudge Charms (Pristine)'),
(850273, 20, 'Drudge Charms (Perfect)')
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(3669, 179, 4), (3669, 18, 0),
(850271, 179, 4), (850271, 18, 0),
(850272, 179, 4), (850272, 18, 0),
(850273, 179, 4), (850273, 18, 0)
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(3669, 11, 999),
(850271, 11, 999),
(850272, 11, 999),
(850273, 11, 999)
ON DUPLICATE KEY UPDATE value = VALUES(value);

COMMIT;
