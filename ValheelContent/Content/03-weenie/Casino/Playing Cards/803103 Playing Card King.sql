DELETE FROM `weenie` WHERE `class_Id` = 803103 ;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803103 , 'Playing Card King', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803103 ,   1,        128) /* ItemType - Misc */
     , (803103 ,   5,          1) /* EncumbranceVal */
     , (803103 ,   8,          1) /* Mass */
     , (803103 ,   9,          0) /* ValidLocations - None */
     , (803103 ,  11,          1) /* MaxStackSize */
     , (803103 ,  12,          1) /* StackSize */
     , (803103 ,  13,         10) /* StackUnitEncumbrance */
     , (803103 ,  14,         10) /* StackUnitMass */
     , (803103 ,  15,          1) /* StackUnitValue */
     , (803103 ,  16,          1) /* ItemUseable - No */
     , (803103 ,  19,          1) /* Value */
     , (803103 ,  33,          1) /* Bonded - Bonded */
     , (803103 ,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803103 , 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803103 ,  22, True ) /* Inscribable */
     , (803103 ,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803103 ,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803103 ,   1, 'King') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803103 ,   1,   33554773) /* Setup */
     , (803103 ,   3,  536870932) /* SoundTable */
     , (803103 ,   8,  100668176) /* Icon */
     , (803103 ,  22,  872415275) /* PhysicsEffectTable */;