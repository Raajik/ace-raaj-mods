DELETE FROM `weenie` WHERE `class_Id` = 803678;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803678, 'pathofclassesinfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803678,   1,       8192) /* ItemType - Writable */
     , (803678,   5,       9000) /* EncumbranceVal */
     , (803678,   8,       1800) /* Mass */
     , (803678,  16,         48) /* ItemUseable - ViewedRemote */
     , (803678,  19,        125) /* Value */
     , (803678,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803678,   1, True ) /* Stuck */
     , (803678,  12, True ) /* ReportCollisions */
     , (803678,  13, False) /* Ethereal */
     , (803678,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803678,  39,       1) /* DefaultScale */
     , (803678,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803678,   1, 'Classes') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803678,   1,   33556014) /* Setup */
     , (803678,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803678, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803678, 0, 4294967295, 'Training Master', 'prewritten', False, '
ValHeel offers a unique-to-AC feature: Classes. You can choose to be a Tank, a Healer, and classic DPS fighter. 


The TANK class is useful for every fight. The tank is able to draw aggro from all nearby mobs, and take a lot of damage.

The HEALER is necessary for the harder fights. Healers can Heal all members of a Fellowship at once, and Heal Over Time.

The DPS class does some serious damage, and spawns blood crystals to bleed out enemies over time.

Choose what works best for you!');
