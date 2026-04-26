DELETE FROM `weenie` WHERE `class_Id` = 801343;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801343, 'Isel''s Heart Fire', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801343,   1,       8192) /* ItemType - Writable */
     , (801343,   5,         25) /* EncumbranceVal */
     , (801343,   8,          5) /* Mass */
     , (801343,   9,          0) /* ValidLocations - None */
     , (801343,  16,          8) /* ItemUseable - Contained */
     , (801343,  19,          0) /* Value */
     , (801343,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801343,  22, False) /* Inscribable */
     , (801343,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801343,  39,    1.22) /* DefaultScale */
     , (801343,  54,     0.2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801343,   1, 'Isel''s Heart Fire') /* Name */
     , (801343,  33, 'IRFlag1') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801343,   1,   33554773) /* Setup */
     , (801343,   3,  536870932) /* SoundTable */
     , (801343,   8,      25822) /* Icon */
     , (801343,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (801343, 1, 1000);
