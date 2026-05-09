DELETE FROM `weenie` WHERE `class_Id` = 803582;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803582, 'luxinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803582,   1,       8192) /* ItemType - Writable */
     , (803582,   5,       9000) /* EncumbranceVal */
     , (803582,   8,       1800) /* Mass */
     , (803582,  16,         48) /* ItemUseable - ViewedRemote */
     , (803582,  19,        125) /* Value */
     , (803582,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803582,   1, True ) /* Stuck */
     , (803582,  12, True ) /* ReportCollisions */
     , (803582,  13, False) /* Ethereal */
     , (803582,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803582,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803582,   1, 'Lux Party Pass') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803582,   1,   33556014) /* Setup */
     , (803582,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803582, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803582, 0, 4294967295, 'Training Master', 'prewritten', False, '
Softcore players have the advantage of attaining the Lux Party Pass. This pass lasts 14 days, and grants you special bonuses:

- Access to the Lux Lounge (Speak to Lounge Concierge in Town network)
- Bonus Reputation Earning

Lounge Benefits:

- Access to 25% off discounts of most things sold in Adventurer''s Haven on the Lounge Item Vendor
- A one-time use +5% overall XP earning bonus
- A once-monthly +10 to all ratings boost
');
