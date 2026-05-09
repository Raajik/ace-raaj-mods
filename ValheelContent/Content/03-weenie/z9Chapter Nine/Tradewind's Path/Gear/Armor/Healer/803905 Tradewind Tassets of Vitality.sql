DELETE FROM `weenie` WHERE `class_Id` = 803905;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803905, 'Tradewind Tassets of Vitality', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803905,   1,          2) /* ItemType - Armor */
     , (803905,   3,         93) /* PaletteTemplate - Silver */
     , (803905,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (803905,   5,        280) /* EncumbranceVal */
     , (803905,   8,        260) /* Mass */
     , (803905,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (803905,  16,          1) /* ItemUseable - No */
	 , (803905,  18,        512) /* UiEffects - Magical */
     , (803905,  19,     250000) /* Value */
     , (803905,  27,         32) /* ArmorType - Chainmail */
     , (803905,  28,       5000) /* ArmorLevel */
     , (803905,  33,          1) /* Bonded - Bonded */
     , (803905,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803905, 106,        999) /* ItemSpellcraft */
     , (803905, 107,       2000) /* ItemCurMana */
     , (803905, 108,       2000) /* ItemMaxMana */
     , (803905, 114,          0) /* Attuned - Attuned */
	 , (803905, 158,          7) /* WieldRequirements - Level */
     , (803905, 160,      10000) /* WieldDifficulty */
     , (803905, 169,  252313860) /* TsysMutationData */
     , (803905, 265,         23) /* Defenders */
	 , (803905, 370,        500) /* Damage */
	 , (803905, 371,        500) /* Damage Resist */
	 , (803905, 374,        500) /* Critical Damage */
	 , (803905, 375,        500) /* Critical Damage Resist */
	 , (803905, 376,        750) /* Heal Boost */
	 , (803905, 379,        750) /* Vitality */
	 , (803905, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803905,  22, True ) /* Inscribable */
     , (803905, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803905,  12,    0.66) /* Shade */
     , (803905,  13,       3) /* ArmorModVsSlash */
     , (803905,  14,       3) /* ArmorModVsPierce */
     , (803905,  15,       3) /* ArmorModVsBludgeon */
     , (803905,  16,       3) /* ArmorModVsCold */
     , (803905,  17,       3) /* ArmorModVsFire */
     , (803905,  18,       3) /* ArmorModVsAcid */
     , (803905,  19,       3) /* ArmorModVsElectric */
     , (803905,  29,     1.5) /* WeaponDefense */
     , (803905, 110,       1) /* BulkMod */
     , (803905, 111,       1) /* SizeMod */
     , (803905, 149,     1.5) /* WeaponMissileDefense */
     , (803905, 150,     1.5) /* WeaponMagicDefense */
	 , (803905, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803905,   1, 'Tradewind Tassets of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803905,   1,   33554656) /* Setup */
     , (803905,   3,  536870932) /* SoundTable */
     , (803905,   7,  268437315) /* ClothingBase */
     , (803905,   8,  100690170) /* Icon */
     , (803905,  22,  872415275) /* PhysicsEffectTable */
     , (803905,  36,  234881042) /* MutateFilter */
	 , (803905,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803905,  3687,      2) /* Legendary Slashing Ward */
	 , (803905,  3679,      2) /* Legendary Acid Bane */
     , (803905,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803905,  3703,      2) /* Legendary Flame Bane */
     , (803905,  3706,      2) /* Legendary Frost Bane */
     , (803905,  3710,      2) /* Legendary Impenetrability */
     , (803905,  3728,      2) /* Legendary Piercing Bane */
     , (803905,  3686,      2) /* Legendary Slashing Bane */
     , (803905,  3718,      2) /* Legendary Storm Bane */
     , (803905,  3694,      2) /* Legendary Coordination */
     , (803905,  6057,      2) /* Legendary Coordination */
     , (803905,  6062,      2) /* Legendary Coordination */
     , (803905,  6039,      2) /* Legendary Coordination */
     , (803905,  6042,      2) /* Legendary Coordination */
     , (803905,  6041,      2) /* Legendary Coordination */
     , (803905,  6068,      2) /* Legendary Coordination */;