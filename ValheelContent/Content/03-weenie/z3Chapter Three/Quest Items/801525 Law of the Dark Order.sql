DELETE FROM `weenie` WHERE `class_Id` = 801525;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801525, 'Law of the Dark Order', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801525,   1,       8192) /* ItemType - Writable */
     , (801525,   5,        460) /* EncumbranceVal */
     , (801525,   8,        230) /* Mass */
     , (801525,   9,          0) /* ValidLocations - None */
     , (801525,  16,          8) /* ItemUseable - Contained */
     , (801525,  19,        450) /* Value */
     , (801525,  33,          1) /* Bonded - Bonded */
     , (801525,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801525, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801525,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801525,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801525,   1, 'Law of the Rogue Council') /* Name */
     , (801525,  33, 'DarkOrderPickUp') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801525,   1,   33554771) /* Setup */
     , (801525,   3,  536870932) /* SoundTable */
     , (801525,   8,  100668117) /* Icon */
     , (801525,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (801525, 50, 1000);
