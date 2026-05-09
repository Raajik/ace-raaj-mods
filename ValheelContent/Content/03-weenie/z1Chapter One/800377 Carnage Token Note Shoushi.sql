DELETE FROM `weenie` WHERE `class_Id` = 800377;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800377, 'Carnage Token Note Shoushi', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800377,   1,        128) /* ItemType - Misc */
     , (800377,   5,          1) /* EncumbranceVal */
     , (800377,  11,          1) /* MaxStackSize */
     , (800377,  12,          1) /* StackSize */
     , (800377,  13,          1) /* StackUnitEncumbrance */
     , (800377,  15,         10) /* StackUnitValue */
     , (800377,  16,          1) /* ItemUseable - No */
     , (800377,  19,         10) /* Value */
     , (800377,  33,          1) /* Bonded - Bonded */
     , (800377,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800377, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800377,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800377,   1, 'Daily Token Note') /* Name */
     , (800377,  16, 'Shoushi Corrupt Mayor Carnage Token Note') /* LongDesc */
     , (800377,  33, 'CarnageTokenPickupShoushi') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800377,   1,   33554659) /* Setup */
     , (800377,   3,  536870932) /* SoundTable */
     , (800377,   8,  100691812) /* Icon */
     , (800377,  22,  872415275) /* PhysicsEffectTable */;
	 