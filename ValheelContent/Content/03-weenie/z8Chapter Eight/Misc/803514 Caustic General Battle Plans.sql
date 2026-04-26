DELETE FROM `weenie` WHERE `class_Id` = 803514;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803514, 'CausticGeneralBattlePlans', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803514,   1,       8192) /* ItemType - Writable */
     , (803514,   5,         25) /* EncumbranceVal */
     , (803514,   8,          5) /* Mass */
     , (803514,   9,          0) /* ValidLocations - None */
     , (803514,  16,          8) /* ItemUseable - Contained */
     , (803514,  19,         10) /* Value */
     , (803514,  33,          1) /* Bonded - Bonded */
     , (803514,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803514, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803514,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803514,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803514,   1, 'Caustic General Battle Plans') /* Name */
     , (803514,  15, 'A singed piece of parchment with some writing on it.') /* ShortDesc */
     , (803514,  33, 'CausticPlans') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803514,   1,   33554773) /* Setup */
     , (803514,   3,  536870932) /* SoundTable */
     , (803514,   8,  100673472) /* Icon */
     , (803514,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803514, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803514, 0, 4294967295, 'Frost General Battle Plans', 'prewritten', False, 'A document singed with glyphs inscribed into it.');
