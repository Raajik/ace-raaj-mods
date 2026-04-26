DELETE FROM `weenie` WHERE `class_Id` = 800381;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800381, 'Carnage Token Note Darwin', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800381,   1,        128) /* ItemType - Misc */
     , (800381,   5,          1) /* EncumbranceVal */
     , (800381,  11,          1) /* MaxStackSize */
     , (800381,  12,          1) /* StackSize */
     , (800381,  13,          1) /* StackUnitEncumbrance */
     , (800381,  15,         10) /* StackUnitValue */
     , (800381,  16,          1) /* ItemUseable - No */
     , (800381,  19,         10) /* Value */
     , (800381,  33,          1) /* Bonded - Bonded */
     , (800381,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800381, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800381,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800381,   1, 'Daily Token Note') /* Name */
     , (800381,  16, 'Brother Darwin Carnage Token Note') /* LongDesc */
     , (800381,  33, 'CarnageTokenPickupDarwin') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800381,   1,   33554659) /* Setup */
     , (800381,   3,  536870932) /* SoundTable */
     , (800381,   8,  100691812) /* Icon */
     , (800381,  22,  872415275) /* PhysicsEffectTable */;
	 