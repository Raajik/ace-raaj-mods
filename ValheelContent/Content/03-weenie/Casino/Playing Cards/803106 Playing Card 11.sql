DELETE FROM `weenie` WHERE `class_Id` = 803106;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803106, 'Playing Card 11', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803106,   1,        128) /* ItemType - Misc */
     , (803106,   5,          1) /* EncumbranceVal */
     , (803106,   8,          1) /* Mass */
     , (803106,   9,          0) /* ValidLocations - None */
     , (803106,  11,          1) /* MaxStackSize */
     , (803106,  12,          1) /* StackSize */
     , (803106,  13,         10) /* StackUnitEncumbrance */
     , (803106,  14,         10) /* StackUnitMass */
     , (803106,  15,          1) /* StackUnitValue */
     , (803106,  16,          1) /* ItemUseable - No */
     , (803106,  19,          1) /* Value */
     , (803106,  33,          1) /* Bonded - Bonded */
     , (803106,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803106, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803106,  22, True ) /* Inscribable */
     , (803106,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803106,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803106,   1, '11') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803106,   1,   33554773) /* Setup */
     , (803106,   3,  536870932) /* SoundTable */
     , (803106,   8,  100668176) /* Icon */
     , (803106,  22,  872415275) /* PhysicsEffectTable */;