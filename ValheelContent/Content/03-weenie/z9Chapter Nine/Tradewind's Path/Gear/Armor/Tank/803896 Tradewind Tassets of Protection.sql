DELETE FROM `weenie` WHERE `class_Id` = 803896;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803896, 'Tradewind Tassets of Protection', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803896,   1,          2) /* ItemType - Armor */
     , (803896,   3,         93) /* PaletteTemplate - Silver */
     , (803896,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (803896,   5,        280) /* EncumbranceVal */
     , (803896,   8,        260) /* Mass */
     , (803896,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (803896,  16,          1) /* ItemUseable - No */
	 , (803896,  18,        512) /* UiEffects - Magical */
     , (803896,  19,     250000) /* Value */
     , (803896,  27,         32) /* ArmorType - Chainmail */
     , (803896,  28,       5000) /* ArmorLevel */
     , (803896,  33,          1) /* Bonded - Bonded */
     , (803896,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803896, 106,        999) /* ItemSpellcraft */
     , (803896, 107,       2000) /* ItemCurMana */
     , (803896, 108,       2000) /* ItemMaxMana */
     , (803896, 114,          0) /* Attuned - Attuned */
	 , (803896, 158,          7) /* WieldRequirements - Level */
     , (803896, 160,      10000) /* WieldDifficulty */
     , (803896, 169,  252313860) /* TsysMutationData */
     , (803896, 265,         23) /* Defenders */
	 , (803896, 370,        500) /* Damage */
	 , (803896, 371,        750) /* Damage Resist */
	 , (803896, 374,        500) /* Critical Damage */
	 , (803896, 375,        750) /* Critical Damage Resist */
	 , (803896, 376,        500) /* Heal Boost */
	 , (803896, 379,        750) /* Vitality */
	 , (803896, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803896,  22, True ) /* Inscribable */
     , (803896, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803896,  12,    0.66) /* Shade */
     , (803896,  13,       3) /* ArmorModVsSlash */
     , (803896,  14,       3) /* ArmorModVsPierce */
     , (803896,  15,       3) /* ArmorModVsBludgeon */
     , (803896,  16,       3) /* ArmorModVsCold */
     , (803896,  17,       3) /* ArmorModVsFire */
     , (803896,  18,       3) /* ArmorModVsAcid */
     , (803896,  19,       3) /* ArmorModVsElectric */
     , (803896,  29,     1.5) /* WeaponDefense */
     , (803896, 110,       1) /* BulkMod */
     , (803896, 111,       1) /* SizeMod */
     , (803896, 149,     1.5) /* WeaponMissileDefense */
     , (803896, 150,     1.5) /* WeaponMagicDefense */
	 , (803896, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803896,   1, 'Tradewind Tassets of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803896,   1,   33554656) /* Setup */
     , (803896,   3,  536870932) /* SoundTable */
     , (803896,   7,  268437333) /* ClothingBase */
     , (803896,   8,  100690251) /* Icon */
     , (803896,  22,  872415275) /* PhysicsEffectTable */
     , (803896,  36,  234881042) /* MutateFilter */
	 , (803896,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803896,  3687,      2) /* Legendary Slashing Ward */
	 , (803896,  3679,      2) /* Legendary Acid Bane */
     , (803896,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803896,  3703,      2) /* Legendary Flame Bane */
     , (803896,  3706,      2) /* Legendary Frost Bane */
     , (803896,  3710,      2) /* Legendary Impenetrability */
     , (803896,  3728,      2) /* Legendary Piercing Bane */
     , (803896,  3686,      2) /* Legendary Slashing Bane */
     , (803896,  3718,      2) /* Legendary Storm Bane */
     , (803896,  3694,      2) /* Legendary Coordination */
     , (803896,  6057,      2) /* Legendary Coordination */
     , (803896,  6062,      2) /* Legendary Coordination */
     , (803896,  6039,      2) /* Legendary Coordination */
     , (803896,  6042,      2) /* Legendary Coordination */
     , (803896,  6041,      2) /* Legendary Coordination */
     , (803896,  6068,      2) /* Legendary Coordination */;