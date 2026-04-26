DELETE FROM `weenie` WHERE `class_Id` = 800516;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800516, 'Favorable Doll', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800516,   1,        128) /* ItemType - Misc */
     , (800516,   5,          1) /* EncumbranceVal */
     , (800516,   8,          1) /* Mass */
     , (800516,   9,          0) /* ValidLocations - None */
     , (800516,  11,       1000) /* MaxStackSize */
     , (800516,  12,          1) /* StackSize */
     , (800516,  13,         10) /* StackUnitEncumbrance */
     , (800516,  14,         10) /* StackUnitMass */
     , (800516,  15,          1) /* StackUnitValue */
     , (800516,  16,          1) /* ItemUseable - No */
     , (800516,  19,          1) /* Value */
     , (800516,  33,          1) /* Bonded - Bonded */
     , (800516,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800516, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800516,  22, True ) /* Inscribable */
     , (800516,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800516,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800516,   1, 'Favorable Doll (UC)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800516,   1,   33554773) /* Setup */
     , (800516,   3,  536870932) /* SoundTable */
     , (800516,   8,  100668176) /* Icon */
     , (800516,  22,  872415275) /* PhysicsEffectTable */;