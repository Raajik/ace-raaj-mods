DELETE FROM `weenie` WHERE `class_Id` = 803581;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803581, 'hardcoreinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803581,   1,       8192) /* ItemType - Writable */
     , (803581,   5,       9000) /* EncumbranceVal */
     , (803581,   8,       1800) /* Mass */
     , (803581,  16,         48) /* ItemUseable - ViewedRemote */
     , (803581,  19,        125) /* Value */
     , (803581,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803581,   1, True ) /* Stuck */
     , (803581,  12, True ) /* ReportCollisions */
     , (803581,  13, False) /* Ethereal */
     , (803581,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803581,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803581,   1, 'Hardcore Mode') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803581,   1,   33556014) /* Setup */
     , (803581,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803581, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803581, 0, 4294967295, 'Training Master', 'prewritten', False, '
Hardcore Players will receive DOUBLE Experience and Luminance. If you die, your character is deleted and cannot be played further.

As you grow without dying, you will earn rewards for performance and longevity of life. The primary reward you want to earn is a HALF LIFE. This will act as an Extra Life that keeps you safe from deletion if you die.

Hardcore Players cannot be in an Allegiance or Fellowship with Softcore players. 

You will not be able to advance to level 180 or higher, so we added the Drudge Pits for quick leveling. They are located in the Annex of Town Network down the ramp.

Hardcore players cannot get free spells, create mules, or utilize the Lux Party Pass.
');
