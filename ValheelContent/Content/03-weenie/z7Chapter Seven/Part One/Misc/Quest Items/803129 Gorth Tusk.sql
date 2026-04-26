DELETE FROM `weenie` WHERE `class_Id` = 803129;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803129, 'Gorth Tusk', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803129,   1,        128) /* ItemType - Misc */
     , (803129,   5,        100) /* EncumbranceVal */
     , (803129,   8,         10) /* Mass */
     , (803129,   9,          0) /* ValidLocations - None */
     , (803129,  16,          1) /* ItemUseable - No */
     , (803129,  19,          0) /* Value */
     , (803129,  33,          1) /* Bonded - Bonded */
     , (803129,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803129, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803129,  22, True ) /* Inscribable */
     , (803129,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803129,   1, 'Gorth Tusk') /* Name */
     , (803129,  15, 'A tusk plucked from a Silver Gorth.') /* ShortDesc */
     /* , (803129,  33, 'PapaTusk') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803129,   1,   33557838) /* Setup */
     , (803129,   3,  536870932) /* SoundTable */
     , (803129,   8,  100673056) /* Icon */
     , (803129,  22,  872415275) /* PhysicsEffectTable */;
