DELETE FROM `weenie` WHERE `class_Id` = 800495;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800495, 'Letter to William', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800495,   1,       8192) /* ItemType - Writable */
     , (800495,   5,         25) /* EncumbranceVal */
     , (800495,   8,          5) /* Mass */
     , (800495,   9,          0) /* ValidLocations - None */
     , (800495,  16,          8) /* ItemUseable - Contained */
     , (800495,  19,         25) /* Value */
     , (800495,  33,          1) /* Bonded - Slippery */
     , (800495,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800495, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800495,  22, True ) /* Inscribable */
     , (800495,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800495,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800495,   1, 'Letter to William') /* Name */
     , (800495,   7, 'Take this William in the Mountain Fortress.') /* Inscription */
     , (800495,   8, 'Pamela') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800495,   1,   33554773) /* Setup */
     , (800495,   3,  536870932) /* SoundTable */
     , (800495,   8,  100667503) /* Icon */
     , (800495,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800495, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800495, 0, 4294967295, '', 'prewritten', False, 'Dear William,

I do hope this letter finds you, dear child. Come back home where it is safe. Let your father fight this war.

Mother


');
