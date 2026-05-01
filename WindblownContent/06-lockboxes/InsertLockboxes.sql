-- Lockboxes Mod - Lockbox Weenie Definitions
-- Clean up ALL old/invalid lockbox entries before inserting new ones

DELETE FROM `weenie_properties_d_i_d` WHERE `object_Id` IN (101189990, 101189991, 101189992, 101189993, 101189994, 101189995);
DELETE FROM `weenie_properties_string` WHERE `object_Id` IN (101189990, 101189991, 101189992, 101189993, 101189994, 101189995);
DELETE FROM `weenie_properties_bool` WHERE `object_Id` IN (101189990, 101189991, 101189992, 101189993, 101189994, 101189995);
DELETE FROM `weenie_properties_int` WHERE `object_Id` IN (101189990, 101189991, 101189992, 101189993, 101189994, 101189995);
DELETE FROM `weenie` WHERE `class_Id` IN (101189990, 101189991, 101189992, 101189993, 101189994, 101189995);

-- Tier 1 Lockbox (WCID 101189993)
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`) VALUES (101189993, 'LockboxesTier1_v6', 2, '2026-04-17 00:00:00') /* Chest */;
INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`) VALUES 
    (101189993,   1,        128) /* ItemType - Misc */
     , (101189993,   5,         50) /* EncumbranceVal */
     , (101189993,  16,          8) /* ItemUseable - Contained */
     , (101189993,  19,          5) /* Value */
     , (101189993,  38,         50) /* ResistLockpick */
     , (101189993,  44,          0) /* KeyCode */
     , (101189993,  93,       1044) /* PhysicsState */
     , (101189993,  98,      10000) /* RadarPriority */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (101189993,  22, True ) /* Inscribable */
     , (101189993,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (101189993,   1, 'Tier 1 Lockbox') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (101189993,   8,   100673039) /* Icon */;

-- Tier 2 Lockbox (WCID 101189994)
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`) VALUES (101189994, 'LockboxesTier2_v6', 2, '2026-04-17 00:00:00') /* Chest */;
INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`) VALUES 
    (101189994,   1,        128) /* ItemType - Misc */
     , (101189994,   5,         50) /* EncumbranceVal */
     , (101189994,  16,          8) /* ItemUseable - Contained */
     , (101189994,  19,          5) /* Value */
     , (101189994,  38,        100) /* ResistLockpick */
     , (101189994,  44,          0) /* KeyCode */
     , (101189994,  93,       1044) /* PhysicsState */
     , (101189994,  98,      10000) /* RadarPriority */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (101189994,  22, True ) /* Inscribable */
     , (101189994,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (101189994,   1, 'Tier 2 Lockbox') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (101189994,   8,   100673039) /* Icon */;

-- Tier 3 Lockbox (WCID 101189995)
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`) VALUES (101189995, 'LockboxesTier3_v6', 2, '2026-04-17 00:00:00') /* Chest */;
INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`) VALUES 
    (101189995,   1,        128) /* ItemType - Misc */
     , (101189995,   5,         50) /* EncumbranceVal */
     , (101189995,  16,          8) /* ItemUseable - Contained */
     , (101189995,  19,          5) /* Value */
     , (101189995,  38,        150) /* ResistLockpick */
     , (101189995,  44,          0) /* KeyCode */
     , (101189995,  93,       1044) /* PhysicsState */
     , (101189995,  98,      10000) /* RadarPriority */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (101189995,  22, True ) /* Inscribable */
     , (101189995,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (101189995,   1, 'Tier 3 Lockbox') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (101189995,   8,   100673039) /* Icon */;