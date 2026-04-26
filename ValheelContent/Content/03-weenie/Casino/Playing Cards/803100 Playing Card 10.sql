DELETE FROM `weenie` WHERE `class_Id` = 803100;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803100, 'Playing Card 10', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803100,   1,        128) /* ItemType - Misc */
     , (803100,   5,          1) /* EncumbranceVal */
     , (803100,   8,          1) /* Mass */
     , (803100,   9,          0) /* ValidLocations - None */
     , (803100,  11,          1) /* MaxStackSize */
     , (803100,  12,          1) /* StackSize */
     , (803100,  13,         10) /* StackUnitEncumbrance */
     , (803100,  14,         10) /* StackUnitMass */
     , (803100,  15,          1) /* StackUnitValue */
     , (803100,  16,          1) /* ItemUseable - No */
     , (803100,  19,          1) /* Value */
     , (803100,  33,          1) /* Bonded - Bonded */
     , (803100,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803100, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803100,  22, True ) /* Inscribable */
     , (803100,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803100,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803100,   1, '10') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803100,   1,   33554773) /* Setup */
     , (803100,   3,  536870932) /* SoundTable */
     , (803100,   8,  100668176) /* Icon */
     , (803100,  22,  872415275) /* PhysicsEffectTable */;