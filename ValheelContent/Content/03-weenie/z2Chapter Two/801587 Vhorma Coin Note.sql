DELETE FROM `weenie` WHERE `class_Id` = 801587;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801587, 'Vhorma Coin Note', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801587,   1,        128) /* ItemType - Misc */
     , (801587,   5,          1) /* EncumbranceVal */
     , (801587,  11,       1000) /* MaxStackSize */
     , (801587,  12,          1) /* StackSize */
     , (801587,  13,          1) /* StackUnitEncumbrance */
     , (801587,  15,       5000) /* StackUnitValue */
     , (801587,  16,          1) /* ItemUseable - No */
     , (801587,  19,       5000) /* Value */
     , (801587,  33,          1) /* Bonded - Bonded */
     , (801587,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801587, 114,          0) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801587,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801587,   1, 'Vhorma Coin Note') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801587,   1,   33554659) /* Setup */
     , (801587,   3,  536870932) /* SoundTable */
     , (801587,   8,  100691812) /* Icon */
     , (801587,  22,  872415275) /* PhysicsEffectTable */;
	 