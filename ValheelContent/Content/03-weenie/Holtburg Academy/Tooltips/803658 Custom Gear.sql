DELETE FROM `weenie` WHERE `class_Id` = 803658;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803658, 'customgearinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803658,   1,       8192) /* ItemType - Writable */
     , (803658,   5,       9000) /* EncumbranceVal */
     , (803658,   8,       1800) /* Mass */
     , (803658,  16,         48) /* ItemUseable - ViewedRemote */
     , (803658,  19,        125) /* Value */
     , (803658,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803658,   1, True ) /* Stuck */
     , (803658,  12, True ) /* ReportCollisions */
     , (803658,  13, False) /* Ethereal */
     , (803658,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803658,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803658,   1, 'Custom Gear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803658,   1,   33556014) /* Setup */
     , (803658,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803658, 3, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803658, 0, 4294967295, 'Training Master', 'prewritten', False, '
There are a lot of great additions to the lootgen and quest gear system in ValHeel.

Tier 9 - Level 180 - 275

Elorin''s Cursed Armor - Level 200

Shemtar''s Armor of Enlightenment - Level 200

Hardened Shadow Armor - Level 275

Cursed Hollow Weapons - Level 275

Empowered Gear - Level 275+ 

Proto Gear - Level 400+ 

Arramoran Gear - Level 1,500+ 

Ascended Covenant Gear - Level 3,000+ 

Luminium Gear - Level 5,000+ 

Perfect Ascended Covenant Gear - Level 8,000+

Black Ore Ascended Covenant Gear - Level 10,000+

Arken Drake Gear - Level 10,000+

|MORE INFO ON THE WIKI|
');
