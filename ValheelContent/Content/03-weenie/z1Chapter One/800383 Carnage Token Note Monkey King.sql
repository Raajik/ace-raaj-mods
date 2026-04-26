DELETE FROM `weenie` WHERE `class_Id` = 800383;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800383, 'Carnage Token Note Monkey King', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800383,   1,        128) /* ItemType - Misc */
     , (800383,   5,          1) /* EncumbranceVal */
     , (800383,  11,          1) /* MaxStackSize */
     , (800383,  12,          1) /* StackSize */
     , (800383,  13,          1) /* StackUnitEncumbrance */
     , (800383,  15,         10) /* StackUnitValue */
     , (800383,  16,          1) /* ItemUseable - No */
     , (800383,  19,         10) /* Value */
     , (800383,  33,          1) /* Bonded - Bonded */
     , (800383,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800383, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800383,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800383,   1, 'Daily Token Note') /* Name */
     , (800383,  16, 'Monkey King Carnage Token Note') /* LongDesc */
     , (800383,  33, 'CarnageTokenPickupMonkeyKing') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800383,   1,   33554659) /* Setup */
     , (800383,   3,  536870932) /* SoundTable */
     , (800383,   8,  100691812) /* Icon */
     , (800383,  22,  872415275) /* PhysicsEffectTable */;
	 