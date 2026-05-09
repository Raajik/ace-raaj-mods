DELETE FROM `weenie` WHERE `class_Id` = 800507;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800507, 'Mikey the Mite', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800507,   1,        128) /* ItemType - Misc */
     , (800507,   5,          1) /* EncumbranceVal */
     , (800507,   8,          1) /* Mass */
     , (800507,   9,          0) /* ValidLocations - None */
     , (800507,  11,       1000) /* MaxStackSize */
     , (800507,  12,          1) /* StackSize */
     , (800507,  13,         10) /* StackUnitEncumbrance */
     , (800507,  14,         10) /* StackUnitMass */
     , (800507,  15,          1) /* StackUnitValue */
     , (800507,  16,          1) /* ItemUseable - No */
     , (800507,  19,          1) /* Value */
     , (800507,  33,          1) /* Bonded - Bonded */
     , (800507,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800507, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800507,  22, True ) /* Inscribable */
     , (800507,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800507,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800507,   1, 'Mikey the Mite (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800507,   1,   33554773) /* Setup */
     , (800507,   3,  536870932) /* SoundTable */
     , (800507,   8,  100668176) /* Icon */
     , (800507,  22,  872415275) /* PhysicsEffectTable */;