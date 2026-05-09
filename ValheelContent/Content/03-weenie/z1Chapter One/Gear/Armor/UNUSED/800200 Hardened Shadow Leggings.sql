DELETE FROM `weenie` WHERE `class_Id` = 800200;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800200, 'Hardened Shadow Leggings', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800200,   1,          2) /* ItemType - Armor */
     , (800200,   3,         93) /* PaletteTemplate - Purple */
     , (800200,   4,       2816) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearAbdomen */
     , (800200,   5,       1200) /* EncumbranceVal */
     , (800200,   8,       1275) /* Mass */
     , (800200,   9,      25600) /* ValidLocations - AbdomenArmor, UpperLegArmor, LowerLegArmor */
     , (800200,  16,          1) /* ItemUseable - No */
     , (800200,  19,        75) /* Value */
     , (800200,  27,          8) /* ArmorType - Scalemail */
     , (800200,  28,       1000) /* ArmorLevel */
     , (800200,  33,          1) /* Bonded - Bonded */
     , (800200,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800200, 106,        200) /* ItemSpellcraft */
     , (800200, 107,       1000) /* ItemCurMana */
     , (800200, 108,       1000) /* ItemMaxMana */
     , (800200, 109,        300) /* ItemDifficulty */
     , (800200, 114,          1) /* Attuned - Attuned */
     , (800200, 158,          7) /* WieldRequirements - Level */
     , (800200, 159,          1) /* WieldSkillType - Axe */
     , (800200, 160,        250) /* WieldDifficulty */
     , (800200, 265,         16) /* Defenders */
     , (800200, 374,          3) /* Crit Damage */
     , (800200, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800200,  22, True ) /* Inscribable */
     , (800200, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800200,   5,  -0.033) /* ManaRate */
     , (800200,  12,     0.5) /* Shade */
     , (800200,  13,       2) /* ArmorModVsSlash */
     , (800200,  14,       2) /* ArmorModVsPierce */
     , (800200,  15,       2) /* ArmorModVsBludgeon */
     , (800200,  16,       2) /* ArmorModVsCold */
     , (800200,  17,       2) /* ArmorModVsFire */
     , (800200,  18,       2) /* ArmorModVsAcid */
     , (800200,  19,       2) /* ArmorModVsElectric */
     , (800200, 110,     1.1) /* BulkMod */
     , (800200, 111,     1.5) /* SizeMod */
     , (800200, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800200,   1, 'Hardened Shadow Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800200,   1,   33554856) /* Setup */
     , (800200,   3,  536870932) /* SoundTable */
     , (800200,   6,   67108990) /* PaletteBase */
     , (800200,   7,  268436857) /* ClothingBase */
     , (800200,   8,  100670443) /* Icon */
     , (800200,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800200,  6103,      2)  /* Legendary Coordination */
     , (800200,  6105,      2)  /* Legendary Focus */
     , (800200,  6101,      2)  /* Legendary Willpower */
     , (800200,  6076,      2)  /* Legendary Stamina Gain */
	 , (800200,  6078,      2)  /* Legendary Mana Gain */
	 , (800200,  6102,      2)  /* Legendary Armor */;
