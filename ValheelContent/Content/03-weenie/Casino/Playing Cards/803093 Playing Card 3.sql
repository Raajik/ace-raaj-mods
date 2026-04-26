DELETE FROM `weenie` WHERE `class_Id` = 803093;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803093, 'Playing Card 3', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803093,   1,        128) /* ItemType - Misc */
     , (803093,   5,          1) /* EncumbranceVal */
     , (803093,   8,          1) /* Mass */
     , (803093,   9,          0) /* ValidLocations - None */
     , (803093,  11,          1) /* MaxStackSize */
     , (803093,  12,          1) /* StackSize */
     , (803093,  13,         10) /* StackUnitEncumbrance */
     , (803093,  14,         10) /* StackUnitMass */
     , (803093,  15,          1) /* StackUnitValue */
     , (803093,  16,          1) /* ItemUseable - No */
     , (803093,  19,          1) /* Value */
     , (803093,  33,          1) /* Bonded - Bonded */
     , (803093,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803093, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803093,  22, True ) /* Inscribable */
     , (803093,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803093,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803093,   1, '3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803093,   1,   33554773) /* Setup */
     , (803093,   3,  536870932) /* SoundTable */
     , (803093,   8,  100668176) /* Icon */
     , (803093,  22,  872415275) /* PhysicsEffectTable */;