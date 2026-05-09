DELETE FROM `weenie` WHERE `class_Id` = 800510;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800510, 'Naked Tumerok', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800510,   1,        128) /* ItemType - Misc */
     , (800510,   5,          1) /* EncumbranceVal */
     , (800510,   8,          1) /* Mass */
     , (800510,   9,          0) /* ValidLocations - None */
     , (800510,  11,       1000) /* MaxStackSize */
     , (800510,  12,          1) /* StackSize */
     , (800510,  13,         10) /* StackUnitEncumbrance */
     , (800510,  14,         10) /* StackUnitMass */
     , (800510,  15,          1) /* StackUnitValue */
     , (800510,  16,          1) /* ItemUseable - No */
     , (800510,  19,          1) /* Value */
     , (800510,  33,          1) /* Bonded - Bonded */
     , (800510,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800510, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800510,  22, True ) /* Inscribable */
     , (800510,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800510,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800510,   1, 'Naked Tumerok (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800510,   1,   33554773) /* Setup */
     , (800510,   3,  536870932) /* SoundTable */
     , (800510,   8,  100668176) /* Icon */
     , (800510,  22,  872415275) /* PhysicsEffectTable */;