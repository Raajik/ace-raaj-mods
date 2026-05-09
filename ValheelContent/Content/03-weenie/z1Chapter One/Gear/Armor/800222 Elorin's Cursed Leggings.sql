DELETE FROM `weenie` WHERE `class_Id` = 800222;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800222, 'Elorin''s Cursed Leggings', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800222,   1,          2) /* ItemType - Armor */
     , (800222,   3,         93) /* PaletteTemplate - Silver */
     , (800222,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800222,   5,       1000) /* EncumbranceVal */
     , (800222,   8,       1200) /* Mass */
     , (800222,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800222,  16,          1) /* ItemUseable - No */
     , (800222,  19,         10) /* Value */
     , (800222,  27,         32) /* ArmorType - Metal */
     , (800222,  28,        800) /* ArmorLevel */
     , (800222,  33,          1) /* Bonded - Bonded */
     , (800222,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800222, 106,        200) /* ItemSpellcraft */
     , (800222, 107,       1000) /* ItemCurMana */
     , (800222, 108,       1000) /* ItemMaxMana */
     , (800222, 114,          1) /* Attuned - Attuned */
     , (800222, 124,          3) /* Version */
     , (800222, 158,          7) /* WieldRequirements - Level */
     , (800222, 159,          1) /* WieldSkillType - Axe */
     , (800222, 160,        200) /* WieldDifficulty */
     , (800222, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800222,  22, True ) /* Inscribable */
     , (800222, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800222,  12,    0.66) /* Shade */
     , (800222,  13,     2) /* ArmorModVsSlash */
     , (800222,  14,       2) /* ArmorModVsPierce */
     , (800222,  15,       2) /* ArmorModVsBludgeon */
     , (800222,  16,     2) /* ArmorModVsCold */
     , (800222,  17,     2) /* ArmorModVsFire */
     , (800222,  18,     2) /* ArmorModVsAcid */
     , (800222,  19,     2) /* ArmorModVsElectric */
     , (800222, 110,     1) /* BulkMod */
     , (800222, 111,     1) /* SizeMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800222,   1, 'Elorin''s Cursed Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800222,   1,   33554856) /* Setup */
     , (800222,   3,  536870932) /* SoundTable */
     , (800222,   6,   67108990) /* PaletteBase */
     , (800222,   7,  268435844) /* ClothingBase */
     , (800222,   8,  100670419) /* Icon */
     , (800222,  22,  872415275) /* PhysicsEffectTable */
     , (800222,  36,  234881042) /* MutateFilter */
     , (800222,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800222,  6103,      2)  /* Legendary Coordination */
     , (800222,  6105,      2)  /* Legendary Focus */
     , (800222,  6101,      2)  /* Legendary Willpower */
     , (800222,  6076,      2)  /* Legendary Stamina Gain */
	 , (800222,  6078,      2)  /* Legendary Mana Gain */
	 , (800222,  6102,      2)  /* Legendary Armor */;
