DELETE FROM `weenie` WHERE `class_Id` = 800636;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800636, 'Inquiry to Dark Trades', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800636,   1,       8192) /* ItemType - Writable */
     , (800636,   5,         25) /* EncumbranceVal */
     , (800636,   8,          5) /* Mass */
     , (800636,   9,          0) /* ValidLocations - None */
     , (800636,  16,          8) /* ItemUseable - Contained */
     , (800636,  19,         25) /* Value */
     , (800636,  33,          1) /* Bonded - Slippery */
     , (800636,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800636, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800636,  22, True ) /* Inscribable */
     , (800636,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800636,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800636,   1, 'Inquiry to Dark Trades') /* Name */
     , (800636,   8, 'Asheron') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800636,   1,   33554773) /* Setup */
     , (800636,   3,  536870932) /* SoundTable */
     , (800636,   8,  100667503) /* Icon */
     , (800636,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800636, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800636, 0, 4294967295, '', 'prewritten', False, 'Shemtar,

I fear there is someone in your midst who may be trading our secrets to the enemy. I need you to investigate your command and smoke out the wrongdoer. We must have a united front.

Asheron

');
