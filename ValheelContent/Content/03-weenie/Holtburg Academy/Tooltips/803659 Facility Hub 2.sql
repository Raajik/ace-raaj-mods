DELETE FROM `weenie` WHERE `class_Id` = 803659;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803659, 'facilityhubinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803659,   1,       8192) /* ItemType - Writable */
     , (803659,   5,       9000) /* EncumbranceVal */
     , (803659,   8,       1800) /* Mass */
     , (803659,  16,         48) /* ItemUseable - ViewedRemote */
     , (803659,  19,        125) /* Value */
     , (803659,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803659,   1, True ) /* Stuck */
     , (803659,  12, True ) /* ReportCollisions */
     , (803659,  13, False) /* Ethereal */
     , (803659,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803659,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803659,   1, 'Facility Hub 2.0') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803659,   1,   33556014) /* Setup */
     , (803659,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803659, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803659, 0, 4294967295, 'Training Master', 'prewritten', False, '
The Facility Hub has been upgraded to accomodate higher levels. 

You can hunt in 12 remastered dungeons down the Right hall that begin at level 700.

You can hunt in 11 remastered dungeons down the Left hall that begin at level 1,000.

Down the stairs will grant you access to higher level content areas that you will venture through the rest of the quest lines.
');
