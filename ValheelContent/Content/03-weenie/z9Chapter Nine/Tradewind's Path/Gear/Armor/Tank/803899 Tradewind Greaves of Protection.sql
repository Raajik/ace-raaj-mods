DELETE FROM `weenie` WHERE `class_Id` = 803899;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803899, 'Tradewind Greaves of Protection', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803899,   1,          2) /* ItemType - Armor */
     , (803899,   3,         93) /* PaletteTemplate - Silver */
     , (803899,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (803899,   5,        280) /* EncumbranceVal */
     , (803899,   8,        260) /* Mass */
     , (803899,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (803899,  16,          1) /* ItemUseable - No */
	 , (803899,  18,        512) /* UiEffects - Magical */
     , (803899,  19,     250000) /* Value */
     , (803899,  27,         32) /* ArmorType - Chainmail */
     , (803899,  28,       5000) /* ArmorLevel */
     , (803899,  33,          1) /* Bonded - Bonded */
     , (803899,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803899, 106,        999) /* ItemSpellcraft */
     , (803899, 107,       2000) /* ItemCurMana */
     , (803899, 108,       2000) /* ItemMaxMana */
     , (803899, 114,          0) /* Attuned - Attuned */
	 , (803899, 158,          7) /* WieldRequirements - Level */
     , (803899, 160,      10000) /* WieldDifficulty */
     , (803899, 169,  252313860) /* TsysMutationData */
     , (803899, 265,         19) /* Defenders */
	 , (803899, 370,        500) /* Damage */
	 , (803899, 371,        750) /* Damage Resist */
	 , (803899, 374,        500) /* Critical Damage */
	 , (803899, 375,        750) /* Critical Damage Resist */
	 , (803899, 376,        500) /* Heal Boost */
	 , (803899, 379,        750) /* Vitality */
	 , (803899, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803899,  22, True ) /* Inscribable */
     , (803899, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803899,  12,    0.66) /* Shade */
     , (803899,  13,       3) /* ArmorModVsSlash */
     , (803899,  14,       3) /* ArmorModVsPierce */
     , (803899,  15,       3) /* ArmorModVsBludgeon */
     , (803899,  16,       3) /* ArmorModVsCold */
     , (803899,  17,       3) /* ArmorModVsFire */
     , (803899,  18,       3) /* ArmorModVsAcid */
     , (803899,  19,       3) /* ArmorModVsElectric */
     , (803899,  29,     1.5) /* WeaponDefense */
     , (803899, 110,       1) /* BulkMod */
     , (803899, 111,       1) /* SizeMod */
     , (803899, 149,     1.5) /* WeaponMissileDefense */
     , (803899, 150,     1.5) /* WeaponMagicDefense */
	 , (803899, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803899,   1, 'Tradewind Greaves of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803899,   1,   33554641) /* Setup */
     , (803899,   3,  536870932) /* SoundTable */
     , (803899,   7,  268437329) /* ClothingBase */
     , (803899,   8,  100690247) /* Icon */
     , (803899,  22,  872415275) /* PhysicsEffectTable */
     , (803899,  36,  234881042) /* MutateFilter */
	 , (803899,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803899,  3707,      2) /* Legendary Healing Prowess */
	 , (803899,  3702,      2) /* Legendary Flame Ward */
	 , (803899,  3679,      2) /* Legendary Acid Bane */
     , (803899,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803899,  3703,      2) /* Legendary Flame Bane */
     , (803899,  3706,      2) /* Legendary Frost Bane */
     , (803899,  3710,      2) /* Legendary Impenetrability */
     , (803899,  3728,      2) /* Legendary Piercing Bane */
     , (803899,  3686,      2) /* Legendary Slashing Bane */
	 , (803899,  3718,      2) /* Legendary Storm Bane */
	 , (803899,  3738,      2) /* Legendary Strength */
	 , (803899,  3684,      2) /* Prodigal Armor */
	 , (803899,  3699,      2) /* Prodigal Defender */
	 , (803899,  3723,      2) /* Prodigal Magic Resistence */
	 , (803899,  6093,      2) /* Prodigal Magic Resistence */
	 , (803899,  6097,      2) /* Prodigal Magic Resistence */
	 , (803899,  6096,      2) /* Prodigal Magic Resistence */
	 , (803899,  6090,      2) /* Prodigal Magic Resistence */
	 , (803899,  6088,      2) /* Prodigal Magic Resistence */
	 , (803899,  6099,      2) /* Prodigal Magic Resistence */
	 , (803899,  6092,      2) /* Prodigal Magic Resistence */;