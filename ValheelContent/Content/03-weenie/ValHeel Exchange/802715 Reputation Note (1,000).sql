DELETE FROM `weenie` WHERE `class_Id` = 802715;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802715, 'RepNote1000', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802715,   1,        128) /* ItemType - PromissoryNote */
     , (802715,   5,          1) /* EncumbranceVal */
     , (802715,   8,          1) /* Mass */
     , (802715,   9,          0) /* ValidLocations - None */
     , (802715,  11,        250) /* MaxStackSize */
     , (802715,  12,          1) /* StackSize */
     , (802715,  13,          1) /* StackUnitEncumbrance */
     , (802715,  14,          1) /* StackUnitMass */
     , (802715,  15,       1000) /* StackUnitValue */
     , (802715,  16,          1) /* ItemUseable - No */
	 , (802715,  18,          1) /* UiEffects - Magical */
     , (802715,  19,       1000) /* Value */
     , (802715,  33,          1) /* Bonded - Bonded */
     , (802715,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802715,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802715,   1, 'Reputation Note (1,000)') /* Name */
     , (802715,  20, 'Reputation Notes (1,000)') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802715,   1,   33554773) /* Setup */
     , (802715,   3,  536870932) /* SoundTable */
     , (802715,   8,  100669134) /* Icon */
     , (802715,  22,  872415275) /* PhysicsEffectTable */
     , (802715,  52,  100676441) /* IconUnderlay */;
