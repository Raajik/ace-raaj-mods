DELETE FROM `weenie` WHERE `class_Id` = 800452;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800452, 'Card Pack Voucher', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800452,   1,        128) /* ItemType - Misc */
     , (800452,   5,          5) /* EncumbranceVal */
     , (800452,  16,          1) /* ItemUseable - No */
     , (800452,  19,       1000) /* Value */
     , (800452,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800452,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800452,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800452,   1, 'Card Pack Voucher') /* Name */
     , (800452,  16, 'Turn this into to get a free Pack of Trading Cards.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800452,   1,   33554773) /* Setup */
     , (800452,   3,  536870932) /* SoundTable */
     , (800452,   8,  100689177) /* Icon */
     , (800452,  22,  872415275) /* PhysicsEffectTable */;
