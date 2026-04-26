DELETE FROM `weenie` WHERE `class_Id` = 803889;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803889, 'Tradewind Greaves of Destruction', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803889,   1,          2) /* ItemType - Armor */
     , (803889,   3,         93) /* PaletteTemplate - Silver */
     , (803889,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (803889,   5,        280) /* EncumbranceVal */
     , (803889,   8,        260) /* Mass */
     , (803889,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (803889,  16,          1) /* ItemUseable - No */
	 , (803889,  18,        512) /* UiEffects - Magical */
     , (803889,  19,     250000) /* Value */
     , (803889,  27,         32) /* ArmorType - Chainmail */
     , (803889,  28,       5000) /* ArmorLevel */
     , (803889,  33,          1) /* Bonded - Bonded */
     , (803889,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803889, 106,        999) /* ItemSpellcraft */
     , (803889, 107,       2000) /* ItemCurMana */
     , (803889, 108,       2000) /* ItemMaxMana */
     , (803889, 114,          0) /* Attuned - Attuned */
	 , (803889, 158,          7) /* WieldRequirements - Level */
     , (803889, 160,      10000) /* WieldDifficulty */
     , (803889, 169,  252313860) /* TsysMutationData */
     , (803889, 265,         19) /* Defenders */
	 , (803889, 370,        750) /* Damage */
	 , (803889, 371,        500) /* Damage Resist */
	 , (803889, 374,        750) /* Critical Damage */
	 , (803889, 375,        500) /* Critical Damage Resist */
	 , (803889, 376,        500) /* Heal Boost */
	 , (803889, 379,        500) /* Vitality */
	 , (803889, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803889,  22, True ) /* Inscribable */
     , (803889, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803889,  12,    0.66) /* Shade */
     , (803889,  13,       3) /* ArmorModVsSlash */
     , (803889,  14,       3) /* ArmorModVsPierce */
     , (803889,  15,       3) /* ArmorModVsBludgeon */
     , (803889,  16,       3) /* ArmorModVsCold */
     , (803889,  17,       3) /* ArmorModVsFire */
     , (803889,  18,       3) /* ArmorModVsAcid */
     , (803889,  19,       3) /* ArmorModVsElectric */
     , (803889,  29,     1.5) /* WeaponDefense */
     , (803889, 110,       1) /* BulkMod */
     , (803889, 111,       1) /* SizeMod */
     , (803889, 149,     1.5) /* WeaponMissileDefense */
     , (803889, 150,     1.5) /* WeaponMagicDefense */
	 , (803889, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803889,   1, 'Tradewind Greaves of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803889,   1,   33554641) /* Setup */
     , (803889,   3,  536870932) /* SoundTable */
     , (803889,   7,  268437320) /* ClothingBase */
     , (803889,   8,  100690225) /* Icon */
     , (803889,  22,  872415275) /* PhysicsEffectTable */
     , (803889,  36,  234881042) /* MutateFilter */
	 , (803889,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803889,  3707,      2) /* Legendary Healing Prowess */
	 , (803889,  3702,      2) /* Legendary Flame Ward */
	 , (803889,  3679,      2) /* Legendary Acid Bane */
     , (803889,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803889,  3703,      2) /* Legendary Flame Bane */
     , (803889,  3706,      2) /* Legendary Frost Bane */
     , (803889,  3710,      2) /* Legendary Impenetrability */
     , (803889,  3728,      2) /* Legendary Piercing Bane */
     , (803889,  3686,      2) /* Legendary Slashing Bane */
	 , (803889,  3718,      2) /* Legendary Storm Bane */
	 , (803889,  3738,      2) /* Legendary Strength */
	 , (803889,  3684,      2) /* Prodigal Armor */
	 , (803889,  3699,      2) /* Prodigal Defender */
	 , (803889,  3723,      2) /* Prodigal Magic Resistence */
	 , (803889,  6093,      2) /* Prodigal Magic Resistence */
	 , (803889,  6097,      2) /* Prodigal Magic Resistence */
	 , (803889,  6096,      2) /* Prodigal Magic Resistence */
	 , (803889,  6090,      2) /* Prodigal Magic Resistence */
	 , (803889,  6088,      2) /* Prodigal Magic Resistence */
	 , (803889,  6099,      2) /* Prodigal Magic Resistence */
	 , (803889,  6092,      2) /* Prodigal Magic Resistence */;