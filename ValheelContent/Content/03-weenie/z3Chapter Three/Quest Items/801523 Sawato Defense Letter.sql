DELETE FROM `weenie` WHERE `class_Id` = 801523;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801523, 'Sawato Defense Letter', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801523,   1,       8192) /* ItemType - Writable */
     , (801523,   5,         25) /* EncumbranceVal */
     , (801523,   8,          5) /* Mass */
     , (801523,   9,          0) /* ValidLocations - None */
     , (801523,  16,          8) /* ItemUseable - Contained */
     , (801523,  19,         25) /* Value */
     , (801523,  33,          1) /* Bonded - Slippery */
     , (801523,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801523, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801523,  22, True ) /* Inscribable */
     , (801523,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801523,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801523,   1, 'Sawato Defense Letter') /* Name */
     , (801523,   7, 'Take this Percy Glend.') /* Inscription */
     , (801523,   8, 'Chancellor Godfrey') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801523,   1,   33554773) /* Setup */
     , (801523,   3,  536870932) /* SoundTable */
     , (801523,   8,  100667503) /* Icon */
     , (801523,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (801523, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (801523, 0, 4294967295, '', 'prewritten', False, '

The messenger of this letter is a mighty warrior of great strength. He will assist you in defending your humble town. Hold strong Percy!

');
