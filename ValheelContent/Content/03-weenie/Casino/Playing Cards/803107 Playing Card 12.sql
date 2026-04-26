DELETE FROM `weenie` WHERE `class_Id` = 803107;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803107, 'Playing Card 12', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803107,   1,        128) /* ItemType - Misc */
     , (803107,   5,          1) /* EncumbranceVal */
     , (803107,   8,          1) /* Mass */
     , (803107,   9,          0) /* ValidLocations - None */
     , (803107,  11,          1) /* MaxStackSize */
     , (803107,  12,          1) /* StackSize */
     , (803107,  13,         10) /* StackUnitEncumbrance */
     , (803107,  14,         10) /* StackUnitMass */
     , (803107,  15,          1) /* StackUnitValue */
     , (803107,  16,          1) /* ItemUseable - No */
     , (803107,  19,          1) /* Value */
     , (803107,  33,          1) /* Bonded - Bonded */
     , (803107,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803107, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803107,  22, True ) /* Inscribable */
     , (803107,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803107,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803107,   1, '12') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803107,   1,   33554773) /* Setup */
     , (803107,   3,  536870932) /* SoundTable */
     , (803107,   8,  100668176) /* Icon */
     , (803107,  22,  872415275) /* PhysicsEffectTable */;