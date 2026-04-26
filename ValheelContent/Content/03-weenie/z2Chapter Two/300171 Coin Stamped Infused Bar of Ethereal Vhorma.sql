DELETE FROM `weenie` WHERE `class_Id` = 300171;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300171, 'CoinStampedInfusedBarofEtherealVhorma', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300171,   1,        128) /* ItemType - Misc */
     , (300171,   5,         50) /* EncumbranceVal */
     , (300171,   8,         50) /* Mass */
     , (300171,   9,          0) /* ValidLocations - None */
     , (300171,  11,         25) /* MaxStackSize */
     , (300171,  12,          1) /* StackSize */
     , (300171,  13,         50) /* StackUnitEncumbrance */
     , (300171,  14,         50) /* StackUnitMass */
     , (300171,  15,          0) /* StackUnitValue */
     , (300171,  16,          1) /* ItemUseable - No */
     , (300171,  18,          1) /* UiEffects - Magical */
     , (300171,  19,          0) /* Value */
     , (300171,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300171,  22, True ) /* Inscribable */
     , (300171,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300171,   1, 'Coin Stamped Infused Bar of Ethereal Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300171,   1,   33555677) /* Setup */
     , (300171,   8,  100689897) /* Icon */
	 , (300171,  50,  100689497) /* IconOverlay */
     , (300171,  52,  100689404) /* IconUnderlay */;
