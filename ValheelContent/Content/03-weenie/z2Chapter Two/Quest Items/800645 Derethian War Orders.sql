DELETE FROM `weenie` WHERE `class_Id` = 800645;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800645, 'Derethian War Orders', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800645,   1,       8192) /* ItemType - Writable */
     , (800645,   5,         25) /* EncumbranceVal */
     , (800645,   8,          5) /* Mass */
     , (800645,   9,          0) /* ValidLocations - None */
     , (800645,  16,          8) /* ItemUseable - Contained */
     , (800645,  19,         25) /* Value */
     , (800645,  33,          1) /* Bonded - Slippery */
     , (800645,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800645, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800645,  22, True ) /* Inscribable */
     , (800645,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800645,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800645,   1, 'Derethian War Orders') /* Name */
     , (800645,   8, 'Commander Forester by the Orders of Asheron') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800645,   1,   33554773) /* Setup */
     , (800645,   3,  536870932) /* SoundTable */
     , (800645,   8,  100667503) /* Icon */
     , (800645,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800645, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800645, 0, 4294967295, '', 'prewritten', False, 'Warriors of Dereth,

War is upon us. We may fall, but the Light of Dereth will never fade. May your strength never fail, and your hope never be lost. Fight on for your land, and be brave in the face of evil.

Asheron

');
