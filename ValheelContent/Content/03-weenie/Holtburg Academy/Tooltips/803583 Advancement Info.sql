DELETE FROM `weenie` WHERE `class_Id` = 803583;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803583, 'advancementinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803583,   1,       8192) /* ItemType - Writable */
     , (803583,   5,       9000) /* EncumbranceVal */
     , (803583,   8,       1800) /* Mass */
     , (803583,  16,         48) /* ItemUseable - ViewedRemote */
     , (803583,  19,        125) /* Value */
     , (803583,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803583,   1, True ) /* Stuck */
     , (803583,  12, True ) /* ReportCollisions */
     , (803583,  13, False) /* Ethereal */
     , (803583,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803583,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803583,   1, 'Instant Advancement') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803583,   1,   33556014) /* Setup */
     , (803583,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803583, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803583, 0, 4294967295, 'Training Master', 'prewritten', False, '
Softcore Players may speak to the Auxiliary of Shemtar to receive an instant boost to level 180 or 275. If you boost to 275, it will start you on the ValHeel custom content track.

You may speak to Terra the Wise to receive all level 1 - 8 spells for free.

You may speak to the Mule Maker to turn your toon into a mule.
');
