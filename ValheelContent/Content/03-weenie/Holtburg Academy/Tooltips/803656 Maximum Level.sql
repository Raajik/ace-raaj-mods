DELETE FROM `weenie` WHERE `class_Id` = 803656;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803656, 'levelinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803656,   1,       8192) /* ItemType - Writable */
     , (803656,   5,       9000) /* EncumbranceVal */
     , (803656,   8,       1800) /* Mass */
     , (803656,  16,         48) /* ItemUseable - ViewedRemote */
     , (803656,  19,        125) /* Value */
     , (803656,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803656,   1, True ) /* Stuck */
     , (803656,  12, True ) /* ReportCollisions */
     , (803656,  13, False) /* Ethereal */
     , (803656,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803656,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803656,   1, 'Maximum Level') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803656,   1,   33556014) /* Setup */
     , (803656,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803656, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803656, 0, 4294967295, 'Training Master', 'prewritten', False, '
In ValHeel, you are able to reach level 10,000! The grind is tough, but well worth it!

When you advance beyond level 275, each level will cost 10,000,000,000 Experience points.

You can track how far away from the next level by typing /nextlevel
');
