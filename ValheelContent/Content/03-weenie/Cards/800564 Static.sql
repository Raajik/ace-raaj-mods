DELETE FROM `weenie` WHERE `class_Id` = 800564;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800564, 'Static', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800564,   1,        128) /* ItemType - Misc */
     , (800564,   5,          1) /* EncumbranceVal */
     , (800564,   8,          1) /* Mass */
     , (800564,   9,          0) /* ValidLocations - None */
     , (800564,  11,       1000) /* MaxStackSize */
     , (800564,  12,          1) /* StackSize */
     , (800564,  13,         10) /* StackUnitEncumbrance */
     , (800564,  14,         10) /* StackUnitMass */
     , (800564,  15,          1) /* StackUnitValue */
     , (800564,  16,          1) /* ItemUseable - No */
     , (800564,  19,          1) /* Value */
     , (800564,  33,          1) /* Bonded - Bonded */
     , (800564,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800564, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800564,  22, True ) /* Inscribable */
     , (800564,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800564,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800564,   1, 'Static (R)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800564,   1,   33554773) /* Setup */
     , (800564,   3,  536870932) /* SoundTable */
     , (800564,   8,  100668176) /* Icon */
     , (800564,  22,  872415275) /* PhysicsEffectTable */;