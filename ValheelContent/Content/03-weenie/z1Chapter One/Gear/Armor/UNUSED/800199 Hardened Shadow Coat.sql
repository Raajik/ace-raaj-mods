DELETE FROM `weenie` WHERE `class_Id` = 800199;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800199, 'Hardened Shadow Coat', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800199,   1,          2) /* ItemType - Armor */
     , (800199,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800199,   4,      13312) /* ClothingPriority - OuterwearChest, OuterwearUpperArms, OuterwearLowerArms */
     , (800199,   5,       1200) /* EncumbranceVal */
     , (800199,   8,       1000) /* Mass */
     , (800199,   9,       6656) /* ValidLocations - ChestArmor, UpperArmArmor, LowerArmArmor */
     , (800199,  16,          1) /* ItemUseable - No */
     , (800199,  19,        75) /* Value */
     , (800199,  27,          8) /* ArmorType - Scalemail */
     , (800199,  28,       1000) /* ArmorLevel */
     , (800199,  33,          1) /* Bonded - Bonded */
     , (800199,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800199, 106,        200) /* ItemSpellcraft */
     , (800199, 107,       1000) /* ItemCurMana */
     , (800199, 108,       1000) /* ItemMaxMana */
     , (800199, 109,        300) /* ItemDifficulty */
     , (800199, 114,          1) /* Attuned - Attuned */
     , (800199, 158,          7) /* WieldRequirements - Level */
     , (800199, 159,          1) /* WieldSkillType - Axe */
     , (800199, 160,        250) /* WieldDifficulty */
     , (800199, 265,         16) /* Defenders */
     , (800199, 374,          3) /* Crit Damage */
     , (800199, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800199,  22, True ) /* Inscribable */
     , (800199, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800199,   5,  -0.033) /* ManaRate */
     , (800199,  12,    0.66) /* Shade */
     , (800199,  13,       2) /* ArmorModVsSlash */
     , (800199,  14,       2) /* ArmorModVsPierce */
     , (800199,  15,       2) /* ArmorModVsBludgeon */
     , (800199,  16,       2) /* ArmorModVsCold */
     , (800199,  17,       2) /* ArmorModVsFire */
     , (800199,  18,       2) /* ArmorModVsAcid */
     , (800199,  19,       2) /* ArmorModVsElectric */
     , (800199, 110,     1.1) /* BulkMod */
     , (800199, 111,     1.5) /* SizeMod */
     , (800199, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800199,   1, 'Hardened Shadow Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800199,   1,   33554854) /* Setup */
     , (800199,   3,  536870932) /* SoundTable */
     , (800199,   6,   67108990) /* PaletteBase */
     , (800199,   7,  268436856) /* ClothingBase */
     , (800199,   8,  100670435) /* Icon */
     , (800199,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800199,  6107,      2)  /* Legendary Strength */
     , (800199,  6104,      2)  /* Legendary Endurance */
     , (800199,  6106,      2)  /* Legendary Quickness */
     , (800199,  6095,      2)  /* Legendary Impenetrability */
	 , (800199,  6077,      2)  /* Legendary Health Gain */
	 , (800199,  6102,      2)  /* Legendary Armor */;

