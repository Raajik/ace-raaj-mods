DELETE FROM `weenie` WHERE `class_Id` = 803092;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803092, 'Playing Card 2', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803092,   1,        128) /* ItemType - Misc */
     , (803092,   5,          1) /* EncumbranceVal */
     , (803092,   8,          1) /* Mass */
     , (803092,   9,          0) /* ValidLocations - None */
     , (803092,  11,          1) /* MaxStackSize */
     , (803092,  12,          1) /* StackSize */
     , (803092,  13,         10) /* StackUnitEncumbrance */
     , (803092,  14,         10) /* StackUnitMass */
     , (803092,  15,          1) /* StackUnitValue */
     , (803092,  16,          1) /* ItemUseable - No */
     , (803092,  19,          1) /* Value */
     , (803092,  33,          1) /* Bonded - Bonded */
     , (803092,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803092, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803092,  22, True ) /* Inscribable */
     , (803092,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803092,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803092,   1, '2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803092,   1,   33554773) /* Setup */
     , (803092,   3,  536870932) /* SoundTable */
     , (803092,   8,  100668176) /* Icon */
     , (803092,  22,  872415275) /* PhysicsEffectTable */;