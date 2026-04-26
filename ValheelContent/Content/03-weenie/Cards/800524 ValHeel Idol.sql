DELETE FROM `weenie` WHERE `class_Id` = 800524;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800524, 'ValHeel Idol', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800524,   1,        128) /* ItemType - Misc */
     , (800524,   5,          1) /* EncumbranceVal */
     , (800524,   8,          1) /* Mass */
     , (800524,   9,          0) /* ValidLocations - None */
     , (800524,  11,       1000) /* MaxStackSize */
     , (800524,  12,          1) /* StackSize */
     , (800524,  13,         10) /* StackUnitEncumbrance */
     , (800524,  14,         10) /* StackUnitMass */
     , (800524,  15,          1) /* StackUnitValue */
     , (800524,  16,          1) /* ItemUseable - No */
     , (800524,  19,          1) /* Value */
     , (800524,  33,          1) /* Bonded - Bonded */
     , (800524,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800524, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800524,  22, True ) /* Inscribable */
     , (800524,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800524,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800524,   1, 'ValHeel Idol (R)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800524,   1,   33554773) /* Setup */
     , (800524,   3,  536870932) /* SoundTable */
     , (800524,   8,  100668176) /* Icon */
     , (800524,  22,  872415275) /* PhysicsEffectTable */;