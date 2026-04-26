DELETE FROM `weenie` WHERE `class_Id` = 800621;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800621, 'Godfrey''s Letter for Giavonni', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800621,   1,       8192) /* ItemType - Writable */
     , (800621,   5,         25) /* EncumbranceVal */
     , (800621,   8,          5) /* Mass */
     , (800621,   9,          0) /* ValidLocations - None */
     , (800621,  16,          8) /* ItemUseable - Contained */
     , (800621,  19,         25) /* Value */
     , (800621,  33,          1) /* Bonded - Slippery */
     , (800621,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800621, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800621,  22, True ) /* Inscribable */
     , (800621,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800621,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800621,   1, 'Godfrey''s Letter for Giavonni') /* Name */
     , (800621,   8, 'Chancellor Godfrey') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800621,   1,   33554773) /* Setup */
     , (800621,   3,  536870932) /* SoundTable */
     , (800621,   8,  100667503) /* Icon */
     , (800621,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800621, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800621, 0, 4294967295, '', 'prewritten', False, 'Giovanni,

My dear friend, I am fearful for your safety. I do hope this letter finds you well. We have heard whispers in the wind that there is an evil amongst Nanto.
If that is the truth, please allow my friend here to assist you.

Chancellor Godfrey

');
