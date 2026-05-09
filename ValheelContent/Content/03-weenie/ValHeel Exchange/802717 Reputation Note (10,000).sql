DELETE FROM `weenie` WHERE `class_Id` = 802717;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802717, 'RepNote10000', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802717,   1,        128) /* ItemType - PromissoryNote */
     , (802717,   5,          1) /* EncumbranceVal */
     , (802717,   8,          1) /* Mass */
     , (802717,   9,          0) /* ValidLocations - None */
     , (802717,  11,        250) /* MaxStackSize */
     , (802717,  12,          1) /* StackSize */
     , (802717,  13,          1) /* StackUnitEncumbrance */
     , (802717,  14,          1) /* StackUnitMass */
     , (802717,  15,      10000) /* StackUnitValue */
     , (802717,  16,          1) /* ItemUseable - No */
	 , (802717,  18,          1) /* UiEffects - Magical */
     , (802717,  19,      10000) /* Value */
     , (802717,  33,          1) /* Bonded - Bonded */
     , (802717,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802717,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802717,   1, 'Reputation Note (10,000)') /* Name */
     , (802717,  20, 'Reputation Notes (10,000)') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802717,   1,   33554773) /* Setup */
     , (802717,   3,  536870932) /* SoundTable */
     , (802717,   8,  100669129) /* Icon */
     , (802717,  22,  872415275) /* PhysicsEffectTable */
     , (802717,  52,  100676441) /* IconUnderlay */;
