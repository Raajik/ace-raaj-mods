DELETE FROM `weenie` WHERE `class_Id` = 802736;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802736, 'PerfectAscendedCovenantGirth', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802736,   1,          2) /* ItemType - Armor */
     , (802736,   3,         93) /* PaletteTemplate - Silver */
     , (802736,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (802736,   5,        466) /* EncumbranceVal */
     , (802736,   8,        280) /* Mass */
     , (802736,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (802736,  16,          1) /* ItemUseable - No */
	 , (802736,  18,          4) /* UiEffects - Magical */
     , (802736,  19,       7500) /* Value */
     , (802736,  27,         32) /* ArmorType - Chainmail */
     , (802736,  28,       3300) /* ArmorLevel */
     , (802736,  33,          1) /* Bonded - Bonded */
     , (802736,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (802736, 106,        999) /* ItemSpellcraft */
     , (802736, 107,       1200) /* ItemCurMana */
     , (802736, 108,       1200) /* ItemMaxMana */
     , (802736, 114,          1) /* Attuned - Attuned */
	 , (802736, 158,          7) /* WieldRequirements - Level */
     , (802736, 160,        8000) /* WieldDifficulty */
     , (802736, 169,  118096132) /* TsysMutationData */
     , (802736, 265,         23) /* Defenders */
	 , (802736, 370,         185) /* Damage */
	 , (802736, 371,         185) /* Damage Resist */
	 , (802736, 374,         185) /* Critical Damage */
	 , (802736, 375,         185) /* Critical Damage Resist */
	 , (802736, 376,         185) /* Heal Boost */
	 , (802736, 379,         185) /* Vitality */
	 , (802736, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802736,  22, True ) /* Inscribable */
     , (802736, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802736,  12, 0.6600000262260437) /* Shade */
     , (802736,  13,     2.5) /* ArmorModVsSlash */
     , (802736,  14,     2.5) /* ArmorModVsPierce */
     , (802736,  15,     2.5) /* ArmorModVsBludgeon */
     , (802736,  16,     2.5) /* ArmorModVsCold */
     , (802736,  17,     2.5) /* ArmorModVsFire */
     , (802736,  18,     2.5) /* ArmorModVsAcid */
     , (802736,  19,     2.5) /* ArmorModVsElectric */
     , (802736,  29,     1.2) /* WeaponDefense */
     , (802736, 110,       1) /* BulkMod */
     , (802736, 111,       1) /* SizeMod */
     , (802736, 149,     1.2) /* WeaponMissileDefense */
     , (802736, 150,     1.2) /* WeaponMagicDefense */
	 , (802736, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802736,   1, 'Perfect Ascended Covenant Girth') /* Name */
     , (802736,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802736,   1,   33554647) /* Setup */
     , (802736,   3,  536870932) /* SoundTable */
     , (802736,   6,   67108990) /* PaletteBase */
     , (802736,   7,  268436446) /* ClothingBase */
     , (802736,   8,  100668144) /* Icon */
     , (802736,  22,  872415275) /* PhysicsEffectTable */
     , (802736,  36,  234881046) /* MutateFilter */
     , (802736,  46,  939524130) /* TsysMutationFilter */
	 , (802736,  52,  100676442) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802736,  3692,      2) /* Legendary Frost Ward */
	 , (802736,  3679,      2) /* Legendary Acid Bane */
     , (802736,  3689,      2) /* Legendary Bludgeoning Bane */
     , (802736,  3703,      2) /* Legendary Flame Bane */
     , (802736,  3706,      2) /* Legendary Frost Bane */
     , (802736,  3710,      2) /* Legendary Impenetrability */
     , (802736,  3728,      2) /* Legendary Piercing Bane */
     , (802736,  3686,      2) /* Legendary Slashing Bane */
	 , (802736,  3718,      2) /* Legendary Storm Bane */
     , (802736,  3700,      2) /* Legendary Endurance */
     , (802736,  6048,      2) /* Legendary Endurance */
     , (802736,  6049,      2) /* Legendary Endurance */
     , (802736,  6050,      2) /* Legendary Endurance */
     , (802736,  6052,      2) /* Legendary Endurance */
     , (802736,  6053,      2) /* Legendary Endurance */
     , (802736,  6058,      2) /* Legendary Endurance */
     , (802736,  6059,      2) /* Legendary Endurance */;