DELETE FROM `weenie` WHERE `class_Id` = 802718;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802718, 'RepNote50000', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802718,   1,        128) /* ItemType - PromissoryNote */
     , (802718,   5,          1) /* EncumbranceVal */
     , (802718,   8,          1) /* Mass */
     , (802718,   9,          0) /* ValidLocations - None */
     , (802718,  11,        250) /* MaxStackSize */
     , (802718,  12,          1) /* StackSize */
     , (802718,  13,          1) /* StackUnitEncumbrance */
     , (802718,  14,          1) /* StackUnitMass */
     , (802718,  15,      50000) /* StackUnitValue */
     , (802718,  16,          1) /* ItemUseable - No */
	 , (802718,  18,          1) /* UiEffects - Magical */
     , (802718,  19,      50000) /* Value */
     , (802718,  33,          1) /* Bonded - Bonded */
     , (802718,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802718,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802718,   1, 'Reputation Note (50,000)') /* Name */
     , (802718,  20, 'Reputation Notes (50,000)') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802718,   1,   33554773) /* Setup */
     , (802718,   3,  536870932) /* SoundTable */
     , (802718,   8,  100669130) /* Icon */
     , (802718,  22,  872415275) /* PhysicsEffectTable */
     , (802718,  52,  100676441) /* IconUnderlay */;
