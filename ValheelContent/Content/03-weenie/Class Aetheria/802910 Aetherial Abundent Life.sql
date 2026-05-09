DELETE FROM `weenie` WHERE `class_Id` = 802910;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802910, 'Aetherial Abundent Life', 38, '2023-09-07 12:18:05') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802910,   1,       2048) /* ItemType - Gem */
     , (802910,   3,          2) /* PaletteTemplate - Blue */
     , (802910,   5,         50) /* EncumbranceVal */
     , (802910,   9, 1073741824) /* ValidLocations - SigilLocRed */
     , (802910,  11,          1) /* MaxStackSize */
     , (802910,  12,          1) /* StackSize */
     , (802910,  13,         50) /* StackUnitEncumbrance */
     , (802910,  15,      12000) /* StackUnitValue */
     , (802910,  16,          1) /* ItemUseable - No */
     , (802910,  18,          0) /* UiEffects - Magical */
     , (802910,  19,      12000) /* Value */
     , (802910,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802910, 106,        999) /* ItemSpellcraft */
     , (802910, 107,      50000) /* ItemCurMana */
     , (802910, 108,      50000) /* ItemMaxMana */
     , (802910, 158,          7) /* WieldRequirements - Level */
     , (802910, 159,          1) /* WieldSkillType - Axe */
     , (802910, 160,          1) /* WieldDifficulty */
     , (802910, 267,         15) /* Lifespan */
     , (802910, 379,       3000) /* MaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802910,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802910,   5,  -0.001) /* ManaRate */
     , (802910,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802910,   1, 'Aetherial Abundant Life') /* Name */
     , (802910,  16, 'Equip this to activate the ability Abundent Life.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802910,   1, 0x02000722) /* Setup */
     , (802910,   3, 0x20000014) /* SoundTable */
     , (802910,   6, 0x04000BEF) /* PaletteBase */
     , (802910,   7, 0x1000077C) /* ClothingBase */
     , (802910,   8, 0x00006C0A) /* Icon */
     , (802910,  50, 0x06007180) /* IconOverlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802910,  3371,      0) /* Greater Life Giver */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802910, 25 /* Wield */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have activated Abundant Life!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802910, 26 /* UnWield */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'Your Abundant Life has faded.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

