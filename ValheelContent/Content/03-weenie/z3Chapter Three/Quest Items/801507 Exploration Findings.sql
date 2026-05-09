DELETE FROM `weenie` WHERE `class_Id` = 801507;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801507, 'Exploration Findings', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801507,   1,       8192) /* ItemType - Writable */
     , (801507,   5,         25) /* EncumbranceVal */
     , (801507,   8,          5) /* Mass */
     , (801507,   9,          0) /* ValidLocations - None */
     , (801507,  16,          8) /* ItemUseable - Contained */
     , (801507,  19,         25) /* Value */
     , (801507,  33,          1) /* Bonded - Slippery */
     , (801507,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801507, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801507,  22, True ) /* Inscribable */
     , (801507,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801507,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801507,   1, 'Exploration Findings') /* Name */
     , (801507,   7, 'Take this Jacob the Proud.') /* Inscription */
     , (801507,   8, 'Explorer Tom') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801507,   1,   33554773) /* Setup */
     , (801507,   3,  536870932) /* SoundTable */
     , (801507,   8,  100667503) /* Icon */
     , (801507,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (801507, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (801507, 0, 4294967295, '', 'prewritten', False, 'Jacob,

I have found many terrible things and I have only made it to the first island. Rest assured that I am safe now, and I will continue my journeys.

Explorer Tom


');
