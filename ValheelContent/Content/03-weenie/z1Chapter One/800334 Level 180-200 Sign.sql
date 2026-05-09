DELETE FROM `weenie` WHERE `class_Id` = 800334;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800334, 'Level 180-200', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800334,   1,       8192) /* ItemType - Writable */
     , (800334,   5,       9000) /* EncumbranceVal */
     , (800334,   8,       1800) /* Mass */
     , (800334,  16,         48) /* ItemUseable - ViewedRemote */
     , (800334,  19,        125) /* Value */
     , (800334,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800334,   1, True ) /* Stuck */
     , (800334,  12, True ) /* ReportCollisions */
     , (800334,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800334,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800334,   1, 'Level 180-200') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800334,   1,   33555088) /* Setup */
     , (800334,   3,  536870932) /* SoundTable */
     , (800334,   8,  100668115) /* Icon */
     , (800334,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800334, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800334, 0, 4294967295, ' ', 'prewritten', False, 'On the Crag         hwic road,       a por        ing to the san          homel               ''ndim.

Wh          rge in      desert, trav      heast. Skirt the no     pe of t gest mesa, th   follow th   lley n     ard   time, the way     grow mor ficult. Climb nor      refully -- until        ch a grey plat

Atop th     teau, go ea        e highe      nt, until       ach        ach   rtal. 

  ss throu    e porta     nter the Olth      air.

BEWARE THE DR
');
