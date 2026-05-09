DELETE FROM `weenie` WHERE `class_Id` = 803097;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803097, 'Playing Card 7', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803097,   1,        128) /* ItemType - Misc */
     , (803097,   5,          1) /* EncumbranceVal */
     , (803097,   8,          1) /* Mass */
     , (803097,   9,          0) /* ValidLocations - None */
     , (803097,  11,          1) /* MaxStackSize */
     , (803097,  12,          1) /* StackSize */
     , (803097,  13,         10) /* StackUnitEncumbrance */
     , (803097,  14,         10) /* StackUnitMass */
     , (803097,  15,          1) /* StackUnitValue */
     , (803097,  16,          1) /* ItemUseable - No */
     , (803097,  19,          1) /* Value */
     , (803097,  33,          1) /* Bonded - Bonded */
     , (803097,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803097, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803097,  22, True ) /* Inscribable */
     , (803097,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803097,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803097,   1, '7') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803097,   1,   33554773) /* Setup */
     , (803097,   3,  536870932) /* SoundTable */
     , (803097,   8,  100668176) /* Icon */
     , (803097,  22,  872415275) /* PhysicsEffectTable */;