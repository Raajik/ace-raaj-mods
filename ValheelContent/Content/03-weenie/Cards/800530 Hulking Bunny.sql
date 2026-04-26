DELETE FROM `weenie` WHERE `class_Id` = 800530;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800530, 'Hulking Bunny', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800530,   1,        128) /* ItemType - Misc */
     , (800530,   5,          1) /* EncumbranceVal */
     , (800530,   8,          1) /* Mass */
     , (800530,   9,          0) /* ValidLocations - None */
     , (800530,  11,       1000) /* MaxStackSize */
     , (800530,  12,          1) /* StackSize */
     , (800530,  13,         10) /* StackUnitEncumbrance */
     , (800530,  14,         10) /* StackUnitMass */
     , (800530,  15,          1) /* StackUnitValue */
     , (800530,  16,          1) /* ItemUseable - No */
     , (800530,  19,          1) /* Value */
     , (800530,  33,          1) /* Bonded - Bonded */
     , (800530,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800530, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800530,  22, True ) /* Inscribable */
     , (800530,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800530,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800530,   1, 'Hulking Bunny (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800530,   1,   33554773) /* Setup */
     , (800530,   3,  536870932) /* SoundTable */
     , (800530,   8,  100668176) /* Icon */
     , (800530,  22,  872415275) /* PhysicsEffectTable */;