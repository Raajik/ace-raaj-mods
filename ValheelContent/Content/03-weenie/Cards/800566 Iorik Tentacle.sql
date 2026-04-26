DELETE FROM `weenie` WHERE `class_Id` = 800566;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800566, 'Iorik Tentacle', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800566,   1,        128) /* ItemType - Misc */
     , (800566,   5,          1) /* EncumbranceVal */
     , (800566,   8,          1) /* Mass */
     , (800566,   9,          0) /* ValidLocations - None */
     , (800566,  11,       1000) /* MaxStackSize */
     , (800566,  12,          1) /* StackSize */
     , (800566,  13,         10) /* StackUnitEncumbrance */
     , (800566,  14,         10) /* StackUnitMass */
     , (800566,  15,          1) /* StackUnitValue */
     , (800566,  16,          1) /* ItemUseable - No */
     , (800566,  19,          1) /* Value */
     , (800566,  33,          1) /* Bonded - Bonded */
     , (800566,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800566, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800566,  22, True ) /* Inscribable */
     , (800566,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800566,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800566,   1, 'Iorik Tentacle (UR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800566,   1,   33554773) /* Setup */
     , (800566,   3,  536870932) /* SoundTable */
     , (800566,   8,  100668176) /* Icon */
     , (800566,  22,  872415275) /* PhysicsEffectTable */;