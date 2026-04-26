DELETE FROM `weenie` WHERE `class_Id` = 803584;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803584, 'cowtipinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803584,   1,       8192) /* ItemType - Writable */
     , (803584,   5,       9000) /* EncumbranceVal */
     , (803584,   8,       1800) /* Mass */
     , (803584,  16,         48) /* ItemUseable - ViewedRemote */
     , (803584,  19,        125) /* Value */
     , (803584,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803584,   1, True ) /* Stuck */
     , (803584,  12, True ) /* ReportCollisions */
     , (803584,  13, False) /* Ethereal */
     , (803584,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803584,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803584,   1, 'Tipping the Cow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803584,   1,   33556014) /* Setup */
     , (803584,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803584, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803584, 0, 4294967295, 'Training Master', 'prewritten', False, '
Tipping the cow in ValHeel will grant a lot more levels. Traditionally, Softcore players will reach level 69 when completed, and Hardcore will reach level 75.
');
