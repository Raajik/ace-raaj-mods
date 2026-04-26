DELETE FROM `weenie` WHERE `class_Id` = 803068;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803068, 'BlackOreAscendedCovenantHelm', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803068,   1,          2) /* ItemType - Armor */
     , (803068,   3,         93) /* PaletteTemplate - Silver */
     , (803068,   4,      16384) /* ClothingPriority - Head */
     , (803068,   5,        140) /* EncumbranceVal */
     , (803068,   8,        140) /* Mass */
     , (803068,   9,          1) /* ValidLocations - HeadWear */
     , (803068,  16,          1) /* ItemUseable - No */
     , (803068,  18,          4) /* UiEffects - Magical */
     , (803068,  19,       7500) /* Value */
     , (803068,  27,         32) /* ArmorType - Chainmail */
     , (803068,  28,       3800) /* ArmorLevel */
     , (803068,  33,          1) /* Bonded - Bonded */
     , (803068,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803068, 106,        999) /* ItemSpellcraft */
     , (803068, 107,       1200) /* ItemCurMana */
     , (803068, 108,       1200) /* ItemMaxMana */ 
     , (803068, 114,          1) /* Attuned - Attuned */
	 , (803068, 158,          7) /* WieldRequirements - Level */
     , (803068, 160,        8000) /* WieldDifficulty */
     , (803068, 169,  168427780) /* TsysMutationData */
     , (803068, 265,         29) /* Defenders */
	 , (803068, 370,         210) /* Damage */
	 , (803068, 371,         210) /* Damage Resist */
	 , (803068, 374,         210) /* Critical Damage */
	 , (803068, 375,         210) /* Critical Damage Resist */
	 , (803068, 376,         210) /* Heal Boost */
	 , (803068, 379,         210) /* Vitality */
	 , (803068, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803068,  22, True ) /* Inscribable */
     , (803068, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803068,  12, 0.6600000262260437) /* Shade */
     , (803068,  13,     3) /* ArmorModVsSlash */
     , (803068,  14,     3) /* ArmorModVsPierce */
     , (803068,  15,     3) /* ArmorModVsBludgeon */
     , (803068,  16,     3) /* ArmorModVsCold */
     , (803068,  17,     3) /* ArmorModVsFire */
     , (803068,  18,     3) /* ArmorModVsAcid */
     , (803068,  19,     3) /* ArmorModVsElectric */
     , (803068,  29,     1.2) /* WeaponDefense */
     , (803068, 110,       1) /* BulkMod */
     , (803068, 111,       1) /* SizeMod */
     , (803068, 149,     1.4) /* WeaponMissileDefense */
     , (803068, 150,     1.4) /* WeaponMagicDefense */
	 , (803068, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803068,   1, 'Black Ore Ascended Covenant Helm') /* Name */
     , (803068,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803068,   1,   33557884) /* Setup */
     , (803068,   3,  536870932) /* SoundTable */
     , (803068,   6,   67108990) /* PaletteBase */
     , (803068,   7,  268436448) /* ClothingBase */
     , (803068,   8,  100667343) /* Icon */
     , (803068,  22,  872415275) /* PhysicsEffectTable */
     , (803068,  36,  234881046) /* MutateFilter */
     , (803068,  46,  939524130) /* TsysMutationFilter */
     , (803068,  52,  100686604) /* IconUnderlay */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803068,  3682,      2) /* Legendary Arcane Prowess */
     , (803068,  3711,      2) /* Legendary Impregnability */
     , (803068,  3724,      2) /* Legendary Mana Conversion Prowess */
     , (803068,  3725,      2) /* Legendary Mana Gain */
	 , (803068,  3719,      2) /* Legendary Storm Ward */
	 , (803068,  3679,      2) /* Legendary Acid Bane */
     , (803068,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803068,  3703,      2) /* Legendary Flame Bane */
     , (803068,  3706,      2) /* Legendary Frost Bane */
     , (803068,  3710,      2) /* Legendary Impenetrability */
     , (803068,  3728,      2) /* Legendary Piercing Bane */
     , (803068,  3686,      2) /* Legendary Slashing Bane */
     , (803068,  3718,      2) /* Legendary Storm Bane */
	 , (803068,  3730,      2) /* Legendary Quickness */
	 , (803068,  6056,      2) /* Legendary Quickness */
	 , (803068,  6046,      2) /* Legendary Quickness */
	 , (803068,  6060,      2) /* Legendary Quickness */
	 , (803068,  6075,      2) /* Legendary Quickness */
	 , (803068,  6074,      2) /* Legendary Quickness */
	 , (803068,  6064,      2) /* Legendary Quickness */;