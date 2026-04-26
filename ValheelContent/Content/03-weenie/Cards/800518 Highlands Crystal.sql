DELETE FROM `weenie` WHERE `class_Id` = 800518;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800518, 'Highlands Crystal', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800518,   1,        128) /* ItemType - Misc */
     , (800518,   5,          1) /* EncumbranceVal */
     , (800518,   8,          1) /* Mass */
     , (800518,   9,          0) /* ValidLocations - None */
     , (800518,  11,       1000) /* MaxStackSize */
     , (800518,  12,          1) /* StackSize */
     , (800518,  13,         10) /* StackUnitEncumbrance */
     , (800518,  14,         10) /* StackUnitMass */
     , (800518,  15,          1) /* StackUnitValue */
     , (800518,  16,          1) /* ItemUseable - No */
     , (800518,  19,          1) /* Value */
     , (800518,  33,          1) /* Bonded - Bonded */
     , (800518,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800518, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800518,  22, True ) /* Inscribable */
     , (800518,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800518,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800518,   1, 'Highlands Crystal (UC)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800518,   1,   33554773) /* Setup */
     , (800518,   3,  536870932) /* SoundTable */
     , (800518,   8,  100668176) /* Icon */
     , (800518,  22,  872415275) /* PhysicsEffectTable */;