DELETE FROM `weenie` WHERE `class_Id` = 803661;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803661, 'slashcommandinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803661,   1,       8192) /* ItemType - Writable */
     , (803661,   5,       9000) /* EncumbranceVal */
     , (803661,   8,       1800) /* Mass */
     , (803661,  16,         48) /* ItemUseable - ViewedRemote */
     , (803661,  19,        125) /* Value */
     , (803661,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803661,   1, True ) /* Stuck */
     , (803661,  12, True ) /* ReportCollisions */
     , (803661,  13, False) /* Ethereal */
     , (803661,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803661,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803661,   1, 'Custom Slash Commands') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803661,   1,   33556014) /* Setup */
     , (803661,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803661, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803661, 0, 4294967295, 'Training Master', 'prewritten', False, '
ValHeel has many custom commands for you to utilize throughout your journey.

/Raise
Usage: /raise <str/end/coord/quick/focus/self/hp/stam/mp/mana> 
<destruction/invulnerability/glory/temperance/vitality> (for 10,000,000 luminance) 

/nextlevel
Usage: Use this command to see how much xp you have until your next level after 275.

/reputation
Usage: Checks your current Reputation rating.

/prestige
Usage: Checks your current Prestige Level

/raise prestige [#]
Usage: Raises your Prestige Level x amount.

/convertlumtosc [#]
Usage: Converts banked luminance to skill credits. Costs 1,000,000,000 luminance for one skill credit.

/hcleaders
Usage: This command displays the top 10 highest level Hardcore characters Names, Levels, and Ages (DD:HH:MM).

/achlist
Usage: This command displays the currently earned achievements for Hardcore characters.

|MORE INFO ON THE WIKI|
');
