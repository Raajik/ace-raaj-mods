DELETE FROM `weenie` WHERE `class_Id` = 801508;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801508, 'Kara Freedom Letter', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801508,   1,       8192) /* ItemType - Writable */
     , (801508,   5,         25) /* EncumbranceVal */
     , (801508,   8,          5) /* Mass */
     , (801508,   9,          0) /* ValidLocations - None */
     , (801508,  16,          8) /* ItemUseable - Contained */
     , (801508,  19,         25) /* Value */
     , (801508,  33,          1) /* Bonded - Slippery */
     , (801508,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801508, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801508,  22, True ) /* Inscribable */
     , (801508,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801508,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801508,   1, 'Kara Freedom Letter') /* Name */
     , (801508,   7, 'Take this Chancellor Godfrey.') /* Inscription */
     , (801508,   8, 'Trexxo von Tarvus') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801508,   1,   33554773) /* Setup */
     , (801508,   3,  536870932) /* SoundTable */
     , (801508,   8,  100667503) /* Icon */
     , (801508,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (801508, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (801508, 0, 4294967295, '', 'prewritten', False, '

Kara has been set free from the evils of the Monouga Onslaught. We are writing this to let you know that we are able to donctinually defend ourselves.


');
