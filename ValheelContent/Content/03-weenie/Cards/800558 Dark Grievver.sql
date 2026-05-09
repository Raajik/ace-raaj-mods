DELETE FROM `weenie` WHERE `class_Id` = 800558;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800558, 'Dark Grievver', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800558,   1,        128) /* ItemType - Misc */
     , (800558,   5,          1) /* EncumbranceVal */
     , (800558,   8,          1) /* Mass */
     , (800558,   9,          0) /* ValidLocations - None */
     , (800558,  11,       1000) /* MaxStackSize */
     , (800558,  12,          1) /* StackSize */
     , (800558,  13,         10) /* StackUnitEncumbrance */
     , (800558,  14,         10) /* StackUnitMass */
     , (800558,  15,          1) /* StackUnitValue */
     , (800558,  16,          1) /* ItemUseable - No */
     , (800558,  19,          1) /* Value */
     , (800558,  33,          1) /* Bonded - Bonded */
     , (800558,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800558, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800558,  22, True ) /* Inscribable */
     , (800558,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800558,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800558,   1, 'Dark Grievver (UC)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800558,   1,   33554773) /* Setup */
     , (800558,   3,  536870932) /* SoundTable */
     , (800558,   8,  100668176) /* Icon */
     , (800558,  22,  872415275) /* PhysicsEffectTable */;