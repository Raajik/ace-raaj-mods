DELETE FROM `weenie` WHERE `class_Id` = 802753;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802753, 'CloakOfIndependence', 2, '2023-07-04 12:42:31') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802753,   1,          4) /* ItemType - Clothing */
     , (802753,   4,     131072) /* ClothingPriority - 131072 */
     , (802753,   5,         75) /* EncumbranceVal */
     , (802753,   9,  134217728) /* ValidLocations - Cloak */
     , (802753,  16,          1) /* ItemUseable - No */
     , (802753,  18,         32) /* UiEffects - Magical */
     , (802753,  19,      10000) /* Value */
     , (802753,  28,          0) /* ArmorLevel */
     , (802753,  33,          1) /* Bonded - Bonded */
     , (802753,  36,       9999) /* ResistMagic */
     , (802753,  65,        101) /* Placement - Resting */
     , (802753,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802753, 105,          8) /* ItemWorkmanship */
     , (802753, 114,          1) /* Attuned - Attuned */
     , (802753, 131,          6) /* MaterialType - Silk */
     , (802753, 158,          7) /* WieldRequirements - Level */
     , (802753, 159,          1) /* WieldSkillType - Axe */
     , (802753, 160,          1) /* WieldDifficulty */
     , (802753, 265,         71) /* EquipmentSetId - Ninja */
     , (802753, 370,        162) /* Damage */
     , (802753, 371,        162) /* Damage Resist */
     , (802753, 374,        162) /* Critical Damage */
     , (802753, 375,        162) /* Critical Damage Resist */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802753,   1, False) /* Stuck */
     , (802753,  11, True ) /* IgnoreCollisions */
     , (802753,  13, True ) /* Ethereal */
     , (802753,  14, True ) /* GravityStatus */
     , (802753,  19, True ) /* Attackable */
     , (802753,  22, True ) /* Inscribable */
     , (802753, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802753,   1,       5) /* HeartbeatInterval */
     , (802753,   2,       0) /* HeartbeatTimestamp */
     , (802753,  13,       2) /* ArmorModVsSlash */
     , (802753,  14,       2) /* ArmorModVsPierce */
     , (802753,  15,       2) /* ArmorModVsBludgeon */
     , (802753,  16,       2) /* ArmorModVsCold */
     , (802753,  17,       2) /* ArmorModVsFire */
     , (802753,  18,       2) /* ArmorModVsAcid */
     , (802753,  19,       2) /* ArmorModVsElectric */
     , (802753, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802753,   1, 'Cloak of Independence') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802753,   1, 0x02001B2A) /* Setup */
     , (802753,   3, 0x20000014) /* SoundTable */
     , (802753,   7, 0x100007F6) /* ClothingBase */
     , (802753,   8, 0x060070A6) /* Icon */
     , (802753,  22, 0x3400002B) /* PhysicsEffectTable */
     , (802753,  52, 0x06003359) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802753, 25 /* Wield */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 234 /* AugmentationBonusXp */, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Your Cloak of Independence has increased your Experience Bonus by 10%!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802753, 26 /* UnWield */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 55 /* DecrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 234 /* AugmentationBonusXp */, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'Your Experience Bonus has been removed with the cloak.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

