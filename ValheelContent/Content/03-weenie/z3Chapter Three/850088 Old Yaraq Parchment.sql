DELETE FROM `weenie` WHERE `class_Id` = 850088;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850088, 'ace850088-oldyaraqparchment', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850088,   1,       8192) /* ItemType - Writable */
     , (850088,   5,          5) /* EncumbranceVal */
     , (850088,   8,          5) /* Mass */
     , (850088,   9,          0) /* ValidLocations - None */
     , (850088,  16,          8) /* ItemUseable - Contained */
     , (850088,  19,         50) /* Value */
	 , (850088,  33,          1) /* Bonded - Bonded */
     , (850088,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (850088, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850088,   4,  True) /* Rot Proof - Yes */
	 , (850088,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850088,  44,      -1) /* Time to Rot - Never */
	 , (850088,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850088,   1, 'In Search of Talaria') /* Name */
	 , (850088,  33, 'readyaraqtext') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850088,   1, 0x02000155) /* Setup */
     , (850088,   3, 0x20000014) /* SoundTable */
     , (850088,   8, 0x060030A7) /* Icon */
     , (850088,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (850088,  52,  100689896) /* IconUnderlay */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (850088, 2, 500);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (850088, 0, 0xFFFFFFFF, 'An Adventurer', 'prewritten', False, '
Talaria.

What an odd name for mystical sollerets. Actually, "Talaria" sounds like a person''s name but what do I know.

Regardless, the rumors tell about a fabled "Talaria" that is out there somewhere and is somehow loosely connected to "Mercury."


I am uncertain of the translation here as the parchment is a bit smudged and hard to read. But even if that is the correct translation, how do I get to "Mercury?"



That is where I now find myself.

')
     , (850088, 1, 0xFFFFFFFF, 'An Adventurer', 'prewritten', False, '
I seem to recall a voluptuous Viamontian barmaid who, for several MMD notes, suggested I seek out an odd crooner named Freddie who was last seen in a town called something like tomba, or toofa, or Cleveland....

Wait, "Cleveland" doesn''t sound like a city in Dereth, and "Freddie" doesn''t sound much like a proper Aluvian name either. Sounds more like some backwater crap-hole town you''d find in a cheap novel and what someone might choose as an alter-ego rock star stage name.


Dangit! Maybe this is all just made up!


Or maybe not. I have come too far to give up hope now.

Yes, perhaps I will go and find Freddie. He might know how to locate "Mercury" and thus aid me in my quest to find Talaria.

');

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850088, 10 /* PickUp */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  22 /* StampQuest */, 0, 1, NULL, 'readyaraqtext', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);