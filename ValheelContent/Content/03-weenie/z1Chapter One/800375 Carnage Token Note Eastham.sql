DELETE FROM `weenie` WHERE `class_Id` = 800375;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800375, 'Carnage Token Note Eastham', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800375,   1,        128) /* ItemType - Misc */
     , (800375,   5,          1) /* EncumbranceVal */
     , (800375,  11,          1) /* MaxStackSize */
     , (800375,  12,          1) /* StackSize */
     , (800375,  13,          1) /* StackUnitEncumbrance */
     , (800375,  15,         10) /* StackUnitValue */
     , (800375,  16,          1) /* ItemUseable - No */
     , (800375,  19,         10) /* Value */
     , (800375,  33,          1) /* Bonded - Bonded */
     , (800375,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800375, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800375,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800375,   1, 'Daily Token Note') /* Name */
     , (800375,  16, 'Eastham Corrupt Mayor Carnage Token Note') /* LongDesc */
     , (800375,  33, 'CarnageTokenPickupEastham') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800375,   1,   33554659) /* Setup */
     , (800375,   3,  536870932) /* SoundTable */
     , (800375,   8,  100691812) /* Icon */
     , (800375,  22,  872415275) /* PhysicsEffectTable */;
	 