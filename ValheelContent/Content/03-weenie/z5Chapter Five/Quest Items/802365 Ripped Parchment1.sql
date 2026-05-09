DELETE FROM `weenie` WHERE `class_Id` = 802365;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802365, 'Ripped Parchment1', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802365,   1,       8192) /* ItemType - Writable */
     , (802365,   5,         25) /* EncumbranceVal */
     , (802365,   8,          5) /* Mass */
     , (802365,   9,          0) /* ValidLocations - None */
     , (802365,  16,          8) /* ItemUseable - Contained */
     , (802365,  19,         25) /* Value */
     , (802365,  33,          1) /* Bonded - Slippery */
     , (802365,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802365, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802365,  22, True ) /* Inscribable */
     , (802365,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802365,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802365,   1, 'Ripped Parchment') /* Name */
     , (802365,   7, 'Take this to Mayor Ked.') /* Inscription */
     , (802365,   8, 'Unknown') /* ScribeName */
     , (802365,  33, 'Parchment1Pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802365,   1,   33554773) /* Setup */
     , (802365,   3,  536870932) /* SoundTable */
     , (802365,   8,  100667503) /* Icon */
     , (802365,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (802365, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (802365, 0, 4294967295, '', 'prewritten', False, '

This document is torn to shreds.

');
