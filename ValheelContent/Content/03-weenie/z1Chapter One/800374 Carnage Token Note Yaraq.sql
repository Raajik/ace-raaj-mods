DELETE FROM `weenie` WHERE `class_Id` = 800374;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800374, 'Carnage Token Note Yaraq', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800374,   1,        128) /* ItemType - Misc */
     , (800374,   5,          1) /* EncumbranceVal */
     , (800374,  11,          1) /* MaxStackSize */
     , (800374,  12,          1) /* StackSize */
     , (800374,  13,          1) /* StackUnitEncumbrance */
     , (800374,  15,         10) /* StackUnitValue */
     , (800374,  16,          1) /* ItemUseable - No */
     , (800374,  19,         10) /* Value */
     , (800374,  33,          1) /* Bonded - Bonded */
     , (800374,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800374, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800374,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800374,   1, 'Daily Token Note') /* Name */
     , (800374,  16, 'Yaraq Corrupt Mayor Carnage Token Note') /* LongDesc */
     , (800374,  33, 'CarnageTokenPickupYaraq') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800374,   1,   33554659) /* Setup */
     , (800374,   3,  536870932) /* SoundTable */
     , (800374,   8,  100691812) /* Icon */
     , (800374,  22,  872415275) /* PhysicsEffectTable */;
	 