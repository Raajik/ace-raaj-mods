DELETE FROM `weenie` WHERE `class_Id` = 801514;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801514, 'Shemtars Orders', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801514,   1,       8192) /* ItemType - Writable */
     , (801514,   5,         25) /* EncumbranceVal */
     , (801514,   8,          5) /* Mass */
     , (801514,   9,          0) /* ValidLocations - None */
     , (801514,  16,          8) /* ItemUseable - Contained */
     , (801514,  19,         25) /* Value */
     , (801514,  33,          1) /* Bonded - Slippery */
     , (801514,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801514, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801514,  22, True ) /* Inscribable */
     , (801514,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801514,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801514,   1, 'Shemtar''s Orders') /* Name */
     , (801514,   7, 'Take this to Chancellor Godfrey.') /* Inscription */
     , (801514,   8, 'Shemtar') /* ScribeName */
     , (801514,  33, 'ShemMercPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801514,   1,   33554773) /* Setup */
     , (801514,   3,  536870932) /* SoundTable */
     , (801514,   8,  100667503) /* Icon */
     , (801514,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (801514, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (801514, 0, 4294967295, '', 'prewritten', False, '

We are losing our battles in each town. This is not the way this is supposed to go. Let Alartha know that we plan to attack Lin next, and they better not screw this up.

Shemtar
');
