DELETE FROM `weenie` WHERE `class_Id` = 802733;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802733, 'PerfectAscendedCovenantPauldrons', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802733,   1,          2) /* ItemType - Armor */
     , (802733,   3,         93) /* PaletteTemplate - Silver */
     , (802733,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (802733,   5,        400) /* EncumbranceVal */
     , (802733,   8,        240) /* Mass */
     , (802733,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (802733,  16,          1) /* ItemUseable - No */
	 , (802733,  18,          4) /* UiEffects - Magical */
     , (802733,  19,       7500) /* Value */
     , (802733,  27,         32) /* ArmorType - Chainmail */
     , (802733,  28,       3300) /* ArmorLevel */
     , (802733,  33,          1) /* Bonded - Bonded */
     , (802733,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (802733, 106,        999) /* ItemSpellcraft */
     , (802733, 107,       1200) /* ItemCurMana */
     , (802733, 108,       1200) /* ItemMaxMana */
     , (802733, 114,          1) /* Attuned - Attuned */
	 , (802733, 158,          7) /* WieldRequirements - Level */
     , (802733, 160,        8000) /* WieldDifficulty */
     , (802733, 169,  118096132) /* TsysMutationData */
     , (802733, 265,         26) /* Defenders */
	 , (802733, 370,         185) /* Damage */
	 , (802733, 371,         185) /* Damage Resist */
	 , (802733, 374,         185) /* Critical Damage */
	 , (802733, 375,         185) /* Critical Damage Resist */
	 , (802733, 376,         185) /* Heal Boost */
	 , (802733, 379,         185) /* Vitality */
	 , (802733, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802733,  22, True ) /* Inscribable */
     , (802733, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802733,  12, 0.6600000262260437) /* Shade */
     , (802733,  13,     2.5) /* ArmorModVsSlash */
     , (802733,  14,     2.5) /* ArmorModVsPierce */
     , (802733,  15,     2.5) /* ArmorModVsBludgeon */
     , (802733,  16,     2.5) /* ArmorModVsCold */
     , (802733,  17,     2.5) /* ArmorModVsFire */
     , (802733,  18,     2.5) /* ArmorModVsAcid */
     , (802733,  19,     2.5) /* ArmorModVsElectric */
     , (802733,  29,     1.2) /* WeaponDefense */
     , (802733, 110,       1) /* BulkMod */
     , (802733, 111,       1) /* SizeMod */
     , (802733, 149,     1.2) /* WeaponMissileDefense */
     , (802733, 150,     1.2) /* WeaponMagicDefense */
	 , (802733, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802733,   1, 'Perfect Ascended Covenant Pauldrons') /* Name */
     , (802733,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802733,   1,   33554641) /* Setup */
     , (802733,   3,  536870932) /* SoundTable */
     , (802733,   6,   67108990) /* PaletteBase */
     , (802733,   7,  268436449) /* ClothingBase */
     , (802733,   8,  100668172) /* Icon */
     , (802733,  22,  872415275) /* PhysicsEffectTable */
     , (802733,  36,  234881046) /* MutateFilter */
     , (802733,  46,  939524130) /* TsysMutationFilter */
	 , (802733,  52,  100676442) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802733,  3680,      2) /* Legendary Acid Ward */
	 , (802733,  3679,      2) /* Legendary Acid Bane */
     , (802733,  3689,      2) /* Legendary Bludgeoning Bane */
     , (802733,  3703,      2) /* Legendary Flame Bane */
     , (802733,  3706,      2) /* Legendary Frost Bane */
     , (802733,  3710,      2) /* Legendary Impenetrability */
     , (802733,  3728,      2) /* Legendary Piercing Bane */
     , (802733,  3686,      2) /* Legendary Slashing Bane */
	 , (802733,  3718,      2) /* Legendary Storm Bane */
	 , (802733,  3733,      2) /* Legendary Willpower */
	 , (802733,  6044,      2) /* Legendary Willpower */
	 , (802733,  6047,      2) /* Legendary Willpower */
	 , (802733,  6072,      2) /* Legendary Willpower */
	 , (802733,  6043,      2) /* Legendary Willpower */
	 , (802733,  6073,      2) /* Legendary Willpower */
	 , (802733,  6125,      2) /* Legendary Willpower */;