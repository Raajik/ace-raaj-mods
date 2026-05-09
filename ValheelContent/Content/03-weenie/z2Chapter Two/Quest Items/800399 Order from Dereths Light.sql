DELETE FROM `weenie` WHERE `class_Id` = 800399;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800399, 'Orders from Dereth''s Light', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800399,   1,       8192) /* ItemType - Writable */
     , (800399,   5,         25) /* EncumbranceVal */
     , (800399,   8,          5) /* Mass */
     , (800399,   9,          0) /* ValidLocations - None */
     , (800399,  16,          8) /* ItemUseable - Contained */
     , (800399,  19,         25) /* Value */
     , (800399,  33,          1) /* Bonded - Slippery */
     , (800399,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800399, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800399,  22, True ) /* Inscribable */
     , (800399,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800399,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800399,   1, 'Orders from Dereth''s Light') /* Name */
     , (800399,   7, 'Take this to Commander Forester at 59.3S, 80.5E.') /* Inscription */
     , (800399,   8, 'Dereth''s Light') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800399,   1,   33554773) /* Setup */
     , (800399,   3,  536870932) /* SoundTable */
     , (800399,   8,  100667503) /* Icon */
     , (800399,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800399, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800399, 0, 4294967295, '', 'prewritten', False, 'Orders for Commander Forester

By the Light of Dereth and all that we protect. Our lands are being overrun by the Darkness of Elorin''s Armies. We had thought to have slayed him, but it
seems that there are some nefarious things going on. His armies are still following the order he laid out. Prying the Virindi Charming Jewel did not stop 
the invasion. You must begin training your soldiers where you have found refuge. Recruit as many as you can. This war is far from over.

Asheron


');
