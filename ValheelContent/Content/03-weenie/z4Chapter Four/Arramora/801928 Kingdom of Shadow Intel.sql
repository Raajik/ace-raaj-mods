	DELETE FROM `weenie` WHERE `class_Id` = 801928;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801928, 'Kingdom of Shadow Intel', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801928,   1,       8192) /* ItemType - Writable */
     , (801928,   5,         25) /* EncumbranceVal */
     , (801928,   8,          5) /* Mass */
     , (801928,   9,          0) /* ValidLocations - None */
     , (801928,  16,          8) /* ItemUseable - Contained */
     , (801928,  19,         25) /* Value */
     , (801928,  33,          1) /* Bonded - Slippery */
     , (801928,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801928,  22, True ) /* Inscribable */
     , (801928,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801928,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801928,   1, 'Kingdom of Shadow Intel') /* Name */
     , (801928,   7, 'Take this Nalicana at the Arramora Refuge Camp.') /* Inscription */
     , (801928,  33, 'IntelPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801928,   1,   33554773) /* Setup */
     , (801928,   3,  536870932) /* SoundTable */
     , (801928,   8,  100667503) /* Icon */
     , (801928,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (801928, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (801928, 0, 4294967295, '', 'prewritten', False, '

This is written in ancient Dulian.

');
