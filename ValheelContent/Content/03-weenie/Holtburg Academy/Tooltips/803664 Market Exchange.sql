DELETE FROM `weenie` WHERE `class_Id` = 803664;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803664, 'exchangeinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803664,   1,       8192) /* ItemType - Writable */
     , (803664,   5,       9000) /* EncumbranceVal */
     , (803664,   8,       1800) /* Mass */
     , (803664,  16,         48) /* ItemUseable - ViewedRemote */
     , (803664,  19,        125) /* Value */
     , (803664,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803664,   1, True ) /* Stuck */
     , (803664,  12, True ) /* ReportCollisions */
     , (803664,  13, False) /* Ethereal */
     , (803664,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803664,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803664,   1, 'Market Exchange') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803664,   1,   33556014) /* Setup */
     , (803664,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803664, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803664, 0, 4294967295, 'Training Master', 'prewritten', False, '
ValHeel has a unique and active Market Exchange. The market exchange allows you to trade AshCoin (the top Alt Currency) according to current market ratios.

The ratios are 1:1 all the way up to 1:5. The market is unpredictable, so always be ready to make a trade. 

Simply hand a single AshCoin in to the ValHeel Market Manager in Adventurer''s Haven and receive the ratio''d amount back.
');
