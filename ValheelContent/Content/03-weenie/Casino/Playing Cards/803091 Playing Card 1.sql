DELETE FROM `weenie` WHERE `class_Id` = 803091;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803091, 'Playing Card 1', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803091,   1,        128) /* ItemType - Misc */
     , (803091,   5,          1) /* EncumbranceVal */
     , (803091,   8,          1) /* Mass */
     , (803091,   9,          0) /* ValidLocations - None */
     , (803091,  11,          1) /* MaxStackSize */
     , (803091,  12,          1) /* StackSize */
     , (803091,  13,         10) /* StackUnitEncumbrance */
     , (803091,  14,         10) /* StackUnitMass */
     , (803091,  15,          1) /* StackUnitValue */
     , (803091,  16,          1) /* ItemUseable - No */
     , (803091,  19,          1) /* Value */
     , (803091,  33,          1) /* Bonded - Bonded */
     , (803091,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803091, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803091,  22, True ) /* Inscribable */
     , (803091,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803091,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803091,   1, '1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803091,   1,   33554773) /* Setup */
     , (803091,   3,  536870932) /* SoundTable */
     , (803091,   8,  100668176) /* Icon */
     , (803091,  22,  872415275) /* PhysicsEffectTable */;