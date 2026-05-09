DELETE FROM `weenie` WHERE `class_Id` = 803442;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803442, 'ArramoranDefenseLetter', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803442,   1,       8192) /* ItemType - Writable */
     , (803442,   5,         25) /* EncumbranceVal */
     , (803442,   8,          5) /* Mass */
     , (803442,   9,          0) /* ValidLocations - None */
     , (803442,  16,          8) /* ItemUseable - Contained */
     , (803442,  19,         25) /* Value */
     , (803442,  33,          1) /* Bonded - Slippery */
     , (803442,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803442, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803442,  22, True ) /* Inscribable */
     , (803442,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803442,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803442,   1, 'Arramoran Defense Letter') /* Name */
     , (803442,   7, 'Take this to Asheron at his castle.') /* Inscription */
     , (803442,   8, 'Oracle Liliath') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803442,   1,   33554773) /* Setup */
     , (803442,   3,  536870932) /* SoundTable */
     , (803442,   8,  100667503) /* Icon */
     , (803442,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803442, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803442, 0, 4294967295, '', 'prewritten', False, '

This letter is a request for assistance in defending Arramora.

');
