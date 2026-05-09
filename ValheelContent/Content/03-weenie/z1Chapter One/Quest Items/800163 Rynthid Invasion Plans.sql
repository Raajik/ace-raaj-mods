DELETE FROM `weenie` WHERE `class_Id` = 800163;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800163, 'invasionplans', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800163,   1,       8192) /* ItemType - Writable */
     , (800163,   5,         25) /* EncumbranceVal */
     , (800163,   8,          5) /* Mass */
     , (800163,   9,          0) /* ValidLocations - None */
     , (800163,  16,          8) /* ItemUseable - Contained */
     , (800163,  19,          0) /* Value */
     , (800163,  33,          1) /* Bonded - Bonded */
     , (800163,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800163, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800163,  22, False) /* Inscribable */
     , (800163,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800163,  39,    1.22) /* DefaultScale */
     , (800163,  54,     0.2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800163,   1, 'Rynthid Invasion Plans') /* Name */
     , (800163,  14, 'Use this item to read it.') /* Use */
     , (800163,  15, 'This has information about plans to invade Dereth. Hand this to Arabeth.') /* ShortDesc */
     , (800163,  33, 'RynthidPlans') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800163,   1,   33554773) /* Setup */
     , (800163,   3,  536870932) /* SoundTable */
     , (800163,   8,  100672431) /* Icon */
     , (800163,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800163, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800163, 0, 4294967295, 'Rynthid Invasion Plans  ', 'prewritten', False, '
We are settled in the Central Northern post of Dereth upon a plateau. We have worked closely with our allies to overcome Arwic, Fort Tethana, and Candeth Keep.

Our undead friends have overtaken their way of travel for now, but it will not be long until they find other ways.

We are waiting for the command of our Lord Grothom to attack our next target. Once you are prepared, send word to our location at 56.6S, 66.9E.
');
