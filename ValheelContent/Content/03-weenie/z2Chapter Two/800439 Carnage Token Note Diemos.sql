DELETE FROM `weenie` WHERE `class_Id` = 800439;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800439, 'Carnage Token Note Diemos', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800439,   1,        128) /* ItemType - Misc */
     , (800439,   5,          1) /* EncumbranceVal */
     , (800439,  11,          1) /* MaxStackSize */
     , (800439,  12,          1) /* StackSize */
     , (800439,  13,          1) /* StackUnitEncumbrance */
     , (800439,  15,         10) /* StackUnitValue */
     , (800439,  16,          1) /* ItemUseable - No */
     , (800439,  19,         10) /* Value */
     , (800439,  33,          1) /* Bonded - Bonded */
     , (800439,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800439, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800439,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800439,   1, 'Diemos Daily Token Note') /* Name */
     , (800439,  16, 'Diemos Carnage Token Note') /* LongDesc */
     , (800439,  33, 'CarnageTokenNoteDiemos2') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800439,   1,   33554659) /* Setup */
     , (800439,   3,  536870932) /* SoundTable */
     , (800439,   8,  100691812) /* Icon */
     , (800439,  22,  872415275) /* PhysicsEffectTable */;
	 