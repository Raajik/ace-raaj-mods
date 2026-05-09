DELETE FROM `weenie` WHERE `class_Id` = 803394;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803394, 'Luminium Bracers', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803394,   1,          2) /* ItemType - Armor */
     , (803394,   3,         93) /* PaletteTemplate - Silver */
     , (803394,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (803394,   5,        300) /* EncumbranceVal */
     , (803394,   8,        180) /* Mass */
     , (803394,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (803394,  16,          1) /* ItemUseable - No */
	 , (803394,  18,          1) /* UiEffects - Magical */
     , (803394,  19,     400000) /* Value */
     , (803394,  27,         32) /* ArmorType - Chainmail */
     , (803394,  28,       2500) /* ArmorLevel */
     , (803394,  33,          1) /* Bonded - Bonded */
     , (803394,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803394, 106,        999) /* ItemSpellcraft */
     , (803394, 107,       1200) /* ItemCurMana */
     , (803394, 108,       1200) /* ItemMaxMana */
     , (803394, 114,          1) /* Attuned - Attuned */
	 , (803394, 158,          7) /* WieldRequirements - Level */
     , (803394, 160,        5000) /* WieldDifficulty */
     , (803394, 169,  118097156) /* TsysMutationData */
     , (803394, 265,         26) /* Defenders */
	 , (803394, 370,         160) /* Damage */
	 , (803394, 371,         160) /* Damage Resist */
	 , (803394, 374,         160) /* Critical Damage */
	 , (803394, 375,         160) /* Critical Damage Resist */
	 , (803394, 376,         160) /* Heal Boost */
	 , (803394, 379,         160) /* Vitality */
	 , (803394, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803394,  22, True ) /* Inscribable */
     , (803394, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803394,  12, 0.6600000262260437) /* Shade */
     , (803394,  13,     2.5) /* ArmorModVsSlash */
     , (803394,  14,     2.5) /* ArmorModVsPierce */
     , (803394,  15,     2.5) /* ArmorModVsBludgeon */
     , (803394,  16,     2.5) /* ArmorModVsCold */
     , (803394,  17,     2.5) /* ArmorModVsFire */
     , (803394,  18,     2.5) /* ArmorModVsAcid */
     , (803394,  19,     2.5) /* ArmorModVsElectric */
     , (803394,  29,     1.2) /* WeaponDefense */
     , (803394, 110,       1) /* BulkMod */
     , (803394, 111,       1) /* SizeMod */
     , (803394, 149,     1.2) /* WeaponMissileDefense */
     , (803394, 150,     1.2) /* WeaponMagicDefense */
	 , (803394, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803394,   1, 'Luminium Bracers') /* Name */
     , (803394,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803394,   1,   33554641) /* Setup */
     , (803394,   3,  536870932) /* SoundTable */
     , (803394,   7,  268437580) /* ClothingBase */
     , (803394,   8,  100693094) /* Icon */
     , (803394,  22,  872415275) /* PhysicsEffectTable */
     , (803394,  36,  234881046) /* MutateFilter */
     , (803394,  46,  939524130) /* TsysMutationFilter */
	 , (803394,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803394,  3690,      2) /* Legendary Bludgeoning Ward */
	 , (803394,  3679,      2) /* Legendary Acid Bane */
     , (803394,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803394,  3703,      2) /* Legendary Flame Bane */
     , (803394,  3706,      2) /* Legendary Frost Bane */
     , (803394,  3710,      2) /* Legendary Impenetrability */
     , (803394,  3728,      2) /* Legendary Piercing Bane */
     , (803394,  3686,      2) /* Legendary Slashing Bane */
	 , (803394,  3718,      2) /* Legendary Storm Bane */
     , (803394,  3705,      2) /* Legendary Focus */
     , (803394,  6083,      2) /* Legendary Focus */
     , (803394,  6085,      2) /* Legendary Focus */
     , (803394,  6084,      2) /* Legendary Focus */
     , (803394,  6081,      2) /* Legendary Focus */
     , (803394,  6080,      2) /* Legendary Focus */
     , (803394,  6079,      2) /* Legendary Focus */
     , (803394,  6082,      2) /* Legendary Focus */;