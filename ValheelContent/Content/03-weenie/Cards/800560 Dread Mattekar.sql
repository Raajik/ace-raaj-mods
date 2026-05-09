DELETE FROM `weenie` WHERE `class_Id` = 800560;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800560, 'Dread Mattekar', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800560,   1,        128) /* ItemType - Misc */
     , (800560,   5,          1) /* EncumbranceVal */
     , (800560,   8,          1) /* Mass */
     , (800560,   9,          0) /* ValidLocations - None */
     , (800560,  11,       1000) /* MaxStackSize */
     , (800560,  12,          1) /* StackSize */
     , (800560,  13,         10) /* StackUnitEncumbrance */
     , (800560,  14,         10) /* StackUnitMass */
     , (800560,  15,          1) /* StackUnitValue */
     , (800560,  16,          1) /* ItemUseable - No */
     , (800560,  19,          1) /* Value */
     , (800560,  33,          1) /* Bonded - Bonded */
     , (800560,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800560, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800560,  22, True ) /* Inscribable */
     , (800560,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800560,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800560,   1, 'Dread Mattekar (UC)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800560,   1,   33554773) /* Setup */
     , (800560,   3,  536870932) /* SoundTable */
     , (800560,   8,  100668176) /* Icon */
     , (800560,  22,  872415275) /* PhysicsEffectTable */;