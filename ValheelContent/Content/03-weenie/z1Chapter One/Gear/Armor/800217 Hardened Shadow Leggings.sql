DELETE FROM `weenie` WHERE `class_Id` = 800217;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800217, 'Hardened Shadow Leggings1', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800217,   1,          2) /* ItemType - Armor */
     , (800217,   3,         93) /* PaletteTemplate - Purple */
     , (800217,   4,       2816) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearAbdomen */
     , (800217,   5,       1200) /* EncumbranceVal */
     , (800217,   8,       1275) /* Mass */
     , (800217,   9,      25600) /* ValidLocations - AbdomenArmor, UpperLegArmor, LowerLegArmor */
     , (800217,  16,          1) /* ItemUseable - No */
     , (800217,  19,         15) /* Value */
     , (800217,  27,          8) /* ArmorType - Scalemail */
     , (800217,  28,        850) /* ArmorLevel */
     , (800217,  33,          1) /* Bonded - Bonded */
     , (800217,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800217, 106,        200) /* ItemSpellcraft */
     , (800217, 107,       1000) /* ItemCurMana */
     , (800217, 108,       1000) /* ItemMaxMana */
     , (800217, 109,        300) /* ItemDifficulty */
     , (800217, 114,          1) /* Attuned - Attuned */
     , (800217, 158,          7) /* WieldRequirements - Level */
     , (800217, 159,          1) /* WieldSkillType - Axe */
     , (800217, 160,        250) /* WieldDifficulty */
     , (800217, 265,         16) /* Defenders */
     , (800217, 374,          3) /* Crit Damage */
     , (800217, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800217,  22, True ) /* Inscribable */
     , (800217, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800217,   5,  -0.033) /* ManaRate */
     , (800217,  12,     0.5) /* Shade */
     , (800217,  13,       2) /* ArmorModVsSlash */
     , (800217,  14,       2) /* ArmorModVsPierce */
     , (800217,  15,       2) /* ArmorModVsBludgeon */
     , (800217,  16,       2) /* ArmorModVsCold */
     , (800217,  17,       2) /* ArmorModVsFire */
     , (800217,  18,       2) /* ArmorModVsAcid */
     , (800217,  19,       2) /* ArmorModVsElectric */
     , (800217, 110,     1.1) /* BulkMod */
     , (800217, 111,     1.5) /* SizeMod */
     , (800217, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800217,   1, 'Hardened Shadow Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800217,   1,   33554856) /* Setup */
     , (800217,   3,  536870932) /* SoundTable */
     , (800217,   6,   67108990) /* PaletteBase */
     , (800217,   7,  268436857) /* ClothingBase */
     , (800217,   8,  100670443) /* Icon */
     , (800217,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800217,  6103,      2)  /* Legendary Coordination */
     , (800217,  6105,      2)  /* Legendary Focus */
     , (800217,  6101,      2)  /* Legendary Willpower */
     , (800217,  6076,      2)  /* Legendary Stamina Gain */
	 , (800217,  6078,      2)  /* Legendary Mana Gain */
	 , (800217,  6102,      2)  /* Legendary Armor */;
