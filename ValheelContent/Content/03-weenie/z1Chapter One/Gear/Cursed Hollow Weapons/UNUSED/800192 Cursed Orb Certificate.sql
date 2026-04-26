DELETE FROM `weenie` WHERE `class_Id` = 800192;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800192, 'cursedorbscertificate', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800192,   1,       32768) /* ItemType - Gem */
     , (800192,   5,          5) /* EncumbranceVal */
     , (800192,  16,          1) /* ItemUseable - No */
     , (800192,  19,          10) /* Value */
     , (800192,  33,          1) /* Bonded - Bonded */
     , (800192,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800192, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800192,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800192,   1, 'Certificate of Cursed Orbs') /* Name */
     , (800192,  15, 'Give this Certificate to Thorid''s Assistant to receive Cursed Orbs.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800192,   1,   33554659) /* Setup */
     , (800192,   3,  536870932) /* SoundTable */
     , (800192,   8,  100692711) /* Icon */
     , (800192,  22,  872415275) /* PhysicsEffectTable */;
