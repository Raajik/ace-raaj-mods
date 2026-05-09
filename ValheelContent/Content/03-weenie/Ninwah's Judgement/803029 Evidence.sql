DELETE FROM `weenie` WHERE `class_Id` = 803029;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803029, 'Evidence', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803029,   1,       8192) /* ItemType - Writable */
     , (803029,   5,         25) /* EncumbranceVal */
     , (803029,   8,          5) /* Mass */
     , (803029,   9,          0) /* ValidLocations - None */
     , (803029,  16,          8) /* ItemUseable - Contained */
     , (803029,  19,         25) /* Value */
     , (803029,  33,          1) /* Bonded - Slippery */
     , (803029,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803029,  22, True ) /* Inscribable */
     , (803029,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803029,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803029,   1, 'Evidence') /* Name */
     , (803029,   7, 'Evidence that could possibly win this case for you.') /* Inscription */
     , (803029,   8, 'REDACTED') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803029,   1,   33554773) /* Setup */
     , (803029,   3,  536870932) /* SoundTable */
     , (803029,   8,  100667503) /* Icon */
     , (803029,  22,  872415275) /* PhysicsEffectTable */;
