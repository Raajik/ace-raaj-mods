DELETE FROM `weenie` WHERE `class_Id` = 803657;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803657, 'chapterinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803657,   1,       8192) /* ItemType - Writable */
     , (803657,   5,       9000) /* EncumbranceVal */
     , (803657,   8,       1800) /* Mass */
     , (803657,  16,         48) /* ItemUseable - ViewedRemote */
     , (803657,  19,        125) /* Value */
     , (803657,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803657,   1, True ) /* Stuck */
     , (803657,  12, True ) /* ReportCollisions */
     , (803657,  13, False) /* Ethereal */
     , (803657,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803657,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803657,   1, 'Chapters in ValHeel') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803657,   1,   33556014) /* Setup */
     , (803657,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803657, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803657, 0, 4294967295, 'Training Master', 'prewritten', False, '
Custom content has come a long way in ValHeel. We have several Chapters of storyline for you to enjoy. Chapter One starts at level 275. You must speak to the Messenger of Dereth to begin.

The Chapters (found on the ValHeel Wiki |https://valheel.fandom.com/wiki/Special:AllPages| walk you through your time here in ValHeel.

If you ever feel lost, reach out to an admin! We got your back!
');
