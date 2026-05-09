DELETE FROM `weenie` WHERE `class_Id` = 800378;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800378, 'Carnage Token Note Wolfe', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800378,   1,        128) /* ItemType - Misc */
     , (800378,   5,          1) /* EncumbranceVal */
     , (800378,  11,          1) /* MaxStackSize */
     , (800378,  12,          1) /* StackSize */
     , (800378,  13,          1) /* StackUnitEncumbrance */
     , (800378,  15,         10) /* StackUnitValue */
     , (800378,  16,          1) /* ItemUseable - No */
     , (800378,  19,         10) /* Value */
     , (800378,  33,          1) /* Bonded - Bonded */
     , (800378,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800378, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800378,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800378,   1, 'Daily Token Note') /* Name */
     , (800378,  16, 'Brother Wolfe Carnage Token Note') /* LongDesc */
     , (800378,  33, 'CarnageTokenPickupWolfe') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800378,   1,   33554659) /* Setup */
     , (800378,   3,  536870932) /* SoundTable */
     , (800378,   8,  100691812) /* Icon */
     , (800378,  22,  872415275) /* PhysicsEffectTable */;
	 