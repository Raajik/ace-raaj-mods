DELETE FROM `weenie` WHERE `class_Id` = 800519;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800519, 'Obsidian Gearknight', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800519,   1,        128) /* ItemType - Misc */
     , (800519,   5,          1) /* EncumbranceVal */
     , (800519,   8,          1) /* Mass */
     , (800519,   9,          0) /* ValidLocations - None */
     , (800519,  11,       1000) /* MaxStackSize */
     , (800519,  12,          1) /* StackSize */
     , (800519,  13,         10) /* StackUnitEncumbrance */
     , (800519,  14,         10) /* StackUnitMass */
     , (800519,  15,          1) /* StackUnitValue */
     , (800519,  16,          1) /* ItemUseable - No */
     , (800519,  19,          1) /* Value */
     , (800519,  33,          1) /* Bonded - Bonded */
     , (800519,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800519, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800519,  22, True ) /* Inscribable */
     , (800519,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800519,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800519,   1, 'Obsidian Gearknight (UC)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800519,   1,   33554773) /* Setup */
     , (800519,   3,  536870932) /* SoundTable */
     , (800519,   8,  100668176) /* Icon */
     , (800519,  22,  872415275) /* PhysicsEffectTable */;