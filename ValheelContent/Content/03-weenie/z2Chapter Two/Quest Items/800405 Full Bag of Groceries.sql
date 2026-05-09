DELETE FROM `weenie` WHERE `class_Id` = 800405;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800405, 'Full Bag of Groceries', 1, '2021-11-08 06:01:47') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800405,   1,        128) /* ItemType - Misc */
     , (800405,   5,        500) /* EncumbranceVal */
     , (800405,  19,          0) /* Value */
     , (800405,  33,          1) /* Bonded - Bonded */
     , (800405,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800405, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800405,  22, False) /* Inscribable */
     , (800405,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800405,   1, 'Full bag of Groceries') /* Name */
     , (800405,  16, 'A large bag full of fresh groceries.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800405,   1,   33554817) /* Setup */
     , (800405,   8,  100670082) /* Icon */;
