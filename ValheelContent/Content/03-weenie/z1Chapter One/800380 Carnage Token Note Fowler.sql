DELETE FROM `weenie` WHERE `class_Id` = 800380;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800380, 'Carnage Token Note Fowler', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800380,   1,        128) /* ItemType - Misc */
     , (800380,   5,          1) /* EncumbranceVal */
     , (800380,  11,          1) /* MaxStackSize */
     , (800380,  12,          1) /* StackSize */
     , (800380,  13,          1) /* StackUnitEncumbrance */
     , (800380,  15,         10) /* StackUnitValue */
     , (800380,  16,          1) /* ItemUseable - No */
     , (800380,  19,         10) /* Value */
     , (800380,  33,          1) /* Bonded - Bonded */
     , (800380,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800380, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800380,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800380,   1, 'Daily Token Note') /* Name */
     , (800380,  16, 'Brother Fowler Carnage Token Note') /* LongDesc */
     , (800380,  33, 'CarnageTokenPickupFowler') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800380,   1,   33554659) /* Setup */
     , (800380,   3,  536870932) /* SoundTable */
     , (800380,   8,  100691812) /* Icon */
     , (800380,  22,  872415275) /* PhysicsEffectTable */;
	 