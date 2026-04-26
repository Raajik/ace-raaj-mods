DELETE FROM `weenie` WHERE `class_Id` = 800175;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800175, 'elorinletter', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800175,   1,       8192) /* ItemType - Writable */
     , (800175,   5,         25) /* EncumbranceVal */
     , (800175,   8,          5) /* Mass */
     , (800175,   9,          0) /* ValidLocations - None */
     , (800175,  16,          8) /* ItemUseable - Contained */
     , (800175,  19,          0) /* Value */
     , (800175,  33,          1) /* Bonded - Bonded */
     , (800175,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800175, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800175,  22, True ) /* Inscribable */
     , (800175,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800175,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800175,   1, 'Letter from the Command') /* Name */
     , (800175,   7, 'To Elorin''s Army') /* Inscription */
     , (800175,   8, 'Elorin the Cursed') /* ScribeName */
	 , (800175,  15, 'This letter has information about Elorin''s whereabouts. Take it to Asheron to inform him.') /* ShortDesc */
     , (800175,  33, 'LettertotheArmy') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800175,   1,   33554773) /* Setup */
     , (800175,   3,  536870932) /* SoundTable */
     , (800175,   8,  100667503) /* Icon */
     , (800175,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800175, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800175, 0, 4294967295, 'Elorin the Cursed', 'prewritten', False, '
Ensure all battle grounds are well secured. We, the Army of the Cursed under the powers of old, have a duty to cleanse this land and bring it to a new age of power. I am upon my throne in the Singularity Caul where lava flows plentiful. be vigilent and relentless in your duties.
');
