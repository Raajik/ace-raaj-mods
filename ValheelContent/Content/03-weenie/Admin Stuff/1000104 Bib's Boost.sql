DELETE FROM `weenie` WHERE `class_Id` = 1000104;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000104, 'bibboostportalgem', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000104,   1,       2048) /* ItemType - Gem */
     , (1000104,   3,         14) /* PaletteTemplate - Red */
     , (1000104,   5,        300) /* EncumbranceVal */
     , (1000104,   8,        300) /* Mass */
     , (1000104,   9,          0) /* ValidLocations - None */
     , (1000104,  15,          0) /* StackUnitValue */
     , (1000104,  16,          8) /* ItemUseable - Contained */
     , (1000104,  18,         16) /* UiEffects - BoostStamina */
     , (1000104,  19,          0) /* Value */
     , (1000104,  33,          1) /* Bonded - Bonded */
     , (1000104,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (1000104,  94,         16) /* TargetType - Creature */
     , (1000104, 106,        700) /* ItemSpellcraft */
     , (1000104, 107,        666) /* ItemCurMana */
     , (1000104, 108,        666) /* ItemMaxMana */
     , (1000104, 114,          0) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000104,  15, True ) /* LightsStatus */
     , (1000104,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000104,  76,     0.5) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000104,   1, 'Bib''s Boost') /* Name */
     , (1000104,  14, 'This gem will take you to Bib''s Bunker.') /* Use */
     , (1000104,  16, 'DO NOT USE THIS GEM ON DOUBLE XP!') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000104,   1,   33561597) /* Setup */
     , (1000104,   3,  536870932) /* SoundTable */
     , (1000104,   6,        207) /* PaletteBase */
     , (1000104,   8,  100673955) /* Icon */
     , (1000104,  22,  872415275) /* PhysicsEffectTable */
     , (1000104,  28,        157) /* Spell - Summon Primary Portal I */
     , (1000104,  31,    1000105) /* LinkedPortalOne - Bib's Bunker */
     , (1000104,  36,  234881046) /* MutateFilter */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (1000104,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  22 /* StampQuest */, 0, 1, NULL, 'BibBoosted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
