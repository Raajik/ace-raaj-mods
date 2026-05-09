DELETE FROM `weenie` WHERE `class_Id` = 800501;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800501, 'Blessed Moar', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800501,   1,        128) /* ItemType - Misc */
     , (800501,   5,          1) /* EncumbranceVal */
     , (800501,   8,          1) /* Mass */
     , (800501,   9,          0) /* ValidLocations - None */
     , (800501,  11,       1000) /* MaxStackSize */
     , (800501,  12,          1) /* StackSize */
     , (800501,  13,         10) /* StackUnitEncumbrance */
     , (800501,  14,         10) /* StackUnitMass */
     , (800501,  15,          1) /* StackUnitValue */
     , (800501,  16,          1) /* ItemUseable - No */
     , (800501,  19,          1) /* Value */
     , (800501,  33,          1) /* Bonded - Bonded */
     , (800501,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800501, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800501,  22, True ) /* Inscribable */
     , (800501,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800501,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800501,   1, 'Blessed Moar (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800501,   1,   33554773) /* Setup */
     , (800501,   3,  536870932) /* SoundTable */
     , (800501,   8,  100668176) /* Icon */
     , (800501,  22,  872415275) /* PhysicsEffectTable */;