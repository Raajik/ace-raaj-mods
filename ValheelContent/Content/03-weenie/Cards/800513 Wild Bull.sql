DELETE FROM `weenie` WHERE `class_Id` = 800513;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800513, 'Wild Bull', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800513,   1,        128) /* ItemType - Misc */
     , (800513,   5,          1) /* EncumbranceVal */
     , (800513,   8,          1) /* Mass */
     , (800513,   9,          0) /* ValidLocations - None */
     , (800513,  11,       1000) /* MaxStackSize */
     , (800513,  12,          1) /* StackSize */
     , (800513,  13,         10) /* StackUnitEncumbrance */
     , (800513,  14,         10) /* StackUnitMass */
     , (800513,  15,          1) /* StackUnitValue */
     , (800513,  16,          1) /* ItemUseable - No */
     , (800513,  19,          1) /* Value */
     , (800513,  33,          1) /* Bonded - Bonded */
     , (800513,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800513, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800513,  22, True ) /* Inscribable */
     , (800513,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800513,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800513,   1, 'Wild Bull (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800513,   1,   33554773) /* Setup */
     , (800513,   3,  536870932) /* SoundTable */
     , (800513,   8,  100668176) /* Icon */
     , (800513,  22,  872415275) /* PhysicsEffectTable */;