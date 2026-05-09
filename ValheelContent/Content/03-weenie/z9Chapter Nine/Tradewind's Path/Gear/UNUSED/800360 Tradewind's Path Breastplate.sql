DELETE FROM `weenie` WHERE `class_Id` = 800360;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800360, 'Tradewind''s Path Breastplate', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800360,   1,          2) /* ItemType - Armor */
     , (800360,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800360,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (800360,   5,       1681) /* EncumbranceVal */
     , (800360,   9,        512) /* ValidLocations - ChestArmor */
     , (800360,  16,          1) /* ItemUseable - No */
     , (800360,  19,          25) /* Value */
     , (800360,  27,         32) /* ArmorType - Metal */
     , (800360,  33,          1) /* Bonded - Bonded */
     , (800360,  28,        1500) /* ArmorLevel */
     , (800360,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800360, 106,        200) /* ItemSpellcraft */
     , (800360, 107,       1000) /* ItemCurMana */
     , (800360, 108,       1000) /* ItemMaxMana */
     , (800360, 109,        300) /* ItemDifficulty */
     , (800360, 114,          1) /* Attuned - Attuned */
     , (800360, 124,          3) /* Version */
     , (800360, 151,          2) /* HookType - Wall */
     , (800360, 158,          7) /* WieldRequirements - Level */
     , (800360, 159,          1) /* WieldSkillType - Axe */
     , (800360, 160,        300) /* WieldDifficulty */
     , (800360, 169,  118097668) /* TsysMutationData */
     , (800360, 265,         24) /* Defenders */
     , (800360, 374,          3) /* Crit Damage */
     , (800360, 379,          7) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800360,  22, True ) /* Inscribable */
     , (800360, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800360,   5,  -0.033) /* ManaRate */
     , (800360,  12,     0.5) /* Shade */
     , (800360,  13,       2) /* ArmorModVsSlash */
     , (800360,  14,       2) /* ArmorModVsPierce */
     , (800360,  15,       2) /* ArmorModVsBludgeon */
     , (800360,  16,       2) /* ArmorModVsCold */
     , (800360,  17,       2) /* ArmorModVsFire */
     , (800360,  18,       2) /* ArmorModVsAcid */
     , (800360,  19,       2) /* ArmorModVsElectric */
     , (800360, 110,     1.1) /* BulkMod */
     , (800360, 111,     1.5) /* SizeMod */
     , (800360, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800360,   1, 'Tradewind''s Path Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800360,   1,   33554642) /* Setup */
     , (800360,   3,  536870932) /* SoundTable */
     , (800360,   6,   67108990) /* PaletteBase */
     , (800360,   7,  268437240) /* ClothingBase */
     , (800360,   8,  100674635) /* Icon */
     , (800360,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800360,  6107,      2)  /* Legendary Strength */
     , (800360,  6104,      2)  /* Legendary Endurance */
     , (800360,  6106,      2)  /* Legendary Quickness */
     , (800360,  6095,      2)  /* Legendary Impenetrability */
	 , (800360,  6077,      2)  /* Legendary Health Gain */
	 , (800360,  6102,      2)  /* Legendary Armor */;
