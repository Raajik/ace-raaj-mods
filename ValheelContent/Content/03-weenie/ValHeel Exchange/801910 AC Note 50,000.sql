DELETE FROM `weenie` WHERE `class_Id` = 801910;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801910, 'ACNote50000', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801910,   1,        128) /* ItemType - PromissoryNote */
     , (801910,   5,          1) /* EncumbranceVal */
     , (801910,   8,          1) /* Mass */
     , (801910,   9,          0) /* ValidLocations - None */
     , (801910,  11,        250) /* MaxStackSize */
     , (801910,  12,          1) /* StackSize */
     , (801910,  13,          1) /* StackUnitEncumbrance */
     , (801910,  14,          1) /* StackUnitMass */
     , (801910,  15,          50000) /* StackUnitValue */
     , (801910,  16,          1) /* ItemUseable - No */
	 , (801910,  18,          1) /* UiEffects - Magical */
     , (801910,  19,          50000) /* Value */
     , (801910,  33,          1) /* Bonded - Bonded */
     , (801910,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801910,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801910,   1, 'AC Note (50,000)') /* Name */
     , (801910,  20, 'AC Notes (50,000)') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801910,   1,   33554773) /* Setup */
     , (801910,   3,  536870932) /* SoundTable */
     , (801910,   8,  100669130) /* Icon */
     , (801910,  22,  872415275) /* PhysicsEffectTable */
     , (801910,  52,  100676435) /* IconUnderlay */;
