DELETE FROM `weenie` WHERE `class_Id` = 801907;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801907, 'ACNote1000', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801907,   1,        128) /* ItemType - PromissoryNote */
     , (801907,   5,          1) /* EncumbranceVal */
     , (801907,   8,          1) /* Mass */
     , (801907,   9,          0) /* ValidLocations - None */
     , (801907,  11,        250) /* MaxStackSize */
     , (801907,  12,          1) /* StackSize */
     , (801907,  13,          1) /* StackUnitEncumbrance */
     , (801907,  14,          1) /* StackUnitMass */
     , (801907,  15,          1000) /* StackUnitValue */
     , (801907,  16,          1) /* ItemUseable - No */
	 , (801907,  18,          1) /* UiEffects - Magical */
     , (801907,  19,          1000) /* Value */
     , (801907,  33,          1) /* Bonded - Bonded */
     , (801907,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801907,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801907,   1, 'AC Note (1,000)') /* Name */
     , (801907,  20, 'AC Notes (1,000)') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801907,   1,   33554773) /* Setup */
     , (801907,   3,  536870932) /* SoundTable */
     , (801907,   8,  100669134) /* Icon */
     , (801907,  22,  872415275) /* PhysicsEffectTable */
     , (801907,  52,  100676435) /* IconUnderlay */;
