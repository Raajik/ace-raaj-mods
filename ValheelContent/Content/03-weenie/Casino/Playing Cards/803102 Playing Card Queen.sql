DELETE FROM `weenie` WHERE `class_Id` = 803102 ;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803102 , 'Playing Card Queen', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803102 ,   1,        128) /* ItemType - Misc */
     , (803102 ,   5,          1) /* EncumbranceVal */
     , (803102 ,   8,          1) /* Mass */
     , (803102 ,   9,          0) /* ValidLocations - None */
     , (803102 ,  11,          1) /* MaxStackSize */
     , (803102 ,  12,          1) /* StackSize */
     , (803102 ,  13,         10) /* StackUnitEncumbrance */
     , (803102 ,  14,         10) /* StackUnitMass */
     , (803102 ,  15,          1) /* StackUnitValue */
     , (803102 ,  16,          1) /* ItemUseable - No */
     , (803102 ,  19,          1) /* Value */
     , (803102 ,  33,          1) /* Bonded - Bonded */
     , (803102 ,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803102 , 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803102 ,  22, True ) /* Inscribable */
     , (803102 ,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803102 ,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803102 ,   1, 'Queen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803102 ,   1,   33554773) /* Setup */
     , (803102 ,   3,  536870932) /* SoundTable */
     , (803102 ,   8,  100668176) /* Icon */
     , (803102 ,  22,  872415275) /* PhysicsEffectTable */;