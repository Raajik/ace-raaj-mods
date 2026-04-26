DELETE FROM `weenie` WHERE `class_Id` = 800461;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800461, 'Uber Leggins of the Red Dot', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800461,   1,          2) /* ItemType - Armor */
     , (800461,   3,         85) /* PaletteTemplate - DyeSpringBlack */
     , (800461,   4,       2816) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearAbdomen */
     , (800461,   5,       2634) /* EncumbranceVal */
     , (800461,   9,      25600) /* ValidLocations - AbdomenArmor, UpperLegArmor, LowerLegArmor */
     , (800461,  16,          1) /* ItemUseable - No */
     , (800461,  27,          32) /* ArmorType - Scalemail */
     , (800461,  28,        1500) /* ArmorLevel */
     , (800461,  33,          1) /* Bonded - Bonded */
     , (800461,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800461, 106,        200) /* ItemSpellcraft */
     , (800461, 107,       1000) /* ItemCurMana */
     , (800461, 108,       1000) /* ItemMaxMana */
     , (800461, 109,        300) /* ItemDifficulty */
     , (800461, 114,          1) /* Attuned - Attuned */
     , (800461, 124,          3) /* Version */
     , (800461, 151,          2) /* HookType - Wall */
     , (800461, 158,          7) /* WieldRequirements - Level */
     , (800461, 159,          1) /* WieldSkillType - Axe */
     , (800461, 160,        300) /* WieldDifficulty */
     , (800461, 265,         24) /* Defenders */
     , (800461, 384,          3) /* PK Resist */
     , (800461, 379,          7) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800461,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800461,   5,  -0.033) /* ManaRate */
     , (800461,  12,     0.5) /* Shade */
     , (800461,  13,       2) /* ArmorModVsSlash */
     , (800461,  14,       2) /* ArmorModVsPierce */
     , (800461,  15,       2) /* ArmorModVsBludgeon */
     , (800461,  16,       2) /* ArmorModVsCold */
     , (800461,  17,       2) /* ArmorModVsFire */
     , (800461,  18,       2) /* ArmorModVsAcid */
     , (800461,  19,       2) /* ArmorModVsElectric */
     , (800461, 110,     1.1) /* BulkMod */
     , (800461, 111,     1.5) /* SizeMod */
     , (800461, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800461,   1, 'Uber Leggins of the Red Dot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800461,   1,   33554856) /* Setup */
     , (800461,   3,  536870932) /* SoundTable */
     , (800461,   6,   67108990) /* PaletteBase */
     , (800461,   7,  268437013) /* ClothingBase */
     , (800461,   8,  100687759) /* Icon */
     , (800461,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800461,  6103,      2)  /* Legendary Coordination */
     , (800461,  6105,      2)  /* Legendary Focus */
     , (800461,  6101,      2)  /* Legendary Willpower */
     , (800461,  6076,      2)  /* Legendary Stamina Gain */
	 , (800461,  6078,      2)  /* Legendary Mana Gain */
	 , (800461,  6102,      2)  /* Legendary Armor */;
