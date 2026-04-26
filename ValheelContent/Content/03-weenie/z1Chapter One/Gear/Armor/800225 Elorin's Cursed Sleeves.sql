DELETE FROM `weenie` WHERE `class_Id` = 800225;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800225, 'Elorin''s Cursed Sleeves', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800225,   1,          2) /* ItemType - Armor */
     , (800225,   3,         93) /* PaletteTemplate - Silver */
     , (800225,   4,      12288) /* ClothingPriority - OuterwearUpperArms, OuterwearLowerArms */
     , (800225,   5,       1000) /* EncumbranceVal */
     , (800225,   8,        700) /* Mass */
     , (800225,   9,       6144) /* ValidLocations - UpperArmArmor, LowerArmArmor */
     , (800225,  16,          1) /* ItemUseable - No */
     , (800225,  19,         10) /* Value */
     , (800225,  27,         32) /* ArmorType - Metal */
     , (800225,  28,       800) /* ArmorLevel */
     , (800225,  33,          1) /* Bonded - Bonded */
     , (800225,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800225, 106,        200) /* ItemSpellcraft */
     , (800225, 107,       1000) /* ItemCurMana */
     , (800225, 108,       1000) /* ItemMaxMana */
     , (800225, 114,          1) /* Attuned - Attuned */
     , (800225, 124,          3) /* Version */
     , (800225, 158,          7) /* WieldRequirements - Level */
     , (800225, 159,          1) /* WieldSkillType - Axe */
     , (800225, 160,        200) /* WieldDifficulty */
     , (800225, 169,  118096132) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800225,  22, True ) /* Inscribable */
     , (800225, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800225,  12,    0.66) /* Shade */
     , (800225,  13,     2) /* ArmorModVsSlash */
     , (800225,  14,       2) /* ArmorModVsPierce */
     , (800225,  15,       2) /* ArmorModVsBludgeon */
     , (800225,  16,     2) /* ArmorModVsCold */
     , (800225,  17,     2) /* ArmorModVsFire */
     , (800225,  18,     2) /* ArmorModVsAcid */
     , (800225,  19,     2) /* ArmorModVsElectric */
     , (800225, 110,     0.9) /* BulkMod */
     , (800225, 111,     1.2) /* SizeMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800225,   1, 'Elorin''s Cursed Sleeves') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800225,   1,   33554655) /* Setup */
     , (800225,   3,  536870932) /* SoundTable */
     , (800225,   6,   67108990) /* PaletteBase */
     , (800225,   7,  268435847) /* ClothingBase */
     , (800225,   8,  100670427) /* Icon */
     , (800225,  22,  872415275) /* PhysicsEffectTable */
     , (800225,  36,  234881042) /* MutateFilter */
     , (800225,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800225,  6075,      2)  /* Legendary War Magic */
     , (800225,  6046,      2)  /* Legendary Creature Magic */
     , (800225,  6056,      2)  /* Legendary Item Magic */
     , (800225,  6060,      2)  /* Legendary Life Magic */
	 , (800225,  6074,      2)  /* Legendary Void Magic */
	 , (800225,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800225,  6102,      2)  /* Legendary Armor */;