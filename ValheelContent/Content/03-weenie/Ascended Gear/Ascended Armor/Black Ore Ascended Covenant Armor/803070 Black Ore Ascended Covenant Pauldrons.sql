DELETE FROM `weenie` WHERE `class_Id` = 803070;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803070, 'BlackOreAscendedCovenantPauldrons', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803070,   1,          2) /* ItemType - Armor */
     , (803070,   3,         93) /* PaletteTemplate - Silver */
     , (803070,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (803070,   5,        400) /* EncumbranceVal */
     , (803070,   8,        240) /* Mass */
     , (803070,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (803070,  16,          1) /* ItemUseable - No */
	 , (803070,  18,          4) /* UiEffects - Magical */
     , (803070,  19,       7500) /* Value */
     , (803070,  27,         32) /* ArmorType - Chainmail */
     , (803070,  28,       3800) /* ArmorLevel */
     , (803070,  33,          1) /* Bonded - Bonded */
     , (803070,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803070, 106,        999) /* ItemSpellcraft */
     , (803070, 107,       1200) /* ItemCurMana */
     , (803070, 108,       1200) /* ItemMaxMana */
     , (803070, 114,          1) /* Attuned - Attuned */
	 , (803070, 158,          7) /* WieldRequirements - Level */
     , (803070, 160,        8000) /* WieldDifficulty */
     , (803070, 169,  118096132) /* TsysMutationData */
     , (803070, 265,         27) /* Defenders */
	 , (803070, 370,         210) /* Damage */
	 , (803070, 371,         210) /* Damage Resist */
	 , (803070, 374,         210) /* Critical Damage */
	 , (803070, 375,         210) /* Critical Damage Resist */
	 , (803070, 376,         210) /* Heal Boost */
	 , (803070, 379,         210) /* Vitality */
	 , (803070, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803070,  22, True ) /* Inscribable */
     , (803070, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803070,  12, 0.6600000262260437) /* Shade */
     , (803070,  13,     3) /* ArmorModVsSlash */
     , (803070,  14,     3) /* ArmorModVsPierce */
     , (803070,  15,     3) /* ArmorModVsBludgeon */
     , (803070,  16,     3) /* ArmorModVsCold */
     , (803070,  17,     3) /* ArmorModVsFire */
     , (803070,  18,     3) /* ArmorModVsAcid */
     , (803070,  19,     3) /* ArmorModVsElectric */
     , (803070,  29,     1.2) /* WeaponDefense */
     , (803070, 110,       1) /* BulkMod */
     , (803070, 111,       1) /* SizeMod */
     , (803070, 149,     1.4) /* WeaponMissileDefense */
     , (803070, 150,     1.4) /* WeaponMagicDefense */
	 , (803070, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803070,   1, 'Black Ore Ascended Covenant Pauldrons') /* Name */
     , (803070,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803070,   1,   33554641) /* Setup */
     , (803070,   3,  536870932) /* SoundTable */
     , (803070,   6,   67108990) /* PaletteBase */
     , (803070,   7,  268436449) /* ClothingBase */
     , (803070,   8,  100668172) /* Icon */
     , (803070,  22,  872415275) /* PhysicsEffectTable */
     , (803070,  36,  234881046) /* MutateFilter */
     , (803070,  46,  939524130) /* TsysMutationFilter */
	 , (803070,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803070,  3680,      2) /* Legendary Acid Ward */
	 , (803070,  3679,      2) /* Legendary Acid Bane */
     , (803070,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803070,  3703,      2) /* Legendary Flame Bane */
     , (803070,  3706,      2) /* Legendary Frost Bane */
     , (803070,  3710,      2) /* Legendary Impenetrability */
     , (803070,  3728,      2) /* Legendary Piercing Bane */
     , (803070,  3686,      2) /* Legendary Slashing Bane */
	 , (803070,  3718,      2) /* Legendary Storm Bane */
	 , (803070,  3733,      2) /* Legendary Willpower */
	 , (803070,  6044,      2) /* Legendary Willpower */
	 , (803070,  6047,      2) /* Legendary Willpower */
	 , (803070,  6072,      2) /* Legendary Willpower */
	 , (803070,  6043,      2) /* Legendary Willpower */
	 , (803070,  6073,      2) /* Legendary Willpower */
	 , (803070,  6125,      2) /* Legendary Willpower */;