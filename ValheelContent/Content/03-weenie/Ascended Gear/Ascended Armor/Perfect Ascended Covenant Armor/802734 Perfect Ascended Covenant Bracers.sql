DELETE FROM `weenie` WHERE `class_Id` = 802734;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802734, 'PerfectAscendedCovenantBracers', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802734,   1,          2) /* ItemType - Armor */
     , (802734,   3,         93) /* PaletteTemplate - Silver */
     , (802734,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (802734,   5,        300) /* EncumbranceVal */
     , (802734,   8,        180) /* Mass */
     , (802734,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (802734,  16,          1) /* ItemUseable - No */
	 , (802734,  18,          4) /* UiEffects - Magical */
     , (802734,  19,       2500) /* Value */
     , (802734,  27,         32) /* ArmorType - Chainmail */
     , (802734,  28,       3300) /* ArmorLevel */
     , (802734,  33,          1) /* Bonded - Bonded */
     , (802734,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (802734, 106,        999) /* ItemSpellcraft */
     , (802734, 107,       1200) /* ItemCurMana */
     , (802734, 108,       1200) /* ItemMaxMana */
     , (802734, 114,          1) /* Attuned - Attuned */
	 , (802734, 158,          7) /* WieldRequirements - Level */
     , (802734, 160,        8000) /* WieldDifficulty */
     , (802734, 169,  118097156) /* TsysMutationData */
     , (802734, 265,         25) /* Defenders */
	 , (802734, 370,         185) /* Damage */
	 , (802734, 371,         185) /* Damage Resist */
	 , (802734, 374,         185) /* Critical Damage */
	 , (802734, 375,         185) /* Critical Damage Resist */
	 , (802734, 376,         185) /* Heal Boost */
	 , (802734, 379,         185) /* Vitality */
	 , (802734, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802734,  22, True ) /* Inscribable */
     , (802734, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802734,  12, 0.6600000262260437) /* Shade */
     , (802734,  13,     2.5) /* ArmorModVsSlash */
     , (802734,  14,     2.5) /* ArmorModVsPierce */
     , (802734,  15,     2.5) /* ArmorModVsBludgeon */
     , (802734,  16,     2.5) /* ArmorModVsCold */
     , (802734,  17,     2.5) /* ArmorModVsFire */
     , (802734,  18,     2.5) /* ArmorModVsAcid */
     , (802734,  19,     2.5) /* ArmorModVsElectric */
     , (802734,  29,     1.2) /* WeaponDefense */
     , (802734, 110,       1) /* BulkMod */
     , (802734, 111,       1) /* SizeMod */
     , (802734, 149,     1.2) /* WeaponMissileDefense */
     , (802734, 150,     1.2) /* WeaponMagicDefense */
	 , (802734, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802734,   1, 'Perfect Ascended Covenant Bracers') /* Name */
     , (802734,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802734,   1,   33554641) /* Setup */
     , (802734,   3,  536870932) /* SoundTable */
     , (802734,   6,   67108990) /* PaletteBase */
     , (802734,   7,  268436444) /* ClothingBase */
     , (802734,   8,  100667331) /* Icon */
     , (802734,  22,  872415275) /* PhysicsEffectTable */
     , (802734,  36,  234881046) /* MutateFilter */
     , (802734,  46,  939524130) /* TsysMutationFilter */
	 , (802734,  52,  100676442) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802734,  3690,      2) /* Legendary Bludgeoning Ward */
	 , (802734,  3679,      2) /* Legendary Acid Bane */
     , (802734,  3689,      2) /* Legendary Bludgeoning Bane */
     , (802734,  3703,      2) /* Legendary Flame Bane */
     , (802734,  3706,      2) /* Legendary Frost Bane */
     , (802734,  3710,      2) /* Legendary Impenetrability */
     , (802734,  3728,      2) /* Legendary Piercing Bane */
     , (802734,  3686,      2) /* Legendary Slashing Bane */
	 , (802734,  3718,      2) /* Legendary Storm Bane */
     , (802734,  3705,      2) /* Legendary Focus */
     , (802734,  6083,      2) /* Legendary Focus */
     , (802734,  6085,      2) /* Legendary Focus */
     , (802734,  6084,      2) /* Legendary Focus */
     , (802734,  6081,      2) /* Legendary Focus */
     , (802734,  6080,      2) /* Legendary Focus */
     , (802734,  6079,      2) /* Legendary Focus */
     , (802734,  6082,      2) /* Legendary Focus */;