DELETE FROM `weenie` WHERE `class_Id` = 803677;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803677, 'chapter1info', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803677,   1,       8192) /* ItemType - Writable */
     , (803677,   5,       9000) /* EncumbranceVal */
     , (803677,   8,       1800) /* Mass */
     , (803677,  16,         48) /* ItemUseable - ViewedRemote */
     , (803677,  19,        125) /* Value */
     , (803677,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803677,   1, True ) /* Stuck */
     , (803677,  12, True ) /* ReportCollisions */
     , (803677,  13, False) /* Ethereal */
     , (803677,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803677,  39,     0.5) /* DefaultScale */
     , (803677,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803677,   1, 'Chapter One') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803677,   1,   33556014) /* Setup */
     , (803677,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803677, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803677, 0, 4294967295, 'Training Master', 'prewritten', False, '
If you are level 275, speak with the Messenger of Dereth to begin Chapter One of ValHeel''s custom questline. 
');
