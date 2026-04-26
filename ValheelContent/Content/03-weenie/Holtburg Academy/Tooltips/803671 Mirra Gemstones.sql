DELETE FROM `weenie` WHERE `class_Id` = 803671;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803671, 'mirrainfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803671,   1,       8192) /* ItemType - Writable */
     , (803671,   5,       9000) /* EncumbranceVal */
     , (803671,   8,       1800) /* Mass */
     , (803671,  16,         48) /* ItemUseable - ViewedRemote */
     , (803671,  19,        125) /* Value */
     , (803671,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803671,   1, True ) /* Stuck */
     , (803671,  12, True ) /* ReportCollisions */
     , (803671,  13, False) /* Ethereal */
     , (803671,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803671,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803671,   1, 'Mirra Gemstones') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803671,   1,   33556014) /* Setup */
     , (803671,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803671, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803671, 0, 4294967295, 'Training Master', 'prewritten', False, '
Mirra Gemstones are powerful objects found on high level mobs. You can find them in varying Purities from 1 - 5. You can inlay Mirra Gemstones into Arramoran gear, as well as various Quest gear. 

All Mirra Gemstones can be used for a lot of very useful things, such as strengthening your character or gaining levels. Collect as many as you can!
');
