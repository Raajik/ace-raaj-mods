DELETE FROM `weenie` WHERE `class_Id` = 800384;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800384, 'Carnage Token Note Shadow Captain', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800384,   1,        128) /* ItemType - Misc */
     , (800384,   5,          1) /* EncumbranceVal */
     , (800384,  11,          1) /* MaxStackSize */
     , (800384,  12,          1) /* StackSize */
     , (800384,  13,          1) /* StackUnitEncumbrance */
     , (800384,  15,         10) /* StackUnitValue */
     , (800384,  16,          1) /* ItemUseable - No */
     , (800384,  19,         10) /* Value */
     , (800384,  33,          1) /* Bonded - Bonded */
     , (800384,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800384, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800384,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800384,   1, 'Daily Token Note') /* Name */
     , (800384,  16, 'Shadow Captain Carnage Token Note') /* LongDesc */
     , (800384,  33, 'CarnageTokenPickupShadowCaptain') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800384,   1,   33554659) /* Setup */
     , (800384,   3,  536870932) /* SoundTable */
     , (800384,   8,  100691812) /* Icon */
     , (800384,  22,  872415275) /* PhysicsEffectTable */;
	 