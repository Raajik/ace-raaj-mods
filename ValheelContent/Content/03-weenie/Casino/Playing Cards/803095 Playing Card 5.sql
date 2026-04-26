DELETE FROM `weenie` WHERE `class_Id` = 803095;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803095, 'Playing Card 5', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803095,   1,        128) /* ItemType - Misc */
     , (803095,   5,          1) /* EncumbranceVal */
     , (803095,   8,          1) /* Mass */
     , (803095,   9,          0) /* ValidLocations - None */
     , (803095,  11,          1) /* MaxStackSize */
     , (803095,  12,          1) /* StackSize */
     , (803095,  13,         10) /* StackUnitEncumbrance */
     , (803095,  14,         10) /* StackUnitMass */
     , (803095,  15,          1) /* StackUnitValue */
     , (803095,  16,          1) /* ItemUseable - No */
     , (803095,  19,          1) /* Value */
     , (803095,  33,          1) /* Bonded - Bonded */
     , (803095,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803095, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803095,  22, True ) /* Inscribable */
     , (803095,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803095,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803095,   1, '5') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803095,   1,   33554773) /* Setup */
     , (803095,   3,  536870932) /* SoundTable */
     , (803095,   8,  100668176) /* Icon */
     , (803095,  22,  872415275) /* PhysicsEffectTable */;