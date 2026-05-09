DELETE FROM `weenie` WHERE `class_Id` = 800213;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800213, 'Hardened Shadow Coat1', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800213,   1,          2) /* ItemType - Armor */
     , (800213,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800213,   4,      13312) /* ClothingPriority - OuterwearChest, OuterwearUpperArms, OuterwearLowerArms */
     , (800213,   5,       1200) /* EncumbranceVal */
     , (800213,   8,       1000) /* Mass */
     , (800213,   9,       6656) /* ValidLocations - ChestArmor, UpperArmArmor, LowerArmArmor */
     , (800213,  16,          1) /* ItemUseable - No */
     , (800213,  19,         15) /* Value */
     , (800213,  27,          8) /* ArmorType - Scalemail */
     , (800213,  28,        850) /* ArmorLevel */
     , (800213,  33,          1) /* Bonded - Bonded */
     , (800213,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800213, 106,        200) /* ItemSpellcraft */
     , (800213, 107,       1000) /* ItemCurMana */
     , (800213, 108,       1000) /* ItemMaxMana */
     , (800213, 109,        300) /* ItemDifficulty */
     , (800213, 114,          1) /* Attuned - Attuned */
     , (800213, 158,          7) /* WieldRequirements - Level */
     , (800213, 159,          1) /* WieldSkillType - Axe */
     , (800213, 160,        250) /* WieldDifficulty */
     , (800213, 265,         16) /* Defenders */
     , (800213, 374,          3) /* Crit Damage */
     , (800213, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800213,  22, True ) /* Inscribable */
     , (800213, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800213,   5,  -0.033) /* ManaRate */
     , (800213,  12,    0.66) /* Shade */
     , (800213,  13,       2) /* ArmorModVsSlash */
     , (800213,  14,       2) /* ArmorModVsPierce */
     , (800213,  15,       2) /* ArmorModVsBludgeon */
     , (800213,  16,       2) /* ArmorModVsCold */
     , (800213,  17,       2) /* ArmorModVsFire */
     , (800213,  18,       2) /* ArmorModVsAcid */
     , (800213,  19,       2) /* ArmorModVsElectric */
     , (800213, 110,     1.1) /* BulkMod */
     , (800213, 111,     1.5) /* SizeMod */
     , (800213, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800213,   1, 'Hardened Shadow Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800213,   1,   33554854) /* Setup */
     , (800213,   3,  536870932) /* SoundTable */
     , (800213,   6,   67108990) /* PaletteBase */
     , (800213,   7,  268436856) /* ClothingBase */
     , (800213,   8,  100670435) /* Icon */
     , (800213,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800213,  6107,      2)  /* Legendary Strength */
     , (800213,  6104,      2)  /* Legendary Endurance */
     , (800213,  6106,      2)  /* Legendary Quickness */
     , (800213,  6095,      2)  /* Legendary Impenetrability */
	 , (800213,  6077,      2)  /* Legendary Health Gain */
	 , (800213,  6102,      2)  /* Legendary Armor */;

