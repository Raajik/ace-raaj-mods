DELETE FROM `weenie` WHERE `class_Id` = 803669;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803669, 'skipinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803669,   1,       8192) /* ItemType - Writable */
     , (803669,   5,       9000) /* EncumbranceVal */
     , (803669,   8,       1800) /* Mass */
     , (803669,  16,         48) /* ItemUseable - ViewedRemote */
     , (803669,  19,        125) /* Value */
     , (803669,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803669,   1, True ) /* Stuck */
     , (803669,  12, True ) /* ReportCollisions */
     , (803669,  13, False) /* Ethereal */
     , (803669,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803669,  54,       5) /* UseRadius */
     , (803669,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803669,   1, 'Skip Levels') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803669,   1,   33556014) /* Setup */
     , (803669,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803669, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803669, 0, 4294967295, 'Training Master', 'prewritten', False, '
Auxiliary to Shemtar will allow you to skip to level 180, or 275. If you skip the level 275, you will be teleported to New Vhorma to begin the custom content.
');
