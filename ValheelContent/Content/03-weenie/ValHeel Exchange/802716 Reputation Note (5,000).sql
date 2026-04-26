DELETE FROM `weenie` WHERE `class_Id` = 802716;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802716, 'RepNote5000', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802716,   1,        128) /* ItemType - PromissoryNote */
     , (802716,   5,          1) /* EncumbranceVal */
     , (802716,   8,          1) /* Mass */
     , (802716,   9,          0) /* ValidLocations - None */
     , (802716,  11,        250) /* MaxStackSize */
     , (802716,  12,          1) /* StackSize */
     , (802716,  13,          1) /* StackUnitEncumbrance */
     , (802716,  14,          1) /* StackUnitMass */
     , (802716,  15,       5000) /* StackUnitValue */
     , (802716,  16,          1) /* ItemUseable - No */
	 , (802716,  18,          1) /* UiEffects - Magical */
     , (802716,  19,       5000) /* Value */
     , (802716,  33,          1) /* Bonded - Bonded */
     , (802716,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802716,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802716,   1, 'Reputation Note (5,000)') /* Name */
     , (802716,  20, 'Reputation Notes (5,000)') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802716,   1,   33554773) /* Setup */
     , (802716,   3,  536870932) /* SoundTable */
     , (802716,   8,  100669132) /* Icon */
     , (802716,  22,  872415275) /* PhysicsEffectTable */
     , (802716,  52,  100676441) /* IconUnderlay */;
