DELETE FROM `weenie` WHERE `class_Id` = 801908;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801908, 'ACNote5000', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801908,   1,        128) /* ItemType - PromissoryNote */
     , (801908,   5,          1) /* EncumbranceVal */
     , (801908,   8,          1) /* Mass */
     , (801908,   9,          0) /* ValidLocations - None */
     , (801908,  11,        250) /* MaxStackSize */
     , (801908,  12,          1) /* StackSize */
     , (801908,  13,          1) /* StackUnitEncumbrance */
     , (801908,  14,          1) /* StackUnitMass */
     , (801908,  15,          5000) /* StackUnitValue */
     , (801908,  16,          1) /* ItemUseable - No */
	 , (801908,  18,          1) /* UiEffects - Magical */
     , (801908,  19,          5000) /* Value */
     , (801908,  33,          1) /* Bonded - Bonded */
     , (801908,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801908,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801908,   1, 'AC Note (5,000)') /* Name */
     , (801908,  20, 'AC Notes (5,000)') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801908,   1,   33554773) /* Setup */
     , (801908,   3,  536870932) /* SoundTable */
     , (801908,   8,  100669132) /* Icon */
     , (801908,  22,  872415275) /* PhysicsEffectTable */
     , (801908,  52,  100676435) /* IconUnderlay */;
