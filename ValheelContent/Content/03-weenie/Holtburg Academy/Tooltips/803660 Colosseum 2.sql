DELETE FROM `weenie` WHERE `class_Id` = 803660;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803660, 'colosseuminfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803660,   1,       8192) /* ItemType - Writable */
     , (803660,   5,       9000) /* EncumbranceVal */
     , (803660,   8,       1800) /* Mass */
     , (803660,  16,         48) /* ItemUseable - ViewedRemote */
     , (803660,  19,        125) /* Value */
     , (803660,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803660,   1, True ) /* Stuck */
     , (803660,  12, True ) /* ReportCollisions */
     , (803660,  13, False) /* Ethereal */
     , (803660,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803660,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803660,   1, 'Colosseum 2.0') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803660,   1,   33556014) /* Setup */
     , (803660,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803660, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803660, 0, 4294967295, 'Training Master', 'prewritten', False, '
The Colosseum has been upgraded to accomodate later game content. It requires level 8,000+ and Prestige 150 is recommended.

You will fight through 10 incredibly difficult bosses and earn Elemental Prisms in order to upgrade Ascended Covenant Gear.
');
