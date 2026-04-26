DELETE FROM `weenie` WHERE `class_Id` = 800561;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800561, 'Ryan the Fire Guy', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800561,   1,        128) /* ItemType - Misc */
     , (800561,   5,          1) /* EncumbranceVal */
     , (800561,   8,          1) /* Mass */
     , (800561,   9,          0) /* ValidLocations - None */
     , (800561,  11,       1000) /* MaxStackSize */
     , (800561,  12,          1) /* StackSize */
     , (800561,  13,         10) /* StackUnitEncumbrance */
     , (800561,  14,         10) /* StackUnitMass */
     , (800561,  15,          1) /* StackUnitValue */
     , (800561,  16,          1) /* ItemUseable - No */
     , (800561,  19,          1) /* Value */
     , (800561,  33,          1) /* Bonded - Bonded */
     , (800561,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800561, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800561,  22, True ) /* Inscribable */
     , (800561,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800561,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800561,   1, 'Ryan the Fire Guy (UC)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800561,   1,   33554773) /* Setup */
     , (800561,   3,  536870932) /* SoundTable */
     , (800561,   8,  100668176) /* Icon */
     , (800561,  22,  872415275) /* PhysicsEffectTable */;