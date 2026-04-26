DELETE FROM `weenie` WHERE `class_Id` = 803335;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803335, 'ValHeel Introduction Guide', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803335,   1,       8192) /* ItemType - Writable */
     , (803335,   5,         25) /* EncumbranceVal */
     , (803335,   8,          5) /* Mass */
     , (803335,   9,          0) /* ValidLocations - None */
     , (803335,  16,          8) /* ItemUseable - Contained */
     , (803335,  19,         25) /* Value */
     , (803335,  33,          1) /* Bonded - Slippery */
     , (803335,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803335,  22, True ) /* Inscribable */
     , (803335,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803335,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803335,   1, 'ValHeel Introduction Guide') /* Name */
     , (803335,   7, 'A world undiscovered is an adventure to be.') /* Inscription */
     , (803335,   8, 'Unknown') /* ScribeName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803335,   1, 0x02000179) /* Setup */
     , (803335,   3, 0x20000014) /* SoundTable */
     , (803335,   8, 0x06002D1F) /* Icon */
     , (803335,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803335, 10, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803335, 0, 4294967295, '', 'prewritten', False, '

Welcome to ValHeel, traveller! There are many things to discover and enjoy here.

First, credit shall be given where credit is due.

*Content Creation*
Shemtar
Scyonara
Derpy McGavin

*Development*
Elorin the Cursed

*Special Thanks*
Riki Tiki Tavi
Kloud
Chunky
')
     , (803335, 1, 4294967295, '', 'prewritten', False, '

STARTING OUT

Please Visit our Discord: https://discord.gg/bYN7RQqNp9

Check Out our Wiki: https://valheel.fandom.com/wiki/Special:AllPages

There are a lot of things to consider when playing ValHeel for the first time, such as our custom mechanics. Be sure to go to the "Path of Burial Temple" in Holtburg. Make your way through and select your Class of Choice:

- Tank [+50% to defense; 25% chance to cast Bastion (multiplier of defense ratings)]
- DPS [+25% to defense, +25% to damage; 25% chance to cast AoE bleed effect (melee), cone shot (missile), or channeling (war magic)]
- Healer [+35% defense; Heal/Stamina Over Time effect when casting healing/revitalizing spells] 

')
     , (803335, 2, 4294967295, '', 'prewritten', False, '

If you have selected to play as a Hardcore player, please follow the long form leveling guide on the wiki, otherwise follow the short form.

You may skip to level 180 (non-hardcore). You may get level 1-7 spells for free. You may get level 180 starter gear from Pathwarden.

You start with most augmentations already, however, you may get the ones you need from the Stipend Vendor in Marketplace (stipends are unlimited).

You can purchase Omni Coalesced Aetheria to unlock all three Aetheria slots from the Stipend Vendor.

You can go to Asheron''s Castle (portal in Abandoned Mines upper; portal gems sold from Vispur van Bagman in Holtburg), speak to Nalicana, double click the scroll she gives you, then purchase Battle Lord Gregor''s Mnemosyne from Riki the Luminance Dealer. Hand the triangle back to Nalicana to unlock 300,000,000 capacity Luminance.

You may get level 8 spells from the Stipend Vendor for free as well.

You are able to purchase suits of armor for lower levels from the Jungle Sub (portal in Abandoned Mines Upper).

')
     , (803335, 3, 4294967295, '', 'prewritten', False, '

ValHeel has the following lootgen gear tiers:

- T1-8: End of Retail
- T9: Advanced Cantrip T8
- Empowered: New Vhorma gear (level 275+)
- Proto: Adventurer''s Haven gear (level 700+)
- Arramoran: Asheron''s Island gear (level 1,500+)

There are tons of Quality of Life updates that you will be able to find on the Wiki.

Thank you for visiting ValHeel and we hope you have a great time!

');
