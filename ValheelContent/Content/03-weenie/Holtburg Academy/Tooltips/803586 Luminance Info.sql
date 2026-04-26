DELETE FROM `weenie` WHERE `class_Id` = 803586;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803586, 'lumauginfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803586,   1,       8192) /* ItemType - Writable */
     , (803586,   5,       9000) /* EncumbranceVal */
     , (803586,   8,       1800) /* Mass */
     , (803586,  16,         48) /* ItemUseable - ViewedRemote */
     , (803586,  19,        125) /* Value */
     , (803586,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803586,   1, True ) /* Stuck */
     , (803586,  12, True ) /* ReportCollisions */
     , (803586,  13, False) /* Ethereal */
     , (803586,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803586,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803586,   1, 'Luminance Augmentation') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803586,   1,   33556014) /* Setup */
     , (803586,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803586, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803586, 0, 4294967295, 'Training Master', 'prewritten', False, '
As Softcore or Hardcore, you may speak to Nalicana at Asheron''s Castle to start the Luminace quest. Instead of running the quest, purchase the Triangle from the Vendor next to Nalicana. Turn it into Nalicana to unlock 300,000,000 available Luminance.

Ensure you also purchase the Omni-Token. This will activate every Luminance Augmentation instantly. To use the Omni-Token, you must have 14,000,000 Luminance.

');
