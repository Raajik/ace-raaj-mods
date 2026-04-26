DELETE FROM `weenie` WHERE `class_Id` = 803682;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803682, 'enlightenmentcoordinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803682,   1,       8192) /* ItemType - Writable */
     , (803682,   5,       9000) /* EncumbranceVal */
     , (803682,   8,       1800) /* Mass */
     , (803682,  16,         48) /* ItemUseable - ViewedRemote */
     , (803682,  19,        125) /* Value */
     , (803682,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803682,   1, True ) /* Stuck */
     , (803682,  12, True ) /* ReportCollisions */
     , (803682,  13, False) /* Ethereal */
     , (803682,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803682,  39,     0.5) /* DefaultScale */
     , (803682,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803682,   1, 'Enlightenment Coordinator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803682,   1,   33556014) /* Setup */
     , (803682,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803682, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803682, 0, 4294967295, 'Training Master', 'prewritten', False, '
This vendor sells gems to Specialize or Untrain your skills. 
');
