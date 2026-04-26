DELETE FROM `weenie` WHERE `class_Id` = 800509;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800509, 'Mosswart', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800509,   1,        128) /* ItemType - Misc */
     , (800509,   5,          1) /* EncumbranceVal */
     , (800509,   8,          1) /* Mass */
     , (800509,   9,          0) /* ValidLocations - None */
     , (800509,  11,       1000) /* MaxStackSize */
     , (800509,  12,          1) /* StackSize */
     , (800509,  13,         10) /* StackUnitEncumbrance */
     , (800509,  14,         10) /* StackUnitMass */
     , (800509,  15,          1) /* StackUnitValue */
     , (800509,  16,          1) /* ItemUseable - No */
     , (800509,  19,          1) /* Value */
     , (800509,  33,          1) /* Bonded - Bonded */
     , (800509,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800509, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800509,  22, True ) /* Inscribable */
     , (800509,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800509,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800509,   1, 'Mosswart (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800509,   1,   33554773) /* Setup */
     , (800509,   3,  536870932) /* SoundTable */
     , (800509,   8,  100668176) /* Icon */
     , (800509,  22,  872415275) /* PhysicsEffectTable */;