DELETE FROM `weenie` WHERE `class_Id` = 800358;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800358, 'Carnage Token Note', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800358,   1,        128) /* ItemType - Misc */
     , (800358,   5,          1) /* EncumbranceVal */
     , (800358,  11,        100) /* MaxStackSize */
     , (800358,  12,          1) /* StackSize */
     , (800358,  13,          1) /* StackUnitEncumbrance */
     , (800358,  15,         10) /* StackUnitValue */
     , (800358,  16,          1) /* ItemUseable - No */
     , (800358,  19,         10) /* Value */
     , (800358,  33,          1) /* Bonded - Bonded */
     , (800358,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800358, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800358,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800358,   1, 'Daily Token Note') /* Name */
     , (800358,  33, 'CarnageTokenPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800358,   1,   33554659) /* Setup */
     , (800358,   3,  536870932) /* SoundTable */
     , (800358,   8,  100691812) /* Icon */
     , (800358,  22,  872415275) /* PhysicsEffectTable */;
	 