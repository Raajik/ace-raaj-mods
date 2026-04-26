DELETE FROM `weenie` WHERE `class_Id` = 803478;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803478, 'FrostGeneralBattlePlans', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803478,   1,       8192) /* ItemType - Writable */
     , (803478,   5,         25) /* EncumbranceVal */
     , (803478,   8,          5) /* Mass */
     , (803478,   9,          0) /* ValidLocations - None */
     , (803478,  16,          8) /* ItemUseable - Contained */
     , (803478,  19,         10) /* Value */
     , (803478,  33,          1) /* Bonded - Bonded */
     , (803478,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803478, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803478,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803478,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803478,   1, 'Frost General Battle Plans') /* Name */
     , (803478,  15, 'A frozen piece of parchment with some writing on it.') /* ShortDesc */
     , (803478,  33, 'FrostPlans') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803478,   1,   33554773) /* Setup */
     , (803478,   3,  536870932) /* SoundTable */
     , (803478,   8,  100673474) /* Icon */
     , (803478,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803478, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803478, 0, 4294967295, 'Frost General Battle Plans', 'prewritten', False, 'A document frozen over with glyphs inscribed into it.');
