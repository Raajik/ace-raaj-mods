DELETE FROM `weenie` WHERE `class_Id` = 803393;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803393, 'Luminium Pauldrons', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803393,   1,          2) /* ItemType - Armor */
     , (803393,   3,         93) /* PaletteTemplate - Silver */
     , (803393,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (803393,   5,        400) /* EncumbranceVal */
     , (803393,   8,        240) /* Mass */
     , (803393,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (803393,  16,          1) /* ItemUseable - No */
	 , (803393,  18,          1) /* UiEffects - Magical */
     , (803393,  19,     400000) /* Value */
     , (803393,  27,         32) /* ArmorType - Chainmail */
     , (803393,  28,       2500) /* ArmorLevel */
     , (803393,  33,          1) /* Bonded - Bonded */
     , (803393,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803393, 106,        999) /* ItemSpellcraft */
     , (803393, 107,       1200) /* ItemCurMana */
     , (803393, 108,       1200) /* ItemMaxMana */
     , (803393, 114,          1) /* Attuned - Attuned */
	 , (803393, 158,          7) /* WieldRequirements - Level */
     , (803393, 160,        5000) /* WieldDifficulty */
     , (803393, 169,  118096132) /* TsysMutationData */
     , (803393, 265,         27) /* Defenders */
	 , (803393, 370,         160) /* Damage */
	 , (803393, 371,         160) /* Damage Resist */
	 , (803393, 374,         160) /* Critical Damage */
	 , (803393, 375,         160) /* Critical Damage Resist */
	 , (803393, 376,         160) /* Heal Boost */
	 , (803393, 379,         160) /* Vitality */
	 , (803393, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803393,  22, True ) /* Inscribable */
     , (803393, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803393,  12, 0.6600000262260437) /* Shade */
     , (803393,  13,     2.5) /* ArmorModVsSlash */
     , (803393,  14,     2.5) /* ArmorModVsPierce */
     , (803393,  15,     2.5) /* ArmorModVsBludgeon */
     , (803393,  16,     2.5) /* ArmorModVsCold */
     , (803393,  17,     2.5) /* ArmorModVsFire */
     , (803393,  18,     2.5) /* ArmorModVsAcid */
     , (803393,  19,     2.5) /* ArmorModVsElectric */
     , (803393,  29,     1.2) /* WeaponDefense */
     , (803393, 110,       1) /* BulkMod */
     , (803393, 111,       1) /* SizeMod */
     , (803393, 149,     1.2) /* WeaponMissileDefense */
     , (803393, 150,     1.2) /* WeaponMagicDefense */
	 , (803393, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803393,   1, 'Luminium Pauldrons') /* Name */
     , (803393,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803393,   1,   33554641) /* Setup */
     , (803393,   3,  536870932) /* SoundTable */
     , (803393,   7,  268437586) /* ClothingBase */
     , (803393,   8,  100693100) /* Icon */
     , (803393,  22,  872415275) /* PhysicsEffectTable */
     , (803393,  36,  234881046) /* MutateFilter */
     , (803393,  46,  939524130) /* TsysMutationFilter */
	 , (803393,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803393,  3680,      2) /* Legendary Acid Ward */
	 , (803393,  3679,      2) /* Legendary Acid Bane */
     , (803393,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803393,  3703,      2) /* Legendary Flame Bane */
     , (803393,  3706,      2) /* Legendary Frost Bane */
     , (803393,  3710,      2) /* Legendary Impenetrability */
     , (803393,  3728,      2) /* Legendary Piercing Bane */
     , (803393,  3686,      2) /* Legendary Slashing Bane */
	 , (803393,  3718,      2) /* Legendary Storm Bane */
	 , (803393,  3733,      2) /* Legendary Willpower */
	 , (803393,  6044,      2) /* Legendary Willpower */
	 , (803393,  6047,      2) /* Legendary Willpower */
	 , (803393,  6072,      2) /* Legendary Willpower */
	 , (803393,  6043,      2) /* Legendary Willpower */
	 , (803393,  6073,      2) /* Legendary Willpower */
	 , (803393,  6125,      2) /* Legendary Willpower */;