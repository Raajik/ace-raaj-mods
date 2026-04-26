DELETE FROM `weenie` WHERE `class_Id` = 800362;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800362, 'Tradewind''s Path Leggings', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800362,   1,          2) /* ItemType - Armor */
     , (800362,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800362,   4,       2816) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearAbdomen */
     , (800362,   5,       2634) /* EncumbranceVal */
     , (800362,   9,      25600) /* ValidLocations - AbdomenArmor, UpperLegArmor, LowerLegArmor */
     , (800362,  16,          1) /* ItemUseable - No */
     , (800362,  19,          25) /* Value */
     , (800362,  27,          32) /* ArmorType - Scalemail */
     , (800362,  28,        1500) /* ArmorLevel */
     , (800362,  33,          1) /* Bonded - Bonded */
     , (800362,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800362, 106,        200) /* ItemSpellcraft */
     , (800362, 107,       1000) /* ItemCurMana */
     , (800362, 108,       1000) /* ItemMaxMana */
     , (800362, 109,        300) /* ItemDifficulty */
     , (800362, 114,          1) /* Attuned - Attuned */
     , (800362, 124,          3) /* Version */
     , (800362, 151,          2) /* HookType - Wall */
     , (800362, 158,          7) /* WieldRequirements - Level */
     , (800362, 159,          1) /* WieldSkillType - Axe */
     , (800362, 160,        300) /* WieldDifficulty */
     , (800362, 169,  252313860) /* TsysMutationData */
     , (800362, 265,         24) /* Defenders */
     , (800362, 374,          3) /* Crit Damage */
     , (800362, 379,          7) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800362,  22, True ) /* Inscribable */
     , (800362, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800362,   5,  -0.033) /* ManaRate */
     , (800362,  12,     0.5) /* Shade */
     , (800362,  13,       2) /* ArmorModVsSlash */
     , (800362,  14,       2) /* ArmorModVsPierce */
     , (800362,  15,       2) /* ArmorModVsBludgeon */
     , (800362,  16,       2) /* ArmorModVsCold */
     , (800362,  17,       2) /* ArmorModVsFire */
     , (800362,  18,       2) /* ArmorModVsAcid */
     , (800362,  19,       2) /* ArmorModVsElectric */
     , (800362, 110,     1.1) /* BulkMod */
     , (800362, 111,     1.5) /* SizeMod */
     , (800362, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800362,   1, 'Tradewind''s Path Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800362,   1,   33554856) /* Setup */
     , (800362,   3,  536870932) /* SoundTable */
     , (800362,   6,   67108990) /* PaletteBase */
     , (800362,   7,  268437291) /* ClothingBase */
     , (800362,   8,  100690101) /* Icon */
     , (800362,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800362,  6103,      2)  /* Legendary Coordination */
     , (800362,  6105,      2)  /* Legendary Focus */
     , (800362,  6101,      2)  /* Legendary Willpower */
     , (800362,  6076,      2)  /* Legendary Stamina Gain */
	 , (800362,  6078,      2)  /* Legendary Mana Gain */
	 , (800362,  6102,      2)  /* Legendary Armor */;
