DELETE FROM `weenie` WHERE `class_Id` = 802739;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802739, 'PerfectAscendedCovenantSollerets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802739,   1,          2) /* ItemType - Armor */
     , (802739,   3,         93) /* PaletteTemplate - Silver */
     , (802739,   4,      65536) /* ClothingPriority - Feet */
     , (802739,   5,        540) /* EncumbranceVal */
     , (802739,   8,        360) /* Mass */
     , (802739,   9,        256) /* ValidLocations - FootWear */
     , (802739,  16,          1) /* ItemUseable - No */
	 , (802739,  18,          4) /* UiEffects - Magical */
     , (802739,  19,       7500) /* Value */
     , (802739,  27,         32) /* ArmorType - Metal */
     , (802739,  28,       3300) /* ArmorLevel */
     , (802739,  33,          1) /* Bonded - Bonded */
     , (802739,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (802739, 106,        999) /* ItemSpellcraft */
     , (802739, 107,       1200) /* ItemCurMana */
     , (802739, 108,       1200) /* ItemMaxMana */
     , (802739, 114,          1) /* Attuned - Attuned */
	 , (802739, 158,          7) /* WieldRequirements - Level */
     , (802739, 160,       8000) /* WieldDifficulty */
     , (802739, 169,  151650564) /* TsysMutationData */
     , (802739, 265,         29) /* Defenders */
	 , (802739, 370,         185) /* Damage */
	 , (802739, 371,         185) /* Damage Resist */
	 , (802739, 374,         185) /* Critical Damage */
	 , (802739, 375,         185) /* Critical Damage Resist */
	 , (802739, 376,         185) /* Heal Boost */
	 , (802739, 379,         185) /* Vitality */
	 , (802739, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802739,  22, True ) /* Inscribable */
     , (802739, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802739,  12, 0.6600000262260437) /* Shade */
     , (802739,  13,     2.5) /* ArmorModVsSlash */
     , (802739,  14,     2.5) /* ArmorModVsPierce */
     , (802739,  15,     2.5) /* ArmorModVsBludgeon */
     , (802739,  16,     2.5) /* ArmorModVsCold */
     , (802739,  17,     2.5) /* ArmorModVsFire */
     , (802739,  18,     2.5) /* ArmorModVsAcid */
     , (802739,  19,     2.5) /* ArmorModVsElectric */
     , (802739,  29,     1.2) /* WeaponDefense */
     , (802739, 110,       1) /* BulkMod */
     , (802739, 111,       1) /* SizeMod */
     , (802739, 149,     1.2) /* WeaponMissileDefense */
     , (802739, 150,     1.2) /* WeaponMagicDefense */
	 , (802739, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802739,   1, 'Perfect Ascended Covenant Sollerets') /* Name */
     , (802739,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802739,   1,   33554654) /* Setup */
     , (802739,   3,  536870932) /* SoundTable */
     , (802739,   6,   67108990) /* PaletteBase */
     , (802739,   7,  268436450) /* ClothingBase */
     , (802739,   8,  100667309) /* Icon */
     , (802739,  22,  872415275) /* PhysicsEffectTable */
     , (802739,  36,  234881046) /* MutateFilter */
     , (802739,  46,  939524130) /* TsysMutationFilter */
	 , (802739,  52,  100676442) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802739,  3715,      2) /* Legendary Jumping Prowess */
     , (802739,  3736,      2) /* Legendary Sprint */
     , (802739,  3732,      2) /* Legendary Stamina Gain */
     , (802739,  3679,      2) /* Legendary Acid Bane */
     , (802739,  3689,      2) /* Legendary Bludgeoning Bane */
     , (802739,  3703,      2) /* Legendary Flame Bane */
     , (802739,  3706,      2) /* Legendary Frost Bane */
     , (802739,  3710,      2) /* Legendary Impenetrability */
     , (802739,  3728,      2) /* Legendary Piercing Bane */
     , (802739,  3686,      2) /* Legendary Slashing Bane */
     , (802739,  3718,      2) /* Legendary Storm Bane */
     , (802739,  6107,      2) /* Legendary Strength */
     , (802739,  6104,      2) /* Legendary Strength */
     , (802739,  6103,      2) /* Legendary Strength */
     , (802739,  6106,      2) /* Legendary Strength */
     , (802739,  6105,      2) /* Legendary Strength */
     , (802739,  6101,      2) /* Legendary Strength */;