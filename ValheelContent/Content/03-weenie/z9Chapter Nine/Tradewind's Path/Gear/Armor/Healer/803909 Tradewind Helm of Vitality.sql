DELETE FROM `weenie` WHERE `class_Id` = 803909;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803909, 'Tradewind Helm of Vitality', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803909,   1,          2) /* ItemType - Armor */
     , (803909,   3,         93) /* PaletteTemplate - Silver */
     , (803909,   4,      16384) /* ClothingPriority - Head */
     , (803909,   5,        140) /* EncumbranceVal */
     , (803909,   8,        140) /* Mass */
     , (803909,   9,          1) /* ValidLocations - HeadWear */
     , (803909,  16,          1) /* ItemUseable - No */
     , (803909,  18,        512) /* UiEffects - Magical */
     , (803909,  19,     250000) /* Value */
     , (803909,  27,         32) /* ArmorType - Chainmail */
     , (803909,  28,       5000) /* ArmorLevel */
     , (803909,  33,          1) /* Bonded - Bonded */
     , (803909,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803909, 106,        999) /* ItemSpellcraft */
     , (803909, 107,       2000) /* ItemCurMana */
     , (803909, 108,       2000) /* ItemMaxMana */ 
     , (803909, 114,          0) /* Attuned - Attuned */
	 , (803909, 158,          7) /* WieldRequirements - Level */
     , (803909, 160,      10000) /* WieldDifficulty */
     , (803909, 169,  168427780) /* TsysMutationData */
     , (803909, 265,         29) /* Defenders */
	 , (803909, 370,        500) /* Damage */
	 , (803909, 371,        500) /* Damage Resist */
	 , (803909, 374,        500) /* Critical Damage */
	 , (803909, 375,        500) /* Critical Damage Resist */
	 , (803909, 376,        750) /* Heal Boost */
	 , (803909, 379,        750) /* Vitality */
	 , (803909, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803909,  22, True ) /* Inscribable */
     , (803909, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803909,  12,    0.66) /* Shade */
     , (803909,  13,       3) /* ArmorModVsSlash */
     , (803909,  14,       3) /* ArmorModVsPierce */
     , (803909,  15,       3) /* ArmorModVsBludgeon */
     , (803909,  16,       3) /* ArmorModVsCold */
     , (803909,  17,       3) /* ArmorModVsFire */
     , (803909,  18,       3) /* ArmorModVsAcid */
     , (803909,  19,       3) /* ArmorModVsElectric */
     , (803909,  29,     1.5) /* WeaponDefense */
     , (803909, 110,       1) /* BulkMod */
     , (803909, 111,       1) /* SizeMod */
     , (803909, 149,     1.5) /* WeaponMissileDefense */
     , (803909, 150,     1.5) /* WeaponMagicDefense */
	 , (803909, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803909,   1, 'Tradewind Helm of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803909,   1,   33560112) /* Setup */
     , (803909,   3,  536870932) /* SoundTable */
     , (803909,   7,  268437312) /* ClothingBase */
     , (803909,   8,  100690167) /* Icon */
     , (803909,  22,  872415275) /* PhysicsEffectTable */
     , (803909,  36,  234881042) /* MutateFilter */
     , (803909,  52,  100667892) /* IconUnderlay */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803909,  3682,      2) /* Legendary Arcane Prowess */
     , (803909,  3711,      2) /* Legendary Impregnability */
     , (803909,  3724,      2) /* Legendary Mana Conversion Prowess */
     , (803909,  3725,      2) /* Legendary Mana Gain */
	 , (803909,  3719,      2) /* Legendary Storm Ward */
	 , (803909,  3679,      2) /* Legendary Acid Bane */
     , (803909,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803909,  3703,      2) /* Legendary Flame Bane */
     , (803909,  3706,      2) /* Legendary Frost Bane */
     , (803909,  3710,      2) /* Legendary Impenetrability */
     , (803909,  3728,      2) /* Legendary Piercing Bane */
     , (803909,  3686,      2) /* Legendary Slashing Bane */
     , (803909,  3718,      2) /* Legendary Storm Bane */
	 , (803909,  3730,      2) /* Legendary Quickness */
	 , (803909,  6056,      2) /* Legendary Quickness */
	 , (803909,  6046,      2) /* Legendary Quickness */
	 , (803909,  6060,      2) /* Legendary Quickness */
	 , (803909,  6075,      2) /* Legendary Quickness */
	 , (803909,  6074,      2) /* Legendary Quickness */
	 , (803909,  6064,      2) /* Legendary Quickness */;