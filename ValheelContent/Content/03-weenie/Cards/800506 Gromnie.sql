DELETE FROM `weenie` WHERE `class_Id` = 800506;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800506, 'Gromnie2', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800506,   1,        128) /* ItemType - Misc */
     , (800506,   5,          1) /* EncumbranceVal */
     , (800506,   8,          1) /* Mass */
     , (800506,   9,          0) /* ValidLocations - None */
     , (800506,  11,       1000) /* MaxStackSize */
     , (800506,  12,          1) /* StackSize */
     , (800506,  13,         10) /* StackUnitEncumbrance */
     , (800506,  14,         10) /* StackUnitMass */
     , (800506,  15,          1) /* StackUnitValue */
     , (800506,  16,          1) /* ItemUseable - No */
     , (800506,  19,          1) /* Value */
     , (800506,  33,          1) /* Bonded - Bonded */
     , (800506,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800506, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800506,  22, True ) /* Inscribable */
     , (800506,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800506,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800506,   1, 'Gromnie (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800506,   1,   33554773) /* Setup */
     , (800506,   3,  536870932) /* SoundTable */
     , (800506,   8,  100668176) /* Icon */
     , (800506,  22,  872415275) /* PhysicsEffectTable */;