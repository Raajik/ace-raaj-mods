DELETE FROM `weenie` WHERE `class_Id` = 800504;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800504, 'Drudge', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800504,   1,        128) /* ItemType - Misc */
     , (800504,   5,          1) /* EncumbranceVal */
     , (800504,   8,          1) /* Mass */
     , (800504,   9,          0) /* ValidLocations - None */
     , (800504,  11,       1000) /* MaxStackSize */
     , (800504,  12,          1) /* StackSize */
     , (800504,  13,         10) /* StackUnitEncumbrance */
     , (800504,  14,         10) /* StackUnitMass */
     , (800504,  15,          1) /* StackUnitValue */
     , (800504,  16,          1) /* ItemUseable - No */
     , (800504,  19,          1) /* Value */
     , (800504,  33,          1) /* Bonded - Bonded */
     , (800504,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800504, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800504,  22, True ) /* Inscribable */
     , (800504,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800504,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800504,   1, 'Drudge (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800504,   1,   33554773) /* Setup */
     , (800504,   3,  536870932) /* SoundTable */
     , (800504,   8,  100668176) /* Icon */
     , (800504,  22,  872415275) /* PhysicsEffectTable */;