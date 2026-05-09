DELETE FROM `weenie` WHERE `class_Id` = 803886;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803886, 'Tradewind Tassets of Destruction', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803886,   1,          2) /* ItemType - Armor */
     , (803886,   3,         93) /* PaletteTemplate - Silver */
     , (803886,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (803886,   5,        280) /* EncumbranceVal */
     , (803886,   8,        260) /* Mass */
     , (803886,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (803886,  16,          1) /* ItemUseable - No */
	 , (803886,  18,        512) /* UiEffects - Magical */
     , (803886,  19,     250000) /* Value */
     , (803886,  27,         32) /* ArmorType - Chainmail */
     , (803886,  28,       5000) /* ArmorLevel */
     , (803886,  33,          1) /* Bonded - Bonded */
     , (803886,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803886, 106,        999) /* ItemSpellcraft */
     , (803886, 107,       2000) /* ItemCurMana */
     , (803886, 108,       2000) /* ItemMaxMana */
     , (803886, 114,          0) /* Attuned - Attuned */
	 , (803886, 158,          7) /* WieldRequirements - Level */
     , (803886, 160,      10000) /* WieldDifficulty */
     , (803886, 169,  252313860) /* TsysMutationData */
     , (803886, 265,         23) /* Defenders */
	 , (803886, 370,        750) /* Damage */
	 , (803886, 371,        500) /* Damage Resist */
	 , (803886, 374,        750) /* Critical Damage */
	 , (803886, 375,        500) /* Critical Damage Resist */
	 , (803886, 376,        500) /* Heal Boost */
	 , (803886, 379,        500) /* Vitality */
	 , (803886, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803886,  22, True ) /* Inscribable */
     , (803886, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803886,  12,    0.66) /* Shade */
     , (803886,  13,       3) /* ArmorModVsSlash */
     , (803886,  14,       3) /* ArmorModVsPierce */
     , (803886,  15,       3) /* ArmorModVsBludgeon */
     , (803886,  16,       3) /* ArmorModVsCold */
     , (803886,  17,       3) /* ArmorModVsFire */
     , (803886,  18,       3) /* ArmorModVsAcid */
     , (803886,  19,       3) /* ArmorModVsElectric */
     , (803886,  29,     1.5) /* WeaponDefense */
     , (803886, 110,       1) /* BulkMod */
     , (803886, 111,       1) /* SizeMod */
     , (803886, 149,     1.5) /* WeaponMissileDefense */
     , (803886, 150,     1.5) /* WeaponMagicDefense */
	 , (803886, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803886,   1, 'Tradewind Tassets of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803886,   1,   33554656) /* Setup */
     , (803886,   3,  536870932) /* SoundTable */
     , (803886,   7,  268437324) /* ClothingBase */
     , (803886,   8,  100690229) /* Icon */
     , (803886,  22,  872415275) /* PhysicsEffectTable */
     , (803886,  36,  234881042) /* MutateFilter */
	 , (803886,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803886,  3687,      2) /* Legendary Slashing Ward */
	 , (803886,  3679,      2) /* Legendary Acid Bane */
     , (803886,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803886,  3703,      2) /* Legendary Flame Bane */
     , (803886,  3706,      2) /* Legendary Frost Bane */
     , (803886,  3710,      2) /* Legendary Impenetrability */
     , (803886,  3728,      2) /* Legendary Piercing Bane */
     , (803886,  3686,      2) /* Legendary Slashing Bane */
     , (803886,  3718,      2) /* Legendary Storm Bane */
     , (803886,  3694,      2) /* Legendary Coordination */
     , (803886,  6057,      2) /* Legendary Coordination */
     , (803886,  6062,      2) /* Legendary Coordination */
     , (803886,  6039,      2) /* Legendary Coordination */
     , (803886,  6042,      2) /* Legendary Coordination */
     , (803886,  6041,      2) /* Legendary Coordination */
     , (803886,  6068,      2) /* Legendary Coordination */;