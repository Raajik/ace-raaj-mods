DELETE FROM `weenie` WHERE `class_Id` = 800563;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800563, 'Killer Penguin', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800563,   1,        128) /* ItemType - Misc */
     , (800563,   5,          1) /* EncumbranceVal */
     , (800563,   8,          1) /* Mass */
     , (800563,   9,          0) /* ValidLocations - None */
     , (800563,  11,       1000) /* MaxStackSize */
     , (800563,  12,          1) /* StackSize */
     , (800563,  13,         10) /* StackUnitEncumbrance */
     , (800563,  14,         10) /* StackUnitMass */
     , (800563,  15,          1) /* StackUnitValue */
     , (800563,  16,          1) /* ItemUseable - No */
     , (800563,  19,          1) /* Value */
     , (800563,  33,          1) /* Bonded - Bonded */
     , (800563,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800563, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800563,  22, True ) /* Inscribable */
     , (800563,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800563,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800563,   1, 'Killer Penguin (R)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800563,   1,   33554773) /* Setup */
     , (800563,   3,  536870932) /* SoundTable */
     , (800563,   8,  100668176) /* Icon */
     , (800563,  22,  872415275) /* PhysicsEffectTable */;