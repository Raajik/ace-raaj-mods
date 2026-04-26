DELETE FROM `weenie` WHERE `class_Id` = 802731;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802731, 'PerfectAscendedCovenantHelm', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802731,   1,          2) /* ItemType - Armor */
     , (802731,   3,         93) /* PaletteTemplate - Silver */
     , (802731,   4,      16384) /* ClothingPriority - Head */
     , (802731,   5,        140) /* EncumbranceVal */
     , (802731,   8,        140) /* Mass */
     , (802731,   9,          1) /* ValidLocations - HeadWear */
     , (802731,  16,          1) /* ItemUseable - No */
     , (802731,  18,          4) /* UiEffects - Magical */
     , (802731,  19,       7500) /* Value */
     , (802731,  27,         32) /* ArmorType - Chainmail */
     , (802731,  28,       3300) /* ArmorLevel */
     , (802731,  33,          1) /* Bonded - Bonded */
     , (802731,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802731, 106,        999) /* ItemSpellcraft */
     , (802731, 107,       1200) /* ItemCurMana */
     , (802731, 108,       1200) /* ItemMaxMana */ 
     , (802731, 114,          1) /* Attuned - Attuned */
	 , (802731, 158,          7) /* WieldRequirements - Level */
     , (802731, 160,        8000) /* WieldDifficulty */
     , (802731, 169,  168427780) /* TsysMutationData */
     , (802731, 265,         28) /* Defenders */
	 , (802731, 370,         185) /* Damage */
	 , (802731, 371,         185) /* Damage Resist */
	 , (802731, 374,         185) /* Critical Damage */
	 , (802731, 375,         185) /* Critical Damage Resist */
	 , (802731, 376,         185) /* Heal Boost */
	 , (802731, 379,         185) /* Vitality */
	 , (802731, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802731,  22, True ) /* Inscribable */
     , (802731, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802731,  12, 0.6600000262260437) /* Shade */
     , (802731,  13,     2.5) /* ArmorModVsSlash */
     , (802731,  14,     2.5) /* ArmorModVsPierce */
     , (802731,  15,     2.5) /* ArmorModVsBludgeon */
     , (802731,  16,     2.5) /* ArmorModVsCold */
     , (802731,  17,     2.5) /* ArmorModVsFire */
     , (802731,  18,     2.5) /* ArmorModVsAcid */
     , (802731,  19,     2.5) /* ArmorModVsElectric */
     , (802731,  29,     1.2) /* WeaponDefense */
     , (802731, 110,       1) /* BulkMod */
     , (802731, 111,       1) /* SizeMod */
     , (802731, 149,     1.2) /* WeaponMissileDefense */
     , (802731, 150,     1.2) /* WeaponMagicDefense */
	 , (802731, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802731,   1, 'Perfect Ascended Covenant Helm') /* Name */
     , (802731,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802731,   1,   33557884) /* Setup */
     , (802731,   3,  536870932) /* SoundTable */
     , (802731,   6,   67108990) /* PaletteBase */
     , (802731,   7,  268436448) /* ClothingBase */
     , (802731,   8,  100667343) /* Icon */
     , (802731,  22,  872415275) /* PhysicsEffectTable */
     , (802731,  36,  234881046) /* MutateFilter */
     , (802731,  46,  939524130) /* TsysMutationFilter */
     , (802731,  52,  100676442) /* IconUnderlay */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802731,  3682,      2) /* Legendary Arcane Prowess */
     , (802731,  3711,      2) /* Legendary Impregnability */
     , (802731,  3724,      2) /* Legendary Mana Conversion Prowess */
     , (802731,  3725,      2) /* Legendary Mana Gain */
	 , (802731,  3719,      2) /* Legendary Storm Ward */
	 , (802731,  3679,      2) /* Legendary Acid Bane */
     , (802731,  3689,      2) /* Legendary Bludgeoning Bane */
     , (802731,  3703,      2) /* Legendary Flame Bane */
     , (802731,  3706,      2) /* Legendary Frost Bane */
     , (802731,  3710,      2) /* Legendary Impenetrability */
     , (802731,  3728,      2) /* Legendary Piercing Bane */
     , (802731,  3686,      2) /* Legendary Slashing Bane */
     , (802731,  3718,      2) /* Legendary Storm Bane */
	 , (802731,  3730,      2) /* Legendary Quickness */
	 , (802731,  6056,      2) /* Legendary Quickness */
	 , (802731,  6046,      2) /* Legendary Quickness */
	 , (802731,  6060,      2) /* Legendary Quickness */
	 , (802731,  6075,      2) /* Legendary Quickness */
	 , (802731,  6074,      2) /* Legendary Quickness */
	 , (802731,  6064,      2) /* Legendary Quickness */;