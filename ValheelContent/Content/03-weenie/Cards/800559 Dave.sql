DELETE FROM `weenie` WHERE `class_Id` = 800559;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800559, 'Dave', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800559,   1,        128) /* ItemType - Misc */
     , (800559,   5,          1) /* EncumbranceVal */
     , (800559,   8,          1) /* Mass */
     , (800559,   9,          0) /* ValidLocations - None */
     , (800559,  11,       1000) /* MaxStackSize */
     , (800559,  12,          1) /* StackSize */
     , (800559,  13,         10) /* StackUnitEncumbrance */
     , (800559,  14,         10) /* StackUnitMass */
     , (800559,  15,          1) /* StackUnitValue */
     , (800559,  16,          1) /* ItemUseable - No */
     , (800559,  19,          1) /* Value */
     , (800559,  33,          1) /* Bonded - Bonded */
     , (800559,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800559, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800559,  22, True ) /* Inscribable */
     , (800559,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800559,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800559,   1, 'Dave (UC)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800559,   1,   33554773) /* Setup */
     , (800559,   3,  536870932) /* SoundTable */
     , (800559,   8,  100668176) /* Icon */
     , (800559,  22,  872415275) /* PhysicsEffectTable */;