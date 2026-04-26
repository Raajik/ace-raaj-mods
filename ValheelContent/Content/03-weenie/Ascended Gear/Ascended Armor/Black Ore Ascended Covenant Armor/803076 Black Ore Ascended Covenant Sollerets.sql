DELETE FROM `weenie` WHERE `class_Id` = 803076;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803076, 'BlackOreAscendedCovenantSollerets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803076,   1,          2) /* ItemType - Armor */
     , (803076,   3,         93) /* PaletteTemplate - Silver */
     , (803076,   4,      65536) /* ClothingPriority - Feet */
     , (803076,   5,        540) /* EncumbranceVal */
     , (803076,   8,        360) /* Mass */
     , (803076,   9,        256) /* ValidLocations - FootWear */
     , (803076,  16,          1) /* ItemUseable - No */
	 , (803076,  18,          4) /* UiEffects - Magical */
     , (803076,  19,       7500) /* Value */
     , (803076,  27,         32) /* ArmorType - Metal */
     , (803076,  28,       3800) /* ArmorLevel */
     , (803076,  33,          1) /* Bonded - Bonded */
     , (803076,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803076, 106,        999) /* ItemSpellcraft */
     , (803076, 107,       1200) /* ItemCurMana */
     , (803076, 108,       1200) /* ItemMaxMana */
     , (803076, 114,          1) /* Attuned - Attuned */
	 , (803076, 158,          7) /* WieldRequirements - Level */
     , (803076, 160,       8000) /* WieldDifficulty */
     , (803076, 169,  151650564) /* TsysMutationData */
     , (803076, 265,         16) /* Defenders */
	 , (803076, 370,         210) /* Damage */
	 , (803076, 371,         210) /* Damage Resist */
	 , (803076, 374,         210) /* Critical Damage */
	 , (803076, 375,         210) /* Critical Damage Resist */
	 , (803076, 376,         210) /* Heal Boost */
	 , (803076, 379,         210) /* Vitality */
	 , (803076, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803076,  22, True ) /* Inscribable */
     , (803076, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803076,  12, 0.6600000262260437) /* Shade */
     , (803076,  13,     3) /* ArmorModVsSlash */
     , (803076,  14,     3) /* ArmorModVsPierce */
     , (803076,  15,     3) /* ArmorModVsBludgeon */
     , (803076,  16,     3) /* ArmorModVsCold */
     , (803076,  17,     3) /* ArmorModVsFire */
     , (803076,  18,     3) /* ArmorModVsAcid */
     , (803076,  19,     3) /* ArmorModVsElectric */
     , (803076,  29,     1.2) /* WeaponDefense */
     , (803076, 110,       1) /* BulkMod */
     , (803076, 111,       1) /* SizeMod */
     , (803076, 149,     1.4) /* WeaponMissileDefense */
     , (803076, 150,     1.4) /* WeaponMagicDefense */
	 , (803076, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803076,   1, 'Black Ore Ascended Covenant Sollerets') /* Name */
     , (803076,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803076,   1,   33554654) /* Setup */
     , (803076,   3,  536870932) /* SoundTable */
     , (803076,   6,   67108990) /* PaletteBase */
     , (803076,   7,  268436450) /* ClothingBase */
     , (803076,   8,  100667309) /* Icon */
     , (803076,  22,  872415275) /* PhysicsEffectTable */
     , (803076,  36,  234881046) /* MutateFilter */
     , (803076,  46,  939524130) /* TsysMutationFilter */
	 , (803076,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803076,  3715,      2) /* Legendary Jumping Prowess */
     , (803076,  3736,      2) /* Legendary Sprint */
     , (803076,  3732,      2) /* Legendary Stamina Gain */
     , (803076,  3679,      2) /* Legendary Acid Bane */
     , (803076,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803076,  3703,      2) /* Legendary Flame Bane */
     , (803076,  3706,      2) /* Legendary Frost Bane */
     , (803076,  3710,      2) /* Legendary Impenetrability */
     , (803076,  3728,      2) /* Legendary Piercing Bane */
     , (803076,  3686,      2) /* Legendary Slashing Bane */
     , (803076,  3718,      2) /* Legendary Storm Bane */
     , (803076,  6107,      2) /* Legendary Strength */
     , (803076,  6104,      2) /* Legendary Strength */
     , (803076,  6103,      2) /* Legendary Strength */
     , (803076,  6106,      2) /* Legendary Strength */
     , (803076,  6105,      2) /* Legendary Strength */
     , (803076,  6101,      2) /* Legendary Strength */;