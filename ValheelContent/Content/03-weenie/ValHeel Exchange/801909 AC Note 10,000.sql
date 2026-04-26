DELETE FROM `weenie` WHERE `class_Id` = 801909;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801909, 'ACNote10000', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801909,   1,        128) /* ItemType - PromissoryNote */
     , (801909,   5,          1) /* EncumbranceVal */
     , (801909,   8,          1) /* Mass */
     , (801909,   9,          0) /* ValidLocations - None */
     , (801909,  11,        250) /* MaxStackSize */
     , (801909,  12,          1) /* StackSize */
     , (801909,  13,          1) /* StackUnitEncumbrance */
     , (801909,  14,          1) /* StackUnitMass */
     , (801909,  15,          10000) /* StackUnitValue */
     , (801909,  16,          1) /* ItemUseable - No */
	 , (801909,  18,          1) /* UiEffects - Magical */
     , (801909,  19,          10000) /* Value */
     , (801909,  33,          1) /* Bonded - Bonded */
     , (801909,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801909,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801909,   1, 'AC Note (10,000)') /* Name */
     , (801909,  20, 'AC Notes (10,000)') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801909,   1,   33554773) /* Setup */
     , (801909,   3,  536870932) /* SoundTable */
     , (801909,   8,  100669129) /* Icon */
     , (801909,  22,  872415275) /* PhysicsEffectTable */
     , (801909,  52,  100676435) /* IconUnderlay */;
