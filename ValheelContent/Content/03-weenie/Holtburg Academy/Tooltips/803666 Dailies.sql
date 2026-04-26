DELETE FROM `weenie` WHERE `class_Id` = 803666;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803666, 'dailiesinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803666,   1,       8192) /* ItemType - Writable */
     , (803666,   5,       9000) /* EncumbranceVal */
     , (803666,   8,       1800) /* Mass */
     , (803666,  16,         48) /* ItemUseable - ViewedRemote */
     , (803666,  19,        125) /* Value */
     , (803666,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803666,   1, True ) /* Stuck */
     , (803666,  12, True ) /* ReportCollisions */
     , (803666,  13, False) /* Ethereal */
     , (803666,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803666,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803666,   1, 'Dailies') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803666,   1,   33556014) /* Setup */
     , (803666,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803666, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803666, 0, 4294967295, 'Training Master', 'prewritten', False, '
Listed Below are many quests that you are able to run every day for fast levels and special rewards.

World Bosses:
Mega Virindi (Hebian-To)
VooDoo MaMa JooJoo (Wai Jhou)
Dwayne (Beacon Tower in Sanamar)
Black Death (Fiun Outpost)
Nuhmudira (Isle of Songs portal near the top of the Mayan looking building (portal in Holtburg Underground)
Daybringer (Tou-Tou)

Side Quests:
Ninwah''s Judgement (Uziz Meeting Hall)
Digi''s Memory (NPC in Arramoran Fortress | Temples of Enlightenment & Forgetfulness)
');
