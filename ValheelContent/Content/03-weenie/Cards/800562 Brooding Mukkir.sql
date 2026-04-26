DELETE FROM `weenie` WHERE `class_Id` = 800562;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800562, 'Brooding Mukkir', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800562,   1,        128) /* ItemType - Misc */
     , (800562,   5,          1) /* EncumbranceVal */
     , (800562,   8,          1) /* Mass */
     , (800562,   9,          0) /* ValidLocations - None */
     , (800562,  11,       1000) /* MaxStackSize */
     , (800562,  12,          1) /* StackSize */
     , (800562,  13,         10) /* StackUnitEncumbrance */
     , (800562,  14,         10) /* StackUnitMass */
     , (800562,  15,          1) /* StackUnitValue */
     , (800562,  16,          1) /* ItemUseable - No */
     , (800562,  19,          1) /* Value */
     , (800562,  33,          1) /* Bonded - Bonded */
     , (800562,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800562, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800562,  22, True ) /* Inscribable */
     , (800562,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800562,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800562,   1, 'Brooding Mukkir (R)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800562,   1,   33554773) /* Setup */
     , (800562,   3,  536870932) /* SoundTable */
     , (800562,   8,  100668176) /* Icon */
     , (800562,  22,  872415275) /* PhysicsEffectTable */;