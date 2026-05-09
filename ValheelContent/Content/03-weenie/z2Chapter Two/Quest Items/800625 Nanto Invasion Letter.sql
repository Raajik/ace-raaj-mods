DELETE FROM `weenie` WHERE `class_Id` = 800625;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800625, 'Nanto Invasion Plans2', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800625,   1,       8192) /* ItemType - Writable */
     , (800625,   5,         25) /* EncumbranceVal */
     , (800625,   8,          5) /* Mass */
     , (800625,   9,          0) /* ValidLocations - None */
     , (800625,  16,          8) /* ItemUseable - Contained */
     , (800625,  19,         25) /* Value */
     , (800625,  33,          1) /* Bonded - Slippery */
     , (800625,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800625, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800625,  22, True ) /* Inscribable */
     , (800625,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800625,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800625,   1, 'Nanto Invasion Plans') /* Name */
     , (800625,   8, 'O') /* ScribeName */
     , (800625,  33, 'nantoinvasion') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800625,   1,   33554773) /* Setup */
     , (800625,   3,  536870932) /* SoundTable */
     , (800625,   8,  100667503) /* Icon */
     , (800625,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800625, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800625, 0, 4294967295, '', 'prewritten', False, 'Find this quickly,

The attack on Nanto is to happen in three days. Get your troops ready for the invasion. Send back word that the task has been completed.

O

');
