DELETE FROM `weenie` WHERE `class_Id` = 800373;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800373, 'Carnage Token Note Holt', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800373,   1,        128) /* ItemType - Misc */
     , (800373,   5,          1) /* EncumbranceVal */
     , (800373,  11,          1) /* MaxStackSize */
     , (800373,  12,          1) /* StackSize */
     , (800373,  13,          1) /* StackUnitEncumbrance */
     , (800373,  15,         10) /* StackUnitValue */
     , (800373,  16,          1) /* ItemUseable - No */
     , (800373,  19,         10) /* Value */
     , (800373,  33,          1) /* Bonded - Bonded */
     , (800373,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800373, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800373,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800373,   1, 'Daily Token Note') /* Name */
     , (800373,  16, 'Holtburg Corrupt Mayor Carnage Token Note') /* LongDesc */
     , (800373,  33, 'CarnageTokenPickupHolt') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800373,   1,   33554659) /* Setup */
     , (800373,   3,  536870932) /* SoundTable */
     , (800373,   8,  100691812) /* Icon */
     , (800373,  22,  872415275) /* PhysicsEffectTable */;
	 