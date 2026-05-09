DELETE FROM `weenie` WHERE `class_Id` = 803099;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803099, 'Playing Card 9', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803099,   1,        128) /* ItemType - Misc */
     , (803099,   5,          1) /* EncumbranceVal */
     , (803099,   8,          1) /* Mass */
     , (803099,   9,          0) /* ValidLocations - None */
     , (803099,  11,          1) /* MaxStackSize */
     , (803099,  12,          1) /* StackSize */
     , (803099,  13,         10) /* StackUnitEncumbrance */
     , (803099,  14,         10) /* StackUnitMass */
     , (803099,  15,          1) /* StackUnitValue */
     , (803099,  16,          1) /* ItemUseable - No */
     , (803099,  19,          1) /* Value */
     , (803099,  33,          1) /* Bonded - Bonded */
     , (803099,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803099, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803099,  22, True ) /* Inscribable */
     , (803099,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803099,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803099,   1, '9') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803099,   1,   33554773) /* Setup */
     , (803099,   3,  536870932) /* SoundTable */
     , (803099,   8,  100668176) /* Icon */
     , (803099,  22,  872415275) /* PhysicsEffectTable */;