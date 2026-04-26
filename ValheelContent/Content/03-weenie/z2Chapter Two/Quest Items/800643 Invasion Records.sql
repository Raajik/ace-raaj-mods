DELETE FROM `weenie` WHERE `class_Id` = 800643;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800643, 'Invasion Records', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800643,   1,       8192) /* ItemType - Writable */
     , (800643,   5,         25) /* EncumbranceVal */
     , (800643,   8,          5) /* Mass */
     , (800643,   9,          0) /* ValidLocations - None */
     , (800643,  16,          8) /* ItemUseable - Contained */
     , (800643,  19,         25) /* Value */
     , (800643,  33,          1) /* Bonded - Slippery */
     , (800643,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800643, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800643,  22, True ) /* Inscribable */
     , (800643,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800643,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800643,   1, 'Invasion Records') /* Name */
     , (800643,   8, '********') /* ScribeName */
     , (800643,  33, 'invasionrecords') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800643,   1,   33554773) /* Setup */
     , (800643,   3,  536870932) /* SoundTable */
     , (800643,   8,  100667503) /* Icon */
     , (800643,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800643, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800643, 0, 4294967295, '', 'prewritten', False, '

Abandoned Mines - The Eve of Norn
Bandit Castle - The Eve of Norn
Arwic - The Dusk of Norn
Banished Assembly - Eprox of Norn
Fort Tethana - Eprox of Norn
Candeth Keep - Norn Breaklay
Guarded Plateau - The Even of Gurn
Yanshi - Gurn Breaklay
Wai Jhou - Gurn Breaklay
New Vhorma - The Eve of Wenst


');
