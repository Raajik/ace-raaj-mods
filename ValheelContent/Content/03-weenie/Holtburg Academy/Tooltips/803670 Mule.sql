DELETE FROM `weenie` WHERE `class_Id` = 803670;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803670, 'muleinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803670,   1,       8192) /* ItemType - Writable */
     , (803670,   5,       9000) /* EncumbranceVal */
     , (803670,   8,       1800) /* Mass */
     , (803670,  16,         48) /* ItemUseable - ViewedRemote */
     , (803670,  19,        125) /* Value */
     , (803670,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803670,   1, True ) /* Stuck */
     , (803670,  12, True ) /* ReportCollisions */
     , (803670,  13, False) /* Ethereal */
     , (803670,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803670,  54,       5) /* UseRadius */
     , (803670,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803670,   1, 'Mule') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803670,   1,   33556014) /* Setup */
     , (803670,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803670, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803670, 0, 4294967295, 'Training Master', 'prewritten', False, '
The Mule Maker will turn you into a mule which will reduce your size by half, remove all your skills and skill credits, boost you to level 275, grant you extra bag slots, and give you a robe to assist with carrying large amounts of items.
');
