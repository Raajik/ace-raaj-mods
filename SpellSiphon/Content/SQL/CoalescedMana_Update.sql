-- Spellsiphon Coalesced Mana Update
-- Updates existing unused Coalesced Mana items (42516-42518) into tiered extraction materials.
-- These items already exist in the loot pool and will now serve as the catalyst for spell extraction.

-- ============================================
-- TIER 1: Lesser Coalesced Mana (WCID 42516)
-- Base success: 20%. Safe on fail (source item retained).
-- ============================================
UPDATE `weenie_properties_string` SET `value` = 'Lesser Coalesced Mana' WHERE `object_Id` = 42516 AND `type` = 1;
UPDATE `weenie_properties_string` SET `value` = 'A mote of coalesced mana, dim and flickering. Used with a Spellsiphon to extract spells from items. Safe to use - if extraction fails, the source item is unharmed.' WHERE `object_Id` = 42516 AND `type` = 16;
UPDATE `weenie_properties_string` SET `value` = 'Use this on a Spellsiphon, or use a Spellsiphon on this, to attune the device for spell extraction. Safe to use.' WHERE `object_Id` = 42516 AND `type` = 14;

UPDATE `weenie_properties_int` SET `value` = 100 WHERE `object_Id` = 42516 AND `type` = 11 /* MaxStackSize */;
UPDATE `weenie_properties_int` SET `value` = 0 WHERE `object_Id` = 42516 AND `type` = 33 /* Bonded - Normal */;
UPDATE `weenie_properties_int` SET `value` = 0 WHERE `object_Id` = 42516 AND `type` = 114 /* Attuned - Normal */;
INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`) VALUES (42516, 94, 128) ON DUPLICATE KEY UPDATE `value` = 128 /* TargetType - Misc (for bidirectional use on Spellsiphon) */;

-- ============================================
-- TIER 2: Greater Coalesced Mana (WCID 42517)
-- Base success: 30%. Safe on fail (source item retained).
-- ============================================
UPDATE `weenie_properties_string` SET `value` = 'Greater Coalesced Mana' WHERE `object_Id` = 42517 AND `type` = 1;
UPDATE `weenie_properties_string` SET `value` = 'A mote of coalesced mana, glowing steadily. Used with a Spellsiphon to extract spells from items. Safe to use - if extraction fails, the source item is unharmed.' WHERE `object_Id` = 42517 AND `type` = 16;
UPDATE `weenie_properties_string` SET `value` = 'Use this on a Spellsiphon, or use a Spellsiphon on this, to attune the device for spell extraction. Safe to use.' WHERE `object_Id` = 42517 AND `type` = 14;

UPDATE `weenie_properties_int` SET `value` = 100 WHERE `object_Id` = 42517 AND `type` = 11 /* MaxStackSize */;
UPDATE `weenie_properties_int` SET `value` = 0 WHERE `object_Id` = 42517 AND `type` = 33 /* Bonded - Normal */;
UPDATE `weenie_properties_int` SET `value` = 0 WHERE `object_Id` = 42517 AND `type` = 114 /* Attuned - Normal */;
INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`) VALUES (42517, 94, 128) ON DUPLICATE KEY UPDATE `value` = 128 /* TargetType - Misc (for bidirectional use on Spellsiphon) */;

-- ============================================
-- TIER 3: Aetheric Coalesced Mana (WCID 42518)
-- Base success: 40%. Destroys source item on fail.
-- ============================================
UPDATE `weenie_properties_string` SET `value` = 'Aetheric Coalesced Mana' WHERE `object_Id` = 42518 AND `type` = 1;
UPDATE `weenie_properties_string` SET `value` = 'A mote of coalesced mana, blazing with prismatic energy. Used with a Spellsiphon to extract spells from items. Dangerous - if extraction fails, the source item is destroyed.' WHERE `object_Id` = 42518 AND `type` = 16;
UPDATE `weenie_properties_string` SET `value` = 'Use this on a Spellsiphon, or use a Spellsiphon on this, to attune the device for spell extraction. Destroys source item on failure.' WHERE `object_Id` = 42518 AND `type` = 14;

UPDATE `weenie_properties_int` SET `value` = 100 WHERE `object_Id` = 42518 AND `type` = 11 /* MaxStackSize */;
UPDATE `weenie_properties_int` SET `value` = 0 WHERE `object_Id` = 42518 AND `type` = 33 /* Bonded - Normal */;
UPDATE `weenie_properties_int` SET `value` = 0 WHERE `object_Id` = 42518 AND `type` = 114 /* Attuned - Normal */;
INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`) VALUES (42518, 94, 128) ON DUPLICATE KEY UPDATE `value` = 128 /* TargetType - Misc (for bidirectional use on Spellsiphon) */;
