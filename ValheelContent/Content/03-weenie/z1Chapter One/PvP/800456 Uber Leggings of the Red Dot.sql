DELETE FROM `weenie` WHERE `class_Id` = 800456;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800456, 'uberlegsreddot', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800456,   1,          2) /* ItemType - Armor */
     , (800456,   3,         14) /* PaletteTemplate - DyeSpringBlack */
     , (800456,   4,       2816) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearAbdomen */
     , (800456,   5,       2634) /* EncumbranceVal */
     , (800456,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800456,  16,          1) /* ItemUseable - No */
     , (800456,  18,          1) /* UiEffects - Magical */
     , (800456,  27,          32) /* ArmorType - Scalemail */
     , (800456,  28,        1500) /* ArmorLevel */
     , (800456,  33,          1) /* Bonded - Bonded */
     , (800456,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800456, 106,        200) /* ItemSpellcraft */
     , (800456, 107,       1000) /* ItemCurMana */
     , (800456, 108,       1000) /* ItemMaxMana */
     , (800456, 109,        300) /* ItemDifficulty */
     , (800456, 114,          1) /* Attuned - Attuned */
     , (800456, 124,          3) /* Version */
     , (800456, 151,          2) /* HookType - Wall */
     , (800456, 158,          7) /* WieldRequirements - Level */
     , (800456, 159,          1) /* WieldSkillType - Axe */
     , (800456, 160,        300) /* WieldDifficulty */
     , (800456, 169,  252313860) /* TsysMutationData */
     , (800456, 265,         24) /* Defenders */
     , (800456, 384,          3) /* PK Resist */
     , (800456, 379,          7) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800456,  22, True ) /* Inscribable */
     , (800456, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800456,   5,  -0.033) /* ManaRate */
     , (800456,  12,     0.5) /* Shade */
     , (800456,  13,       2) /* ArmorModVsSlash */
     , (800456,  14,       2) /* ArmorModVsPierce */
     , (800456,  15,       2) /* ArmorModVsBludgeon */
     , (800456,  16,       2) /* ArmorModVsCold */
     , (800456,  17,       2) /* ArmorModVsFire */
     , (800456,  18,       2) /* ArmorModVsAcid */
     , (800456,  19,       2) /* ArmorModVsElectric */
     , (800456, 110,     1.1) /* BulkMod */
     , (800456, 111,     1.5) /* SizeMod */
     , (800456, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800456,   1, 'Uber Leggings of the Red Dot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800456,   1,   33554856) /* Setup */
     , (800456,   3,  536870932) /* SoundTable */
     , (800456,   6,   67108990) /* PaletteBase */
     , (800456,   7,  268436559) /* ClothingBase */
     , (800456,   8,  100674119) /* Icon */
     , (800456,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800456,  6103,      2)  /* Legendary Coordination */
     , (800456,  6105,      2)  /* Legendary Focus */
     , (800456,  6101,      2)  /* Legendary Willpower */
     , (800456,  6076,      2)  /* Legendary Stamina Gain */
	 , (800456,  6078,      2)  /* Legendary Mana Gain */
	 , (800456,  6102,      2)  /* Legendary Armor */;;
