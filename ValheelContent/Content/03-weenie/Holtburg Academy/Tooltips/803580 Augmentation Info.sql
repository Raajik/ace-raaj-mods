DELETE FROM `weenie` WHERE `class_Id` = 803580;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803580, 'augmentationinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803580,   1,       8192) /* ItemType - Writable */
     , (803580,   5,       9000) /* EncumbranceVal */
     , (803580,   8,       1800) /* Mass */
     , (803580,  16,         48) /* ItemUseable - ViewedRemote */
     , (803580,  19,        125) /* Value */
     , (803580,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803580,   1, True ) /* Stuck */
     , (803580,  12, True ) /* ReportCollisions */
     , (803580,  13, False) /* Ethereal */
     , (803580,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803580,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803580,   1, 'Experience Augmentations') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803580,   1,   33556014) /* Setup */
     , (803580,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803580, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803580, 0, 4294967295, 'Training Master', 'prewritten', False, '
Every player spawns with most Experience Augmentations already active. To get the remaining ones, please visit the Marketplace and utilize Monroe for UNLIMITED STIPENDS. Then purchase additional Experience Augmentation Gems from Marid.

You may also purchase Omni Coalesced Aetheria. This will unlock all three Aetherial Slots without level limitations.


');
