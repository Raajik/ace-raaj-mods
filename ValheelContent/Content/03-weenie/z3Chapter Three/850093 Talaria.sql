DELETE FROM `weenie` WHERE `class_Id` = 850093;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850093, 'ace850093-talaria', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850093,   1,          2) /* ItemType - Armor */
     , (850093,   3,         21) /* PaletteTemplate - Gold */
     , (850093,   4,      65536) /* ClothingPriority - Feet */
     , (850093,   5,        450) /* EncumbranceVal */
     , (850093,   9,        256) /* ValidLocations - FootWear */
     , (850093,  16,          1) /* ItemUseable - No */
     , (850093,  18,          1) /* UiEffects - Magical */
     , (850093,  19,       2000) /* Value */
     , (850093,  28,        500) /* ArmorLevel */
     , (850093,  33,          1) /* Bonded - Bonded */
     , (850093,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850093, 106,        400) /* ItemSpellcraft */
     , (850093, 107,       1200) /* ItemCurMana */
     , (850093, 108,       1200) /* ItemMaxMana */
     , (850093, 109,        120) /* ItemDifficulty */
     , (850093, 114,          1) /* Attuned - Attuned */
	 , (850093, 151,          2) /* HookType - Wall */
     , (850093, 158,          7) /* WieldRequirements - Level */
     , (850093, 160,        100) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850093,  22, False) /* Inscribable */
     , (850093,  23, True ) /* DestroyOnSell */
     , (850093,  69, False) /* IsSellable */
     , (850093,  99, False) /* Ivoryable */
	 , (850093, 100, True ) /* Dyeable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850093,   5,  -0.017) /* ManaRate */
     , (850093,  13,     1.4) /* ArmorModVsSlash */
     , (850093,  14,     1.4) /* ArmorModVsPierce */
     , (850093,  15,     1.4) /* ArmorModVsBludgeon */
     , (850093,  16,     1.4) /* ArmorModVsCold */
     , (850093,  17,     1.4) /* ArmorModVsFire */
     , (850093,  18,     1.4) /* ArmorModVsAcid */
     , (850093,  19,     1.4) /* ArmorModVsElectric */
     , (850093, 165,     1.4) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850093,   1, 'Talaria') /* Name */
	 , (850093,  16, 'Magical Sollerets of Mercury') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850093,   1, 0x020000DE) /* Setup */
     , (850093,   3, 0x20000014) /* SoundTable */
     , (850093,   7, 0x10000692) /* ClothingBase */
     , (850093,   8, 0x06003656) /* Icon */
     , (850093,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850093,  4557,      2)  /* Incantation of Impregnability Other */
     , (850093,  4745,      2)  /* Master Rover's Quickness */
	 , (850093,  4835,      2)  /* Master Leaper's Jumping */
	 , (850093,  4875,      2)  /* Master Messenger's Sprint */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850093, 10 /* PickUp */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  22 /* StampQuest */, 0, 1, NULL, 'freddiesshoes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);