DELETE FROM `weenie` WHERE `class_Id` = 803094;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803094, 'Playing Card 4', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803094,   1,        128) /* ItemType - Misc */
     , (803094,   5,          1) /* EncumbranceVal */
     , (803094,   8,          1) /* Mass */
     , (803094,   9,          0) /* ValidLocations - None */
     , (803094,  11,          1) /* MaxStackSize */
     , (803094,  12,          1) /* StackSize */
     , (803094,  13,         10) /* StackUnitEncumbrance */
     , (803094,  14,         10) /* StackUnitMass */
     , (803094,  15,          1) /* StackUnitValue */
     , (803094,  16,          1) /* ItemUseable - No */
     , (803094,  19,          1) /* Value */
     , (803094,  33,          1) /* Bonded - Bonded */
     , (803094,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803094, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803094,  22, True ) /* Inscribable */
     , (803094,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803094,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803094,   1, '4') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803094,   1,   33554773) /* Setup */
     , (803094,   3,  536870932) /* SoundTable */
     , (803094,   8,  100668176) /* Icon */
     , (803094,  22,  872415275) /* PhysicsEffectTable */;