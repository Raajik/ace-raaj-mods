DELETE FROM `weenie` WHERE `class_Id` = 800523;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800523, 'Lugian Soldier', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800523,   1,        128) /* ItemType - Misc */
     , (800523,   5,          1) /* EncumbranceVal */
     , (800523,   8,          1) /* Mass */
     , (800523,   9,          0) /* ValidLocations - None */
     , (800523,  11,       1000) /* MaxStackSize */
     , (800523,  12,          1) /* StackSize */
     , (800523,  13,         10) /* StackUnitEncumbrance */
     , (800523,  14,         10) /* StackUnitMass */
     , (800523,  15,          1) /* StackUnitValue */
     , (800523,  16,          1) /* ItemUseable - No */
     , (800523,  19,          1) /* Value */
     , (800523,  33,          1) /* Bonded - Bonded */
     , (800523,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800523, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800523,  22, True ) /* Inscribable */
     , (800523,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800523,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800523,   1, 'Lugian Soldier (R)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800523,   1,   33554773) /* Setup */
     , (800523,   3,  536870932) /* SoundTable */
     , (800523,   8,  100668176) /* Icon */
     , (800523,  22,  872415275) /* PhysicsEffectTable */;