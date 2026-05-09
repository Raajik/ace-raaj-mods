DELETE FROM `weenie` WHERE `class_Id` = 800525;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800525, 'Viamontian Champion', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800525,   1,        128) /* ItemType - Misc */
     , (800525,   5,          1) /* EncumbranceVal */
     , (800525,   8,          1) /* Mass */
     , (800525,   9,          0) /* ValidLocations - None */
     , (800525,  11,       1000) /* MaxStackSize */
     , (800525,  12,          1) /* StackSize */
     , (800525,  13,         10) /* StackUnitEncumbrance */
     , (800525,  14,         10) /* StackUnitMass */
     , (800525,  15,          1) /* StackUnitValue */
     , (800525,  16,          1) /* ItemUseable - No */
     , (800525,  19,          1) /* Value */
     , (800525,  33,          1) /* Bonded - Bonded */
     , (800525,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800525, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800525,  22, True ) /* Inscribable */
     , (800525,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800525,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800525,   1, 'Viamontian Champion (R)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800525,   1,   33554773) /* Setup */
     , (800525,   3,  536870932) /* SoundTable */
     , (800525,   8,  100668176) /* Icon */
     , (800525,  22,  872415275) /* PhysicsEffectTable */;