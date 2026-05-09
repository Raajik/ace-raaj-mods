DELETE FROM `weenie` WHERE `class_Id` = 803668;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803668, 'allspellsinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803668,   1,       8192) /* ItemType - Writable */
     , (803668,   5,       9000) /* EncumbranceVal */
     , (803668,   8,       1800) /* Mass */
     , (803668,  16,         48) /* ItemUseable - ViewedRemote */
     , (803668,  19,        125) /* Value */
     , (803668,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803668,   1, True ) /* Stuck */
     , (803668,  12, True ) /* ReportCollisions */
     , (803668,  13, False) /* Ethereal */
     , (803668,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803668,  54,       5) /* UseRadius */
     , (803668,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803668,   1, 'All Spells') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803668,   1,   33556014) /* Setup */
     , (803668,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803668, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803668, 0, 4294967295, 'Training Master', 'prewritten', False, '
Speak to Terra the Wise to learn all spells and receive all available spell components.
');
