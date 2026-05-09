DELETE FROM `weenie` WHERE `class_Id` = 800361;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800361, 'Tradewind''s Path Sleeves', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800361,   1,          2) /* ItemType - Armor */
     , (800361,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800361,   4,      12288) /* ClothingPriority - OuterwearUpperArms, OuterwearLowerArms */
     , (800361,   5,        930) /* EncumbranceVal */
     , (800361,   9,       6144) /* ValidLocations - UpperArmArmor, LowerArmArmor */
     , (800361,  16,          1) /* ItemUseable - No */
     , (800361,  19,          25) /* Value */
     , (800361,  27,         32) /* ArmorType - Metal */
     , (800361,  28,        1500) /* ArmorLevel */
     , (800361,  33,          1) /* Bonded - Bonded */
     , (800361,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800361, 106,        200) /* ItemSpellcraft */
     , (800361, 107,       1000) /* ItemCurMana */
     , (800361, 108,       1000) /* ItemMaxMana */
     , (800361, 109,        300) /* ItemDifficulty */
     , (800361, 114,          1) /* Attuned - Attuned */
     , (800361, 124,          3) /* Version */
     , (800361, 151,          2) /* HookType - Wall */
     , (800361, 158,          7) /* WieldRequirements - Level */
     , (800361, 159,          1) /* WieldSkillType - Axe */
     , (800361, 160,        300) /* WieldDifficulty */
     , (800361, 169,  118096132) /* TsysMutationData */
     , (800361, 265,         24) /* Defenders */
     , (800361, 374,          3) /* Crit Damage */
     , (800361, 379,          7) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800361,  22, True ) /* Inscribable */
     , (800361, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800361,   5,  -0.033) /* ManaRate */
     , (800361,  12,     0.5) /* Shade */
     , (800361,  13,       2) /* ArmorModVsSlash */
     , (800361,  14,       2) /* ArmorModVsPierce */
     , (800361,  15,       2) /* ArmorModVsBludgeon */
     , (800361,  16,       2) /* ArmorModVsCold */
     , (800361,  17,       2) /* ArmorModVsFire */
     , (800361,  18,       2) /* ArmorModVsAcid */
     , (800361,  19,       2) /* ArmorModVsElectric */
     , (800361, 110,     1.1) /* BulkMod */
     , (800361, 111,     1.5) /* SizeMod */
     , (800361, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800361,   1, 'Tradewind''s Path Sleeves') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800361,   1,   33554655) /* Setup */
     , (800361,   3,  536870932) /* SoundTable */
     , (800361,   6,   67108990) /* PaletteBase */
     , (800361,   7,  268437245) /* ClothingBase */
     , (800361,   8,  100674688) /* Icon */
     , (800361,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800361,  6079,      2)  /* Legendary Storm */
     , (800361,  6080,      2)  /* Legendary Acid */
     , (800361,  6081,      2)  /* Legendary Bludgeoning */
     , (800361,  6083,      2)  /* Legendary Cold */
     , (800361,  6082,      2)  /* Legendary Fire */
     , (800361,  6084,      2)  /* Legendary Pierce */
     , (800361,  6085,      2)  /* Legendary Slash */;
