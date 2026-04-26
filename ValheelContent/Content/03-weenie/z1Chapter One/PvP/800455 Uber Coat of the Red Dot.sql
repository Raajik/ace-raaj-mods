DELETE FROM `weenie` WHERE `class_Id` = 800455;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800455, 'reddotcoat', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800455,   1,          2) /* ItemType - Armor */
     , (800455,   3,         14) /* PaletteTemplate - DyeSpringBlack */
     , (800455,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (800455,   5,       1681) /* EncumbranceVal */
     , (800455,   9,        512) /* ValidLocations - ChestArmor */
     , (800455,  16,          1) /* ItemUseable - No */
     , (800455,  18,          1) /* UiEffects - Magical */
     , (800455,  27,         32) /* ArmorType - Metal */
     , (800455,  33,          1) /* Bonded - Bonded */
     , (800455,  28,        1500) /* ArmorLevel */
     , (800455,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800455, 106,        200) /* ItemSpellcraft */
     , (800455, 107,       1000) /* ItemCurMana */
     , (800455, 108,       1000) /* ItemMaxMana */
     , (800455, 109,        300) /* ItemDifficulty */
     , (800455, 114,          1) /* Attuned - Attuned */
     , (800455, 124,          3) /* Version */
     , (800455, 151,          2) /* HookType - Wall */
     , (800455, 158,          7) /* WieldRequirements - Level */
     , (800455, 159,          1) /* WieldSkillType - Axe */
     , (800455, 160,        300) /* WieldDifficulty */
     , (800455, 169,  118097668) /* TsysMutationData */
     , (800455, 265,         24) /* Defenders */
     , (800455, 374,          3) /* Crit Damage */
     , (800455, 379,          7) /* Health Boost */
     , (800455, 383,          3) /* GearPKDamageRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800455,  22, True ) /* Inscribable */
     , (800455,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800455,   5,    -0.5) /* ManaRate */
     , (800455,  12,     0.5) /* Shade */
     , (800455,  13,    2) /* ArmorModVsSlash */
     , (800455,  14,    2) /* ArmorModVsPierce */
     , (800455,  15,    2) /* ArmorModVsBludgeon */
     , (800455,  16,    2) /* ArmorModVsCold */
     , (800455,  17,       2) /* ArmorModVsFire */
     , (800455,  18,       2) /* ArmorModVsAcid */
     , (800455,  19,    2) /* ArmorModVsElectric */
     , (800455, 110,       1) /* BulkMod */
     , (800455, 111,       1) /* SizeMod */
     , (800455, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800455,   1, 'Uber Coat of the Red Dot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800455,   1,   33554644) /* Setup */
     , (800455,   3,  536870932) /* SoundTable */
     , (800455,   6,   67108990) /* PaletteBase */
     , (800455,   7,  268436555) /* ClothingBase */
     , (800455,   8,  100674126) /* Icon */
     , (800455,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800455,  6107,      2)  /* Legendary Strength */
     , (800455,  6104,      2)  /* Legendary Endurance */
     , (800455,  6106,      2)  /* Legendary Quickness */
     , (800455,  6095,      2)  /* Legendary Impenetrability */
	 , (800455,  6077,      2)  /* Legendary Health Gain */
	 , (800455,  6102,      2)  /* Legendary Armor */
	 , (800455,  6079,      2)  /* Legendary Storm */
     , (800455,  6080,      2)  /* Legendary Acid */
     , (800455,  6081,      2)  /* Legendary Bludgeoning */
     , (800455,  6083,      2)  /* Legendary Cold */
     , (800455,  6082,      2)  /* Legendary Fire */
     , (800455,  6084,      2)  /* Legendary Pierce */
     , (800455,  6085,      2)  /* Legendary Slash */;
