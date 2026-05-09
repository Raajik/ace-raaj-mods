DELETE FROM `weenie` WHERE `class_Id` = 800534;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800534, 'Spy Informant Letter', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800534,   1,       8192) /* ItemType - Writable */
     , (800534,   5,         25) /* EncumbranceVal */
     , (800534,   8,          5) /* Mass */
     , (800534,   9,          0) /* ValidLocations - None */
     , (800534,  16,          8) /* ItemUseable - Contained */
     , (800534,  19,          0) /* Value */
     , (800534,  33,          1) /* Bonded - Bonded */
     , (800534,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800534, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800534,  22, False) /* Inscribable */
     , (800534,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800534,  39,    1.22) /* DefaultScale */
     , (800534,  54,     0.2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800534,   1, 'Spy Informant Letter') /* Name */
     , (800534,  33, 'TPSpyLetter2') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800534,   1,   33554773) /* Setup */
     , (800534,   3,  536870932) /* SoundTable */
     , (800534,   8,  100672431) /* Icon */
     , (800534,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800534, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800534, 0, 4294967295, 'Welcome to Asheron''s Call  ', 'prewritten', False, '
We have found some news of an uprising. The Tradewind''s Path must remain in tact. It is our only way to ensure the protection of the Order.

The Kings will want to hear of this. Ensure this letter gets to them.
');
