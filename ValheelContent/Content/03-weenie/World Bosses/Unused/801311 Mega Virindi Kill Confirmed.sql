DELETE FROM `weenie` WHERE `class_Id` = 801311;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801311, 'Mega Viridindi Kill Confirmed', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801311,   1,       8192) /* ItemType - Writable */
     , (801311,   5,         25) /* EncumbranceVal */
     , (801311,   8,          5) /* Mass */
     , (801311,   9,          0) /* ValidLocations - None */
     , (801311,  16,          8) /* ItemUseable - Contained */
     , (801311,  19,          0) /* Value */
     , (801311,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801311,  22, False) /* Inscribable */
     , (801311,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801311,  39,    1.22) /* DefaultScale */
     , (801311,  54,     0.2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801311,   1, 'Mega Virindi Kill Confirmed') /* Name */
     , (801311,  33, 'MegaVirindiKillConfirmed') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801311,   1,   33554773) /* Setup */
     , (801311,   3,  536870932) /* SoundTable */
     , (801311,   8,  100672431) /* Icon */
     , (801311,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (801311, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (801311, 0, 4294967295, 'Welcome to Asheron''s Call  ', 'prewritten', False, '
You have proven worthy. This is a kill confirm certificate. Turn it into the Faction Director in Rithwic to be able to receive your rewards.
');
