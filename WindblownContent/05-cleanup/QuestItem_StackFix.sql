-- Fix quest items that drop from creature create-lists as multiple separate
-- non-stackable objects, causing 0 burden/value and unmergeable stacks.
--
-- Root cause: these items were created as WeenieType=Generic (1) without
-- stack properties. ACE only treats Stackable/Gem/Ammunition/etc. weenie
-- types as stackable. Changing the type to Stackable (51) and adding the
-- missing int properties makes them behave correctly in loot and inventory.
--
-- Run this against ace_world, then restart the server (ACE caches weenies
-- at startup). Also run a matching biota cleanup against ace_shard for
-- items already in player inventories if needed.

-- =============================================
-- Drudge Charm (WCID 3669)
-- =============================================

-- Change weenie type from Generic (1) -> Stackable (51)
UPDATE `weenie` SET `type` = 51 WHERE `class_Id` = 3669;

-- Add stack properties (idempotent: works whether rows exist or not)
INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`) VALUES
 (3669,  33,   1)  /* StackSize            -- current stack count   */
,(3669, 111, 100)  /* MaxStackSize         -- max items per stack   */
,(3669,  12,  40)  /* StackUnitEncumbrance -- burden per unit       */
,(3669,  14,   5)  /* StackUnitValue       -- value per unit        */
ON DUPLICATE KEY UPDATE value = VALUES(value);

-- =============================================
-- Template for adding more items:
--
-- UPDATE `weenie` SET `type` = 51 WHERE `class_Id` = <WCID>;
-- INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`) VALUES
--  (<WCID>,  33,   1)
-- ,(<WCID>, 111, 100)
-- ,(<WCID>,  12,  <unit burden>)
-- ,(<WCID>,  14,  <unit value>)
-- ON DUPLICATE KEY UPDATE value = VALUES(value);
-- =============================================
