DELETE FROM `weenie` WHERE `class_Id` = 803681;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803681, 'CageHeadTest', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803681,   1,          2) /* ItemType - Armor */
     , (803681,   3,         93) /* PaletteTemplate - Silver */
     , (803681,   4,      16384) /* ClothingPriority - Head */
     , (803681,   5,        140) /* EncumbranceVal */
     , (803681,   8,        140) /* Mass */
     , (803681,   9,          1) /* ValidLocations - HeadWear */
     , (803681,  16,          1) /* ItemUseable - No */
     , (803681,  18,        512) /* UiEffects - Magical */
     , (803681,  19,     250000) /* Value */
     , (803681,  27,         32) /* ArmorType - Chainmail */
     , (803681,  28,       4500) /* ArmorLevel */
     , (803681,  33,          1) /* Bonded - Bonded */
     , (803681,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803681, 106,        999) /* ItemSpellcraft */
     , (803681, 107,       2000) /* ItemCurMana */
     , (803681, 108,       2000) /* ItemMaxMana */ 
     , (803681, 114,          1) /* Attuned - Attuned */
     , (803681, 169,  168427780) /* TsysMutationData */
     , (803681, 265,         29) /* Defenders */
	 , (803681, 370,        250) /* Damage */
	 , (803681, 371,        250) /* Damage Resist */
	 , (803681, 374,        250) /* Critical Damage */
	 , (803681, 375,        250) /* Critical Damage Resist */
	 , (803681, 376,        250) /* Heal Boost */
	 , (803681, 379,        250) /* Vitality */
	 , (803681, 9041,         4) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803681,  22, True ) /* Inscribable */
     , (803681, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803681,  12,  0.66) /* Shade */
     , (803681,  13,     3) /* ArmorModVsSlash */
     , (803681,  14,     3) /* ArmorModVsPierce */
     , (803681,  15,     3) /* ArmorModVsBludgeon */
     , (803681,  16,     3) /* ArmorModVsCold */
     , (803681,  17,     3) /* ArmorModVsFire */
     , (803681,  18,     3) /* ArmorModVsAcid */
     , (803681,  19,     3) /* ArmorModVsElectric */
     , (803681,  29,   1.5) /* WeaponDefense */
     , (803681,  39,     1) /* DefaultScale */
     , (803681, 110,     1) /* BulkMod */
     , (803681, 111,     1) /* SizeMod */
     , (803681, 149,   1.5) /* WeaponMissileDefense */
     , (803681, 150,   1.5) /* WeaponMagicDefense */
	 , (803681, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803681,   1, 'Cage Head') /* Name */
     , (803681,  33, 'CageHead') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803681,   1,   33560700) /* Setup */
     , (803681,   8,  100675753) /* Icon */
     , (803681,  52,  100686604) /* IconUnderlay */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803681,  3682,      2) /* Legendary Arcane Prowess */
     , (803681,  3711,      2) /* Legendary Impregnability */
     , (803681,  3724,      2) /* Legendary Mana Conversion Prowess */
     , (803681,  3725,      2) /* Legendary Mana Gain */
	 , (803681,  3719,      2) /* Legendary Storm Ward */
	 , (803681,  3679,      2) /* Legendary Acid Bane */
     , (803681,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803681,  3703,      2) /* Legendary Flame Bane */
     , (803681,  3706,      2) /* Legendary Frost Bane */
     , (803681,  3710,      2) /* Legendary Impenetrability */
     , (803681,  3728,      2) /* Legendary Piercing Bane */
     , (803681,  3686,      2) /* Legendary Slashing Bane */
     , (803681,  3718,      2) /* Legendary Storm Bane */
	 , (803681,  3730,      2) /* Legendary Quickness */
	 , (803681,  6056,      2) /* Legendary Quickness */
	 , (803681,  6046,      2) /* Legendary Quickness */
	 , (803681,  6060,      2) /* Legendary Quickness */
	 , (803681,  6075,      2) /* Legendary Quickness */
	 , (803681,  6074,      2) /* Legendary Quickness */
	 , (803681,  6064,      2) /* Legendary Quickness */;