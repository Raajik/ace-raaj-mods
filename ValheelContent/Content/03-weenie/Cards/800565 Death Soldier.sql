DELETE FROM `weenie` WHERE `class_Id` = 800565;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800565, 'Death Soldier', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800565,   1,        128) /* ItemType - Misc */
     , (800565,   5,          1) /* EncumbranceVal */
     , (800565,   8,          1) /* Mass */
     , (800565,   9,          0) /* ValidLocations - None */
     , (800565,  11,       1000) /* MaxStackSize */
     , (800565,  12,          1) /* StackSize */
     , (800565,  13,         10) /* StackUnitEncumbrance */
     , (800565,  14,         10) /* StackUnitMass */
     , (800565,  15,          1) /* StackUnitValue */
     , (800565,  16,          1) /* ItemUseable - No */
     , (800565,  19,          1) /* Value */
     , (800565,  33,          1) /* Bonded - Bonded */
     , (800565,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800565, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800565,  22, True ) /* Inscribable */
     , (800565,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800565,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800565,   1, 'Death Soldier (UR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800565,   1,   33554773) /* Setup */
     , (800565,   3,  536870932) /* SoundTable */
     , (800565,   8,  100668176) /* Icon */
     , (800565,  22,  872415275) /* PhysicsEffectTable */;