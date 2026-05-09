DELETE FROM `weenie` WHERE `class_Id` = 802366;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802366, 'Ripped Parchment2', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802366,   1,       8192) /* ItemType - Writable */
     , (802366,   5,         25) /* EncumbranceVal */
     , (802366,   8,          5) /* Mass */
     , (802366,   9,          0) /* ValidLocations - None */
     , (802366,  16,          8) /* ItemUseable - Contained */
     , (802366,  19,         25) /* Value */
     , (802366,  33,          1) /* Bonded - Slippery */
     , (802366,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802366, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802366,  22, True ) /* Inscribable */
     , (802366,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802366,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802366,   1, 'Ripped Parchment') /* Name */
     , (802366,   7, 'Take this to Mayor Ked.') /* Inscription */
     , (802366,   8, 'Unknown') /* ScribeName */
     , (802366,  33, 'Parchment2Pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802366,   1,   33554773) /* Setup */
     , (802366,   3,  536870932) /* SoundTable */
     , (802366,   8,  100667503) /* Icon */
     , (802366,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (802366, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (802366, 0, 4294967295, '', 'prewritten', False, '

This document is torn to shreds.

');
