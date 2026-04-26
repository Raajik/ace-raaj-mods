DELETE FROM `weenie` WHERE `class_Id` = 803098;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803098, 'Playing Card 8', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803098,   1,        128) /* ItemType - Misc */
     , (803098,   5,          1) /* EncumbranceVal */
     , (803098,   8,          1) /* Mass */
     , (803098,   9,          0) /* ValidLocations - None */
     , (803098,  11,          1) /* MaxStackSize */
     , (803098,  12,          1) /* StackSize */
     , (803098,  13,         10) /* StackUnitEncumbrance */
     , (803098,  14,         10) /* StackUnitMass */
     , (803098,  15,          1) /* StackUnitValue */
     , (803098,  16,          1) /* ItemUseable - No */
     , (803098,  19,          1) /* Value */
     , (803098,  33,          1) /* Bonded - Bonded */
     , (803098,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803098, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803098,  22, True ) /* Inscribable */
     , (803098,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803098,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803098,   1, '8') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803098,   1,   33554773) /* Setup */
     , (803098,   3,  536870932) /* SoundTable */
     , (803098,   8,  100668176) /* Icon */
     , (803098,  22,  872415275) /* PhysicsEffectTable */;