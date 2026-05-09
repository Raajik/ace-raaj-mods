DELETE FROM `weenie` WHERE `class_Id` = 800505;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800505, 'Gray Chicken', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800505,   1,        128) /* ItemType - Misc */
     , (800505,   5,          1) /* EncumbranceVal */
     , (800505,   8,          1) /* Mass */
     , (800505,   9,          0) /* ValidLocations - None */
     , (800505,  11,       1000) /* MaxStackSize */
     , (800505,  12,          1) /* StackSize */
     , (800505,  13,         10) /* StackUnitEncumbrance */
     , (800505,  14,         10) /* StackUnitMass */
     , (800505,  15,          1) /* StackUnitValue */
     , (800505,  16,          1) /* ItemUseable - No */
     , (800505,  19,          1) /* Value */
     , (800505,  33,          1) /* Bonded - Bonded */
     , (800505,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800505, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800505,  22, True ) /* Inscribable */
     , (800505,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800505,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800505,   1, 'Gray Chicken (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800505,   1,   33554773) /* Setup */
     , (800505,   3,  536870932) /* SoundTable */
     , (800505,   8,  100668176) /* Icon */
     , (800505,  22,  872415275) /* PhysicsEffectTable */;