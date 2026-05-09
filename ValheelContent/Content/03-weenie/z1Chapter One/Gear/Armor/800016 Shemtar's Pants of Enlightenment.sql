DELETE FROM `weenie` WHERE `class_Id` = 800016;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800016, 'ace800016-shemleggs', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800016,   1,          2) /* ItemType - Armor */
     , (800016,   3,         39) /* PaletteTemplate - Black */
     , (800016,   4,       2816) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearAbdomen */
     , (800016,   5,       2288) /* EncumbranceVal */
     , (800016,   9,      25600) /* ValidLocations - AbdomenArmor, UpperLegArmor, LowerLegArmor */
     , (800016,  16,          1) /* ItemUseable - No */
     , (800016,  18,          1) /* UiEffects - Magical */
     , (800016,  19,          10) /* Value */
     , (800016,  28,        800) /* ArmorLevel */
     , (800016,  33,          1) /* Bonded - Bonded */
     , (800016,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800016, 106,        310) /* ItemSpellcraft */
     , (800016, 107,       2400) /* ItemCurMana */
     , (800016, 108,       2400) /* ItemMaxMana */
     , (800016, 114,          1) /* Attuned - Attuned */
     , (800016, 115,        220) /* ItemSkillLevelLimit */
     , (800016, 158,          7) /* WieldRequirements - Level */
     , (800016, 159,          1) /* WieldSkillType - Axe */
     , (800016, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800016,  11, True ) /* IgnoreCollisions */
     , (800016,  13, True ) /* Ethereal */
     , (800016,  14, True ) /* GravityStatus */
     , (800016,  19, True ) /* Attackable */
     , (800016,  22, True ) /* Inscribable */
     , (800016,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800016,   5,  -0.083) /* ManaRate */
     , (800016,  13,     2) /* ArmorModVsSlash */
     , (800016,  14,     2) /* ArmorModVsPierce */
     , (800016,  15,     2) /* ArmorModVsBludgeon */
     , (800016,  16,       2) /* ArmorModVsCold */
     , (800016,  17,       2) /* ArmorModVsFire */
     , (800016,  18,       2) /* ArmorModVsAcid */
     , (800016,  19,       2) /* ArmorModVsElectric */
     , (800016, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800016,   1, 'Shemtar''s Leggings of Enlightenment') /* Name */
     , (800016,  16, 'Pretty badass pants.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800016,   1, 0x020001A8) /* Setup */
     , (800016,   3, 0x20000014) /* SoundTable */
     , (800016,   7, 0x1000066E) /* ClothingBase */
     , (800016,   8, 0x060062E8) /* Icon */
     , (800016,  22, 0x3400002B) /* PhysicsEffectTable */
     , (800016,  37,          6) /* ItemSkillLimit - MeleeDefense */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800016,  6103,      2)  /* Legendary Coordination */
     , (800016,  6105,      2)  /* Legendary Focus */
     , (800016,  6101,      2)  /* Legendary Willpower */
     , (800016,  6076,      2)  /* Legendary Stamina Gain */
	 , (800016,  6078,      2)  /* Legendary Mana Gain */
	 , (800016,  6102,      2)  /* Legendary Armor */;
