DELETE FROM `weenie` WHERE `class_Id` = 800618;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800618, 'Spire Letter to New Vhorma', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800618,   1,       8192) /* ItemType - Writable */
     , (800618,   5,         25) /* EncumbranceVal */
     , (800618,   8,          5) /* Mass */
     , (800618,   9,          0) /* ValidLocations - None */
     , (800618,  16,          8) /* ItemUseable - Contained */
     , (800618,  19,         25) /* Value */
     , (800618,  33,          1) /* Bonded - Slippery */
     , (800618,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800618, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800618,  22, True ) /* Inscribable */
     , (800618,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800618,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800618,   1, 'Spire Letter to New Vhorma') /* Name */
     , (800618,   8, 'Commander Nathaft') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800618,   1,   33554773) /* Setup */
     , (800618,   3,  536870932) /* SoundTable */
     , (800618,   8,  100667503) /* Icon */
     , (800618,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800618, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800618, 0, 4294967295, '', 'prewritten', False, 'Chancellor Godfrey,

We are finding freedom for the first time in ages. The Mecernary Commander has been slain thanks to your warrior. 

Commander Nathaft


');
