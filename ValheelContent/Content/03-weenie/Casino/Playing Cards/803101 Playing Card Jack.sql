DELETE FROM `weenie` WHERE `class_Id` = 803101 ;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803101 , 'Playing Card Jack', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803101 ,   1,        128) /* ItemType - Misc */
     , (803101 ,   5,          1) /* EncumbranceVal */
     , (803101 ,   8,          1) /* Mass */
     , (803101 ,   9,          0) /* ValidLocations - None */
     , (803101 ,  11,          1) /* MaxStackSize */
     , (803101 ,  12,          1) /* StackSize */
     , (803101 ,  13,         10) /* StackUnitEncumbrance */
     , (803101 ,  14,         10) /* StackUnitMass */
     , (803101 ,  15,          1) /* StackUnitValue */
     , (803101 ,  16,          1) /* ItemUseable - No */
     , (803101 ,  19,          1) /* Value */
     , (803101 ,  33,          1) /* Bonded - Bonded */
     , (803101 ,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803101 , 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803101 ,  22, True ) /* Inscribable */
     , (803101 ,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803101 ,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803101 ,   1, 'Jack') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803101 ,   1,   33554773) /* Setup */
     , (803101 ,   3,  536870932) /* SoundTable */
     , (803101 ,   8,  100668176) /* Icon */
     , (803101 ,  22,  872415275) /* PhysicsEffectTable */;