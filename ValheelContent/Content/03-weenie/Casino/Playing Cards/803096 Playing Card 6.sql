DELETE FROM `weenie` WHERE `class_Id` = 803096;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803096, 'Playing Card 6', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803096,   1,        128) /* ItemType - Misc */
     , (803096,   5,          1) /* EncumbranceVal */
     , (803096,   8,          1) /* Mass */
     , (803096,   9,          0) /* ValidLocations - None */
     , (803096,  11,          1) /* MaxStackSize */
     , (803096,  12,          1) /* StackSize */
     , (803096,  13,         10) /* StackUnitEncumbrance */
     , (803096,  14,         10) /* StackUnitMass */
     , (803096,  15,          1) /* StackUnitValue */
     , (803096,  16,          1) /* ItemUseable - No */
     , (803096,  19,          1) /* Value */
     , (803096,  33,          1) /* Bonded - Bonded */
     , (803096,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803096, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803096,  22, True ) /* Inscribable */
     , (803096,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803096,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803096,   1, '6') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803096,   1,   33554773) /* Setup */
     , (803096,   3,  536870932) /* SoundTable */
     , (803096,   8,  100668176) /* Icon */
     , (803096,  22,  872415275) /* PhysicsEffectTable */;