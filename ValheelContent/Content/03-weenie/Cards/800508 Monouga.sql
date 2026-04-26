DELETE FROM `weenie` WHERE `class_Id` = 800508;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800508, 'Monouga', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800508,   1,        128) /* ItemType - Misc */
     , (800508,   5,          1) /* EncumbranceVal */
     , (800508,   8,          1) /* Mass */
     , (800508,   9,          0) /* ValidLocations - None */
     , (800508,  11,       1000) /* MaxStackSize */
     , (800508,  12,          1) /* StackSize */
     , (800508,  13,         10) /* StackUnitEncumbrance */
     , (800508,  14,         10) /* StackUnitMass */
     , (800508,  15,          1) /* StackUnitValue */
     , (800508,  16,          1) /* ItemUseable - No */
     , (800508,  19,          1) /* Value */
     , (800508,  33,          1) /* Bonded - Bonded */
     , (800508,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800508, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800508,  22, True ) /* Inscribable */
     , (800508,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800508,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800508,   1, 'Monouga (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800508,   1,   33554773) /* Setup */
     , (800508,   3,  536870932) /* SoundTable */
     , (800508,   8,  100668176) /* Icon */
     , (800508,  22,  872415275) /* PhysicsEffectTable */;