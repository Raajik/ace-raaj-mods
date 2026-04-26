DELETE FROM `weenie` WHERE `class_Id` = 800385;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800385, 'Tradewind''s Path Triumph Certificate', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800385,   1,       8192) /* ItemType - Writable */
     , (800385,   5,         25) /* EncumbranceVal */
     , (800385,   8,          5) /* Mass */
     , (800385,   9,          0) /* ValidLocations - None */
     , (800385,  16,          8) /* ItemUseable - Contained */
     , (800385,  19,          0) /* Value */
     , (800385,  33,          1) /* Bonded - Bonded */
     , (800385,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800385, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800385,  22, False) /* Inscribable */
     , (800385,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800385,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800385,   1, 'Tradewind''s Path Triumph Certificate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800385,   1,   33554773) /* Setup */
     , (800385,   3,  536870932) /* SoundTable */
     , (800385,   8,  100672829) /* Icon */
     , (800385,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (800385, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (800385, 0, 4294967295, 'Glysander Cartoth', 'prewritten', False, '
Dear Warrior,

This certificate is redeemable for Tradewind''s Path Armor or one Tradewind''s Path Weapon of your choice.

Asheron

');
