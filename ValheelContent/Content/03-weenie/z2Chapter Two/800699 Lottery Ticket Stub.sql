DELETE FROM `weenie` WHERE `class_Id` = 800699;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800699, 'Lottery Ticket Stub', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800699,   1,        128) /* ItemType - Misc */
     , (800699,   5,          5) /* EncumbranceVal */
     , (800699,  16,          1) /* ItemUseable - No */
     , (800699,  18,          1) /* UiEffects */
     , (800699,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800699, 267,          3) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800699,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800699,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800699,   1, 'Lottery Ticket Stub') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800699,   1,   33554773) /* Setup */
     , (800699,   3,  536870932) /* SoundTable */
     , (800699,   8,  100690326) /* Icon */
     , (800699,  22,  872415275) /* PhysicsEffectTable */;
