DELETE FROM `weenie` WHERE `class_Id` = 803662;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803662, 'growthinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803662,   1,       8192) /* ItemType - Writable */
     , (803662,   5,       9000) /* EncumbranceVal */
     , (803662,   8,       1800) /* Mass */
     , (803662,  16,         48) /* ItemUseable - ViewedRemote */
     , (803662,  19,        125) /* Value */
     , (803662,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803662,   1, True ) /* Stuck */
     , (803662,  12, True ) /* ReportCollisions */
     , (803662,  13, False) /* Ethereal */
     , (803662,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803662,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803662,   1, 'Growth') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803662,   1,   33556014) /* Setup */
     , (803662,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803662, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803662, 0, 4294967295, 'Training Master', 'prewritten', False, '
Leveling your character is not the only way to advance in ValHeeel.

Reputation:
As you advance through the questlines, you will begin earning Reputation. Reputation allows you to grow by acting as a type of experience to gain Prestige.

Prestige:
By using the command /raise Prestige 1, you will be able to spend your available Reputation to increase your Prestige. When your Prestige has been increased, it will alos increase your active Offensive and Defensive Ratings.
You will be able to earn a maximum Prestige level of 10,000.

Transcendence:
As you gain more Prestige, you will be able to actively participate in end game Raids which will allow you to unlock Transcendence at the cost of Prestige. 
Every time you Transcend, your Prestige and Reputation reset, as does your ratings; however, you will get a significant rating boost leading into your next Transcendence level.
You will be able to earn a maximum or 5 Transcendence Levels
');
