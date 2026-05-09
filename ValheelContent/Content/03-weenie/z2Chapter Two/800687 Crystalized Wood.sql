DELETE FROM `weenie` WHERE `class_Id` = 800687;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800687, 'Crystalized Wood', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800687,   1,        128) /* ItemType - Misc */
     , (800687,   5,        100) /* EncumbranceVal */
     , (800687,   8,        250) /* Mass */
     , (800687,  16,          1) /* ItemUseable - No */
     , (800687,  19,          1) /* Value */
     , (800687,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800687,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800687,  39,     1.2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800687,   1, 'Crystalized Wood') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800687,   1,   33554698) /* Setup */
     , (800687,   3,  536870932) /* SoundTable */
     , (800687,   8,  100672428) /* Icon */
     , (800687,  22,  872415275) /* PhysicsEffectTable */;
