DELETE FROM `weenie` WHERE `class_Id` = 800167;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800167, 'monkey king tusk', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800167,   1,        128) /* ItemType - Misc */
     , (800167,   5,        100) /* EncumbranceVal */
     , (800167,   8,         10) /* Mass */
     , (800167,   9,          0) /* ValidLocations - None */
     , (800167,  16,          1) /* ItemUseable - No */
     , (800167,  19,          0) /* Value */
     , (800167,  33,          1) /* Bonded - Bonded */
     , (800167,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800167, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800167,  22, True ) /* Inscribable */
     , (800167,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800167,   1, 'Monkey King Tusk') /* Name */
     , (800167,  15, 'A tusk plucked from the Monkey King. Brighteyes, the tailor collects these.') /* ShortDesc */
     , (800167,  33, 'MonkeyKingTusk') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800167,   1,   33557838) /* Setup */
     , (800167,   3,  536870932) /* SoundTable */
     , (800167,   8,  100673056) /* Icon */
     , (800167,  22,  872415275) /* PhysicsEffectTable */;
