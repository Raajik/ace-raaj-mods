DELETE FROM `weenie` WHERE `class_Id` = 800379;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800379, 'Carnage Token Note Gorin', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800379,   1,        128) /* ItemType - Misc */
     , (800379,   5,          1) /* EncumbranceVal */
     , (800379,  11,          1) /* MaxStackSize */
     , (800379,  12,          1) /* StackSize */
     , (800379,  13,          1) /* StackUnitEncumbrance */
     , (800379,  15,         10) /* StackUnitValue */
     , (800379,  16,          1) /* ItemUseable - No */
     , (800379,  19,         10) /* Value */
     , (800379,  33,          1) /* Bonded - Bonded */
     , (800379,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800379, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800379,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800379,   1, 'Daily Token Note') /* Name */
     , (800379,  16, 'Brother Gorin Carnage Token Note') /* LongDesc */
     , (800379,  33, 'CarnageTokenPickupGorin') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800379,   1,   33554659) /* Setup */
     , (800379,   3,  536870932) /* SoundTable */
     , (800379,   8,  100691812) /* Icon */
     , (800379,  22,  872415275) /* PhysicsEffectTable */;
	 