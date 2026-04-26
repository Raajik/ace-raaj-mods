DELETE FROM `weenie` WHERE `class_Id` = 800529;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800529, 'Disciple of Hatred', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800529,   1,        128) /* ItemType - Misc */
     , (800529,   5,          1) /* EncumbranceVal */
     , (800529,   8,          1) /* Mass */
     , (800529,   9,          0) /* ValidLocations - None */
     , (800529,  11,       1000) /* MaxStackSize */
     , (800529,  12,          1) /* StackSize */
     , (800529,  13,         10) /* StackUnitEncumbrance */
     , (800529,  14,         10) /* StackUnitMass */
     , (800529,  15,          1) /* StackUnitValue */
     , (800529,  16,          1) /* ItemUseable - No */
     , (800529,  19,          1) /* Value */
     , (800529,  33,          1) /* Bonded - Bonded */
     , (800529,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800529, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800529,  22, True ) /* Inscribable */
     , (800529,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800529,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800529,   1, 'Disciple of Hatred (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800529,   1,   33554773) /* Setup */
     , (800529,   3,  536870932) /* SoundTable */
     , (800529,   8,  100668176) /* Icon */
     , (800529,  22,  872415275) /* PhysicsEffectTable */;