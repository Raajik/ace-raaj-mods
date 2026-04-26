DELETE FROM `weenie` WHERE `class_Id` = 800376;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800376, 'Carnage Token Note Qalabar', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800376,   1,        128) /* ItemType - Misc */
     , (800376,   5,          1) /* EncumbranceVal */
     , (800376,  11,          1) /* MaxStackSize */
     , (800376,  12,          1) /* StackSize */
     , (800376,  13,          1) /* StackUnitEncumbrance */
     , (800376,  15,         10) /* StackUnitValue */
     , (800376,  16,          1) /* ItemUseable - No */
     , (800376,  19,         10) /* Value */
     , (800376,  33,          1) /* Bonded - Bonded */
     , (800376,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800376, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800376,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800376,   1, 'Daily Token Note') /* Name */
     , (800376,  16, 'Qalaba''r Corrupt Mayor Carnage Token Note') /* LongDesc */
     , (800376,  33, 'CarnageTokenPickupQalabar') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800376,   1,   33554659) /* Setup */
     , (800376,   3,  536870932) /* SoundTable */
     , (800376,   8,  100691812) /* Icon */
     , (800376,  22,  872415275) /* PhysicsEffectTable */;
	 