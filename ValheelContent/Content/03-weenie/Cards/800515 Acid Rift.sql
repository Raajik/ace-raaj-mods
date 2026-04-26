DELETE FROM `weenie` WHERE `class_Id` = 800515;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800515, 'Acid Rift', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800515,   1,        128) /* ItemType - Misc */
     , (800515,   5,          1) /* EncumbranceVal */
     , (800515,   8,          1) /* Mass */
     , (800515,   9,          0) /* ValidLocations - None */
     , (800515,  11,       1000) /* MaxStackSize */
     , (800515,  12,          1) /* StackSize */
     , (800515,  13,         10) /* StackUnitEncumbrance */
     , (800515,  14,         10) /* StackUnitMass */
     , (800515,  15,          1) /* StackUnitValue */
     , (800515,  16,          1) /* ItemUseable - No */
     , (800515,  19,          1) /* Value */
     , (800515,  33,          1) /* Bonded - Bonded */
     , (800515,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800515, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800515,  22, True ) /* Inscribable */
     , (800515,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800515,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800515,   1, 'Acid Rift (UC)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800515,   1,   33554773) /* Setup */
     , (800515,   3,  536870932) /* SoundTable */
     , (800515,   8,  100668176) /* Icon */
     , (800515,  22,  872415275) /* PhysicsEffectTable */;