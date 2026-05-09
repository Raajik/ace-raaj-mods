DELETE FROM `weenie` WHERE `class_Id` = 802758;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802758, 'CloakOfAsheronsWisdom', 2, '2023-07-04 12:42:31') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802758,   1,          4) /* ItemType - Clothing */
     , (802758,   4,     131072) /* ClothingPriority - 131072 */
     , (802758,   5,         75) /* EncumbranceVal */
     , (802758,   9,  134217728) /* ValidLocations - Cloak */
     , (802758,  16,          1) /* ItemUseable - No */
     , (802758,  18,          2) /* UiEffects - Magical */
     , (802758,  19,      10000) /* Value */
     , (802758,  28,          0) /* ArmorLevel */
     , (802758,  33,          1) /* Bonded - Bonded */
     , (802758,  36,       9999) /* ResistMagic */
     , (802758,  65,        101) /* Placement - Resting */
     , (802758,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802758, 105,          8) /* ItemWorkmanship */
     , (802758, 114,          1) /* Attuned - Attuned */
     , (802758, 131,          6) /* MaterialType - Silk */
     , (802758, 158,          7) /* WieldRequirements - Level */
     , (802758, 159,          1) /* WieldSkillType - Axe */
     , (802758, 160,          1) /* WieldDifficulty */
     , (802758, 265,         71) /* EquipmentSetId - Ninja */
     , (802758, 370,        162) /* Damage */
     , (802758, 371,        162) /* Damage Resist */
     , (802758, 374,        162) /* Critical Damage */
     , (802758, 375,        162) /* Critical Damage Resist */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802758,   1, False) /* Stuck */
     , (802758,  11, True ) /* IgnoreCollisions */
     , (802758,  13, True ) /* Ethereal */
     , (802758,  14, True ) /* GravityStatus */
     , (802758,  19, True ) /* Attackable */
     , (802758,  22, True ) /* Inscribable */
     , (802758, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802758,   1,       5) /* HeartbeatInterval */
     , (802758,   2,       0) /* HeartbeatTimestamp */
     , (802758,  13,       2) /* ArmorModVsSlash */
     , (802758,  14,       2) /* ArmorModVsPierce */
     , (802758,  15,       2) /* ArmorModVsBludgeon */
     , (802758,  16,       2) /* ArmorModVsCold */
     , (802758,  17,       2) /* ArmorModVsFire */
     , (802758,  18,       2) /* ArmorModVsAcid */
     , (802758,  19,       2) /* ArmorModVsElectric */
     , (802758, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802758,   1, 'Cloak of Asheron''s Wisdom') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802758,   1, 0x02001B2A) /* Setup */
     , (802758,   3, 0x20000014) /* SoundTable */
     , (802758,   7, 0x100007F6) /* ClothingBase */
     , (802758,   8, 0x060070A6) /* Icon */
     , (802758,  22, 0x3400002B) /* PhysicsEffectTable */
     , (802758,  52, 100676436) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802758, 25 /* Wield */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 234 /* AugmentationBonusXp */, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Your Cloak of Asheron''s Wisdom has increased your Experience Bonus by 50%!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802758, 26 /* UnWield */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 55 /* DecrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 234 /* AugmentationBonusXp */, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Your Experience Bonus has been removed with the cloak.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

