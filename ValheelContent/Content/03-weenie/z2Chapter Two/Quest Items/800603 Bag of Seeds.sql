DELETE FROM `weenie` WHERE `class_Id` = 800603;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800603, 'Bag of Seeds', 1, '2021-11-08 06:01:47') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800603,   1,        128) /* ItemType - Misc */
     , (800603,   5,        500) /* EncumbranceVal */
     , (800603,  19,          0) /* Value */
     , (800603,  33,          1) /* Bonded - Bonded */
     , (800603,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800603, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800603,  22, False) /* Inscribable */
     , (800603,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800603,   1, 'Bag of Seeds') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800603,   1,   33554817) /* Setup */
     , (800603,   8,  100670082) /* Icon */;
