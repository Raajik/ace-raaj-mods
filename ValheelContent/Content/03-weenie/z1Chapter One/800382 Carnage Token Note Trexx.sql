DELETE FROM `weenie` WHERE `class_Id` = 800382;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800382, 'Carnage Token Note Trexx', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800382,   1,        128) /* ItemType - Misc */
     , (800382,   5,          1) /* EncumbranceVal */
     , (800382,  11,          1) /* MaxStackSize */
     , (800382,  12,          1) /* StackSize */
     , (800382,  13,          1) /* StackUnitEncumbrance */
     , (800382,  15,         10) /* StackUnitValue */
     , (800382,  16,          1) /* ItemUseable - No */
     , (800382,  19,         10) /* Value */
     , (800382,  33,          1) /* Bonded - Bonded */
     , (800382,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800382, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800382,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800382,   1, 'Daily Token Note') /* Name */
     , (800382,  16, 'Brother Trexx Carnage Token Note') /* LongDesc */
     , (800382,  33, 'CarnageTokenPickupTrexx') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800382,   1,   33554659) /* Setup */
     , (800382,   3,  536870932) /* SoundTable */
     , (800382,   8,  100691812) /* Icon */
     , (800382,  22,  872415275) /* PhysicsEffectTable */;
	 