DELETE FROM `weenie` WHERE `class_Id` = 800556;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800556, 'Terrible Ghost', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800556,   1,        128) /* ItemType - Misc */
     , (800556,   5,          1) /* EncumbranceVal */
     , (800556,   8,          1) /* Mass */
     , (800556,   9,          0) /* ValidLocations - None */
     , (800556,  11,       1000) /* MaxStackSize */
     , (800556,  12,          1) /* StackSize */
     , (800556,  13,         10) /* StackUnitEncumbrance */
     , (800556,  14,         10) /* StackUnitMass */
     , (800556,  15,          1) /* StackUnitValue */
     , (800556,  16,          1) /* ItemUseable - No */
     , (800556,  19,          1) /* Value */
     , (800556,  33,          1) /* Bonded - Bonded */
     , (800556,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800556, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800556,  22, True ) /* Inscribable */
     , (800556,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800556,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800556,   1, 'Terrible Ghost (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800556,   1,   33554773) /* Setup */
     , (800556,   3,  536870932) /* SoundTable */
     , (800556,   8,  100668176) /* Icon */
     , (800556,  22,  872415275) /* PhysicsEffectTable */;