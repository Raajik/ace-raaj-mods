DELETE FROM `weenie` WHERE `class_Id` = 803362;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803362, 'Drakin Communications', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803362,   1,       8192) /* ItemType - Writable */
     , (803362,   5,         25) /* EncumbranceVal */
     , (803362,   8,          5) /* Mass */
     , (803362,   9,          0) /* ValidLocations - None */
     , (803362,  16,          8) /* ItemUseable - Contained */
     , (803362,  19,         25) /* Value */
     , (803362,  33,          1) /* Bonded - Slippery */
     , (803362,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803362, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803362,  22, True ) /* Inscribable */
     , (803362,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803362,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803362,   1, 'Drakin Communications') /* Name */
     , (803362,   7, 'A document written in Drakinfolk dialect.') /* Inscription */
     , (803362,   8, 'Groth F''un Drakmander') /* ScribeName */
     , (803362,  33, 'DrakinComms') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803362,   1,   33554773) /* Setup */
     , (803362,   3,  536870932) /* SoundTable */
     , (803362,   8,  100667503) /* Icon */
     , (803362,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803362, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803362, 0, 4294967295, '', 'prewritten', False, 'This document is illegible.
');
