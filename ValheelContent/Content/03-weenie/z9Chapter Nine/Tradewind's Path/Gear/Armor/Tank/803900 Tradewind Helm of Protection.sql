DELETE FROM `weenie` WHERE `class_Id` = 803900;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803900, 'Tradewind Helm of Protection', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803900,   1,          2) /* ItemType - Armor */
     , (803900,   3,         93) /* PaletteTemplate - Silver */
     , (803900,   4,      16384) /* ClothingPriority - Head */
     , (803900,   5,        140) /* EncumbranceVal */
     , (803900,   8,        140) /* Mass */
     , (803900,   9,          1) /* ValidLocations - HeadWear */
     , (803900,  16,          1) /* ItemUseable - No */
     , (803900,  18,        512) /* UiEffects - Magical */
     , (803900,  19,     250000) /* Value */
     , (803900,  27,         32) /* ArmorType - Chainmail */
     , (803900,  28,       5000) /* ArmorLevel */
     , (803900,  33,          1) /* Bonded - Bonded */
     , (803900,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803900, 106,        999) /* ItemSpellcraft */
     , (803900, 107,       2000) /* ItemCurMana */
     , (803900, 108,       2000) /* ItemMaxMana */ 
     , (803900, 114,          0) /* Attuned - Attuned */
	 , (803900, 158,          7) /* WieldRequirements - Level */
     , (803900, 160,      10000) /* WieldDifficulty */
     , (803900, 169,  168427780) /* TsysMutationData */
     , (803900, 265,         29) /* Defenders */
	 , (803900, 370,        500) /* Damage */
	 , (803900, 371,        750) /* Damage Resist */
	 , (803900, 374,        500) /* Critical Damage */
	 , (803900, 375,        750) /* Critical Damage Resist */
	 , (803900, 376,        500) /* Heal Boost */
	 , (803900, 379,        750) /* Vitality */
	 , (803900, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803900,  22, True ) /* Inscribable */
     , (803900, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803900,  12,    0.66) /* Shade */
     , (803900,  13,       3) /* ArmorModVsSlash */
     , (803900,  14,       3) /* ArmorModVsPierce */
     , (803900,  15,       3) /* ArmorModVsBludgeon */
     , (803900,  16,       3) /* ArmorModVsCold */
     , (803900,  17,       3) /* ArmorModVsFire */
     , (803900,  18,       3) /* ArmorModVsAcid */
     , (803900,  19,       3) /* ArmorModVsElectric */
     , (803900,  29,     1.5) /* WeaponDefense */
     , (803900, 110,       1) /* BulkMod */
     , (803900, 111,       1) /* SizeMod */
     , (803900, 149,     1.5) /* WeaponMissileDefense */
     , (803900, 150,     1.5) /* WeaponMagicDefense */
	 , (803900, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803900,   1, 'Tradewind Helm of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803900,   1,   33560112) /* Setup */
     , (803900,   3,  536870932) /* SoundTable */
     , (803900,   7,  268437330) /* ClothingBase */
     , (803900,   8,  100690248) /* Icon */
     , (803900,  22,  872415275) /* PhysicsEffectTable */
     , (803900,  36,  234881042) /* MutateFilter */
     , (803900,  52,  100667892) /* IconUnderlay */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803900,  3682,      2) /* Legendary Arcane Prowess */
     , (803900,  3711,      2) /* Legendary Impregnability */
     , (803900,  3724,      2) /* Legendary Mana Conversion Prowess */
     , (803900,  3725,      2) /* Legendary Mana Gain */
	 , (803900,  3719,      2) /* Legendary Storm Ward */
	 , (803900,  3679,      2) /* Legendary Acid Bane */
     , (803900,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803900,  3703,      2) /* Legendary Flame Bane */
     , (803900,  3706,      2) /* Legendary Frost Bane */
     , (803900,  3710,      2) /* Legendary Impenetrability */
     , (803900,  3728,      2) /* Legendary Piercing Bane */
     , (803900,  3686,      2) /* Legendary Slashing Bane */
     , (803900,  3718,      2) /* Legendary Storm Bane */
	 , (803900,  3730,      2) /* Legendary Quickness */
	 , (803900,  6056,      2) /* Legendary Quickness */
	 , (803900,  6046,      2) /* Legendary Quickness */
	 , (803900,  6060,      2) /* Legendary Quickness */
	 , (803900,  6075,      2) /* Legendary Quickness */
	 , (803900,  6074,      2) /* Legendary Quickness */
	 , (803900,  6064,      2) /* Legendary Quickness */;