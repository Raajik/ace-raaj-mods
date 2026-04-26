DELETE FROM `weenie` WHERE `class_Id` = 850014;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850014, 'ace850014-purifiedpauldrons', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850014,   1,          2) /* ItemType - Armor */
     , (850014,   3,         93) /* PaletteTemplate - Silver */
     , (850014,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (850014,   5,        400) /* EncumbranceVal */
     , (850014,   8,        240) /* Mass */
     , (850014,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (850014,  16,          1) /* ItemUseable - No */
	 , (850014,  18,          1) /* UiEffects - Magical */
     , (850014,  19,     200000) /* Value */
     , (850014,  27,         32) /* ArmorType - Chainmail */
     , (850014,  28,       2100) /* ArmorLevel */
     , (850014,  33,          1) /* Bonded - Bonded */
     , (850014,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (850014, 106,        999) /* ItemSpellcraft */
     , (850014, 107,       1200) /* ItemCurMana */
     , (850014, 108,       1200) /* ItemMaxMana */
     , (850014, 114,          1) /* Attuned - Attuned */
	 , (850014, 158,          7) /* WieldRequirements - Level */
     , (850014, 160,        3000) /* WieldDifficulty */
     , (850014, 169,  118096132) /* TsysMutationData */
     , (850014, 265,         27) /* Defenders */
	 , (850014, 370,         135) /* Damage */
	 , (850014, 371,         135) /* Damage Resist */
	 , (850014, 374,         135) /* Critical Damage */
	 , (850014, 375,         135) /* Critical Damage Resist */
	 , (850014, 376,         135) /* Heal Boost */
	 , (850014, 379,         135) /* Vitality */
	 , (850014, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850014,  22, True ) /* Inscribable */
     , (850014, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850014,  12, 0.6600000262260437) /* Shade */
     , (850014,  13,     2.5) /* ArmorModVsSlash */
     , (850014,  14,     2.5) /* ArmorModVsPierce */
     , (850014,  15,     2.5) /* ArmorModVsBludgeon */
     , (850014,  16,     2.5) /* ArmorModVsCold */
     , (850014,  17,     2.5) /* ArmorModVsFire */
     , (850014,  18,     2.5) /* ArmorModVsAcid */
     , (850014,  19,     2.5) /* ArmorModVsElectric */
     , (850014,  29,     1.2) /* WeaponDefense */
     , (850014, 110,       1) /* BulkMod */
     , (850014, 111,       1) /* SizeMod */
     , (850014, 149,     1.2) /* WeaponMissileDefense */
     , (850014, 150,     1.2) /* WeaponMagicDefense */
	 , (850014, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850014,   1, 'Ascended Covenant Pauldrons') /* Name */
     , (850014,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850014,   1,   33554641) /* Setup */
     , (850014,   3,  536870932) /* SoundTable */
     , (850014,   6,   67108990) /* PaletteBase */
     , (850014,   7,  268436449) /* ClothingBase */
     , (850014,   8,  100668172) /* Icon */
     , (850014,  22,  872415275) /* PhysicsEffectTable */
     , (850014,  36,  234881046) /* MutateFilter */
     , (850014,  46,  939524130) /* TsysMutationFilter */
	 , (850014,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850014,  3680,      2) /* Legendary Acid Ward */
	 , (850014,  3679,      2) /* Legendary Acid Bane */
     , (850014,  3689,      2) /* Legendary Bludgeoning Bane */
     , (850014,  3703,      2) /* Legendary Flame Bane */
     , (850014,  3706,      2) /* Legendary Frost Bane */
     , (850014,  3710,      2) /* Legendary Impenetrability */
     , (850014,  3728,      2) /* Legendary Piercing Bane */
     , (850014,  3686,      2) /* Legendary Slashing Bane */
	 , (850014,  3718,      2) /* Legendary Storm Bane */
	 , (850014,  3733,      2) /* Legendary Willpower */
	 , (850014,  6044,      2) /* Legendary Willpower */
	 , (850014,  6047,      2) /* Legendary Willpower */
	 , (850014,  6072,      2) /* Legendary Willpower */
	 , (850014,  6043,      2) /* Legendary Willpower */
	 , (850014,  6073,      2) /* Legendary Willpower */
	 , (850014,  6125,      2) /* Legendary Willpower */;