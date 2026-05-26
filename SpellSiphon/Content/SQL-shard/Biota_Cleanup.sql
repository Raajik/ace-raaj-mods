-- ============================================
-- Biota Cleanup: Patch EXISTING items in player inventories
-- ============================================
-- ACE copies weenie properties to each item's biota at creation time.
-- Updating the world template alone does NOT affect items already in circulation.
-- This script patches existing biota records so players don't need new items.
--
-- Usage: Apply to ace_shard after applying the world template to ace_world.
-- No restart required — biota changes are read from the shard DB on next interaction.
--
-- Pattern: For any weenie property change, run BOTH:
--   1. Template update (ace_world.weenie_properties_*) — for future drops
--   2. Biota cleanup (ace_shard.biota_properties_*) — for existing items
-- ============================================

-- ============================================
-- Spellsiphon Tool (WCID 850200)
-- Fix: TargetType was 33569 (missing Misc/Gem/Jewelry/Armor/Clothing)
-- ============================================
INSERT INTO `biota_properties_int` (`object_Id`, `type`, `value`)
SELECT b.`id`, 94, 35215
FROM `biota` b
WHERE b.`weenie_Class_Id` = 850200
ON DUPLICATE KEY UPDATE `value` = 35215;

-- ============================================
-- Glyph of Extraction tiers 0-9 (WCIDs 850210-850219)
-- Fix: narrow TargetType on older biotas blocks use on armor/jewelry with imbue majors
-- ============================================
INSERT INTO `biota_properties_int` (`object_Id`, `type`, `value`)
SELECT b.`id`, 94, 560015
FROM `biota` b
WHERE b.`weenie_Class_Id` BETWEEN 850210 AND 850219
ON DUPLICATE KEY UPDATE `value` = 560015;

-- ============================================
-- Lesser Coalesced Mana (WCID 42516)
-- Fix: TargetType missing (needed for bidirectional use)
-- Fix: Em-dash → hyphen in descriptions (Windows-1252 compatibility)
-- ============================================
INSERT INTO `biota_properties_int` (`object_Id`, `type`, `value`)
SELECT b.`id`, 94, 128
FROM `biota` b
WHERE b.`weenie_Class_Id` = 42516
ON DUPLICATE KEY UPDATE `value` = 128;

UPDATE `biota_properties_string` s
JOIN `biota` b ON b.`id` = s.`object_Id`
SET s.`value` = 'A mote of coalesced mana, dim and flickering. Used with a Spellsiphon to extract spells from items. Safe to use - if extraction fails, the source item is unharmed.'
WHERE b.`weenie_Class_Id` = 42516 AND s.`type` = 16;

UPDATE `biota_properties_string` s
JOIN `biota` b ON b.`id` = s.`object_Id`
SET s.`value` = 'Use this on a Spellsiphon, or use a Spellsiphon on this, to attune the device for spell extraction. Safe to use.'
WHERE b.`weenie_Class_Id` = 42516 AND s.`type` = 14;

-- ============================================
-- Greater Coalesced Mana (WCID 42517)
-- ============================================
INSERT INTO `biota_properties_int` (`object_Id`, `type`, `value`)
SELECT b.`id`, 94, 128
FROM `biota` b
WHERE b.`weenie_Class_Id` = 42517
ON DUPLICATE KEY UPDATE `value` = 128;

UPDATE `biota_properties_string` s
JOIN `biota` b ON b.`id` = s.`object_Id`
SET s.`value` = 'A mote of coalesced mana, glowing steadily. Used with a Spellsiphon to extract spells from items. Safe to use - if extraction fails, the source item is unharmed.'
WHERE b.`weenie_Class_Id` = 42517 AND s.`type` = 16;

UPDATE `biota_properties_string` s
JOIN `biota` b ON b.`id` = s.`object_Id`
SET s.`value` = 'Use this on a Spellsiphon, or use a Spellsiphon on this, to attune the device for spell extraction. Safe to use.'
WHERE b.`weenie_Class_Id` = 42517 AND s.`type` = 14;

-- ============================================
-- Aetheric Coalesced Mana (WCID 42518)
-- ============================================
INSERT INTO `biota_properties_int` (`object_Id`, `type`, `value`)
SELECT b.`id`, 94, 128
FROM `biota` b
WHERE b.`weenie_Class_Id` = 42518
ON DUPLICATE KEY UPDATE `value` = 128;

UPDATE `biota_properties_string` s
JOIN `biota` b ON b.`id` = s.`object_Id`
SET s.`value` = 'A mote of coalesced mana, blazing with prismatic energy. Used with a Spellsiphon to extract spells from items. Dangerous - if extraction fails, the source item is destroyed.'
WHERE b.`weenie_Class_Id` = 42518 AND s.`type` = 16;

UPDATE `biota_properties_string` s
JOIN `biota` b ON b.`id` = s.`object_Id`
SET s.`value` = 'Use this on a Spellsiphon, or use a Spellsiphon on this, to attune the device for spell extraction. Destroys source item on failure.'
WHERE b.`weenie_Class_Id` = 42518 AND s.`type` = 14;
