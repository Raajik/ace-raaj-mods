DELETE FROM `weenie` WHERE `class_Id` = 800605;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800605, 'New Vhorma Update', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800605,   1,       8192) /* ItemType - Writable */
     , (800605,   5,         25) /* EncumbranceVal */
     , (800605,   8,          5) /* Mass */
     , (800605,   9,          0) /* ValidLocations - None */
     , (800605,  16,          8) /* ItemUseable - Contained */
     , (800605,  19,         25) /* Value */
     , (800605,  33,          1) /* Bonded - Slippery */
     , (800605,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800605, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800605,  22, True ) /* Inscribable */
     , (800605,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800605,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800605,   1, 'New Vhorma Update') /* Name */
     , (800605,   7, 'Take this Commander Charleston in the Greenspire.') /* Inscription */
     , (800605,   8, 'Chancellor Godfrey') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800605,   1,   33554773) /* Setup */
     , (800605,   3,  536870932) /* SoundTable */
     , (800605,   8,  100667503) /* Icon */
     , (800605,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800605, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800605, 0, 4294967295, '', 'prewritten', False, 'Commander Charleston,

Our fortress is holding strong, we are fortunate to have this land to work with. The messenger of this letter will assist you with your needs in Greenspire, take care and let me know what needs there are.

Chancellor Godfrey


');
