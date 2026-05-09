DELETE FROM `weenie` WHERE `class_Id` = 801521;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801521, 'Intercepted Letter from Elorin', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801521,   1,       8192) /* ItemType - Writable */
     , (801521,   5,         25) /* EncumbranceVal */
     , (801521,   8,          5) /* Mass */
     , (801521,   9,          0) /* ValidLocations - None */
     , (801521,  16,          8) /* ItemUseable - Contained */
     , (801521,  19,         25) /* Value */
     , (801521,  33,          1) /* Bonded - Slippery */
     , (801521,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801521, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801521,  22, True ) /* Inscribable */
     , (801521,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801521,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801521,   1, 'Intercepted Letter from Elorin') /* Name */
     , (801521,   7, 'Take this Chancellor Godfrey.') /* Inscription */
     , (801521,   8, 'Elorin the Cursed') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801521,   1,   33554773) /* Setup */
     , (801521,   3,  536870932) /* SoundTable */
     , (801521,   8,  100667503) /* Icon */
     , (801521,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (801521, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (801521, 0, 4294967295, '', 'prewritten', False, '

High Order, this is my inquiry. Bring me forces to destroy the town of Sawato. We must take control of all of Dereth as soon as possible.

Eve of Dern, 30

');
