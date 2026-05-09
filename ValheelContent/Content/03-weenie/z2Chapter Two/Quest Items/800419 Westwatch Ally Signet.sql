DELETE FROM `weenie` WHERE `class_Id` = 800419;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800419, 'Westwatch Ally Signet', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800419,   1,       8192) /* ItemType - Writable */
     , (800419,   5,         25) /* EncumbranceVal */
     , (800419,   8,          5) /* Mass */
     , (800419,   9,          0) /* ValidLocations - None */
     , (800419,  16,          8) /* ItemUseable - Contained */
     , (800419,  19,         25) /* Value */
     , (800419,  33,          1) /* Bonded - Slippery */
     , (800419,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800419, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800419,  22, True ) /* Inscribable */
     , (800419,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800419,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800419,   1, 'Westwatch Ally Signet') /* Name */
     , (800419,   7, 'A signed letter to signify alliances between the Light of Dereth and the Viamontian Command.') /* Inscription */
     , (800419,   8, 'Master Elrid') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800419,   1,   33554773) /* Setup */
     , (800419,   3,  536870932) /* SoundTable */
     , (800419,   8,  100667503) /* Icon */
     , (800419,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800419, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800419, 0, 4294967295, '', 'prewritten', False, 'Westwatch Ally Signet

I, Master Elrid, hereby announce our agreement to an alliance with the Light of Dereth. The Viamontian Command will ride side by side the warriors against the Viridni Invasion.
');
