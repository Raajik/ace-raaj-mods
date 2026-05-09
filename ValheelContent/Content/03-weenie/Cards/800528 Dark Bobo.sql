DELETE FROM `weenie` WHERE `class_Id` = 800528;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800528, 'Dark Bobo', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800528,   1,        128) /* ItemType - Misc */
     , (800528,   5,          1) /* EncumbranceVal */
     , (800528,   8,          1) /* Mass */
     , (800528,   9,          0) /* ValidLocations - None */
     , (800528,  11,       1000) /* MaxStackSize */
     , (800528,  12,          1) /* StackSize */
     , (800528,  13,         10) /* StackUnitEncumbrance */
     , (800528,  14,         10) /* StackUnitMass */
     , (800528,  15,          1) /* StackUnitValue */
     , (800528,  16,          1) /* ItemUseable - No */
     , (800528,  19,          1) /* Value */
     , (800528,  33,          1) /* Bonded - Bonded */
     , (800528,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800528, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800528,  22, True ) /* Inscribable */
     , (800528,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800528,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800528,   1, 'Dark Bobo (UR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800528,   1,   33554773) /* Setup */
     , (800528,   3,  536870932) /* SoundTable */
     , (800528,   8,  100668176) /* Icon */
     , (800528,  22,  872415275) /* PhysicsEffectTable */;