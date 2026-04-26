DELETE FROM `weenie` WHERE `class_Id` = 803637;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803637, 'CageHead', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803637,   1,          2) /* ItemType - Armor */
     , (803637,   3,         93) /* PaletteTemplate - Silver */
     , (803637,   4,      16384) /* ClothingPriority - Head */
     , (803637,   5,        140) /* EncumbranceVal */
     , (803637,   8,        140) /* Mass */
     , (803637,   9,          1) /* ValidLocations - HeadWear */
     , (803637,  16,          1) /* ItemUseable - No */
     , (803637,  18,        512) /* UiEffects - Magical */
     , (803637,  19,     250000) /* Value */
     , (803637,  27,         32) /* ArmorType - Chainmail */
     , (803637,  28,       4500) /* ArmorLevel */
     , (803637,  33,          1) /* Bonded - Bonded */
     , (803637,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803637, 106,        999) /* ItemSpellcraft */
     , (803637, 107,       2000) /* ItemCurMana */
     , (803637, 108,       2000) /* ItemMaxMana */ 
     , (803637, 114,          1) /* Attuned - Attuned */
     , (803637, 169,  168427780) /* TsysMutationData */
     , (803637, 265,         29) /* Defenders */
	 , (803637, 370,        250) /* Damage */
	 , (803637, 371,        250) /* Damage Resist */
	 , (803637, 374,        250) /* Critical Damage */
	 , (803637, 375,        250) /* Critical Damage Resist */
	 , (803637, 376,        250) /* Heal Boost */
	 , (803637, 379,        250) /* Vitality */
	 , (803637, 9041,         4) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803637,  22, True ) /* Inscribable */
     , (803637, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803637,  12,  0.66) /* Shade */
     , (803637,  13,     3) /* ArmorModVsSlash */
     , (803637,  14,     3) /* ArmorModVsPierce */
     , (803637,  15,     3) /* ArmorModVsBludgeon */
     , (803637,  16,     3) /* ArmorModVsCold */
     , (803637,  17,     3) /* ArmorModVsFire */
     , (803637,  18,     3) /* ArmorModVsAcid */
     , (803637,  19,     3) /* ArmorModVsElectric */
     , (803637,  29,   1.5) /* WeaponDefense */
     , (803637,  39,     1) /* DefaultScale */
     , (803637, 110,     1) /* BulkMod */
     , (803637, 111,     1) /* SizeMod */
     , (803637, 149,   1.5) /* WeaponMissileDefense */
     , (803637, 150,   1.5) /* WeaponMagicDefense */
	 , (803637, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803637,   1, 'Cage Head') /* Name */
     , (803637,  33, 'CageHead') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803637,   1,   33558577) /* Setup */
     , (803637,   3,  536870932) /* SoundTable */
     , (803637,   6,   67108990) /* PaletteBase */
     , (803637,   7,  268436784) /* ClothingBase */
     , (803637,   8,  100675753) /* Icon */
     , (803637,  22,  872415275) /* PhysicsEffectTable */
     , (803637,  52,  100686604) /* IconUnderlay */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803637,  3682,      2) /* Legendary Arcane Prowess */
     , (803637,  3711,      2) /* Legendary Impregnability */
     , (803637,  3724,      2) /* Legendary Mana Conversion Prowess */
     , (803637,  3725,      2) /* Legendary Mana Gain */
	 , (803637,  3719,      2) /* Legendary Storm Ward */
	 , (803637,  3679,      2) /* Legendary Acid Bane */
     , (803637,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803637,  3703,      2) /* Legendary Flame Bane */
     , (803637,  3706,      2) /* Legendary Frost Bane */
     , (803637,  3710,      2) /* Legendary Impenetrability */
     , (803637,  3728,      2) /* Legendary Piercing Bane */
     , (803637,  3686,      2) /* Legendary Slashing Bane */
     , (803637,  3718,      2) /* Legendary Storm Bane */
	 , (803637,  3730,      2) /* Legendary Quickness */
	 , (803637,  6056,      2) /* Legendary Quickness */
	 , (803637,  6046,      2) /* Legendary Quickness */
	 , (803637,  6060,      2) /* Legendary Quickness */
	 , (803637,  6075,      2) /* Legendary Quickness */
	 , (803637,  6074,      2) /* Legendary Quickness */
	 , (803637,  6064,      2) /* Legendary Quickness */;