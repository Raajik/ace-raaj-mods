DELETE FROM `weenie` WHERE `class_Id` = 803908;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803908, 'Tradewind Greaves of Vitality', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803908,   1,          2) /* ItemType - Armor */
     , (803908,   3,         93) /* PaletteTemplate - Silver */
     , (803908,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (803908,   5,        280) /* EncumbranceVal */
     , (803908,   8,        260) /* Mass */
     , (803908,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (803908,  16,          1) /* ItemUseable - No */
	 , (803908,  18,        512) /* UiEffects - Magical */
     , (803908,  19,     250000) /* Value */
     , (803908,  27,         32) /* ArmorType - Chainmail */
     , (803908,  28,       5000) /* ArmorLevel */
     , (803908,  33,          1) /* Bonded - Bonded */
     , (803908,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803908, 106,        999) /* ItemSpellcraft */
     , (803908, 107,       2000) /* ItemCurMana */
     , (803908, 108,       2000) /* ItemMaxMana */
     , (803908, 114,          0) /* Attuned - Attuned */
	 , (803908, 158,          7) /* WieldRequirements - Level */
     , (803908, 160,      10000) /* WieldDifficulty */
     , (803908, 169,  252313860) /* TsysMutationData */
     , (803908, 265,         19) /* Defenders */
	 , (803908, 370,        500) /* Damage */
	 , (803908, 371,        500) /* Damage Resist */
	 , (803908, 374,        500) /* Critical Damage */
	 , (803908, 375,        500) /* Critical Damage Resist */
	 , (803908, 376,        750) /* Heal Boost */
	 , (803908, 379,        750) /* Vitality */
	 , (803908, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803908,  22, True ) /* Inscribable */
     , (803908, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803908,  12,    0.66) /* Shade */
     , (803908,  13,       3) /* ArmorModVsSlash */
     , (803908,  14,       3) /* ArmorModVsPierce */
     , (803908,  15,       3) /* ArmorModVsBludgeon */
     , (803908,  16,       3) /* ArmorModVsCold */
     , (803908,  17,       3) /* ArmorModVsFire */
     , (803908,  18,       3) /* ArmorModVsAcid */
     , (803908,  19,       3) /* ArmorModVsElectric */
     , (803908,  29,     1.5) /* WeaponDefense */
     , (803908, 110,       1) /* BulkMod */
     , (803908, 111,       1) /* SizeMod */
     , (803908, 149,     1.5) /* WeaponMissileDefense */
     , (803908, 150,     1.5) /* WeaponMagicDefense */
	 , (803908, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803908,   1, 'Tradewind Greaves of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803908,   1,   33554641) /* Setup */
     , (803908,   3,  536870932) /* SoundTable */
     , (803908,   7,  268437311) /* ClothingBase */
     , (803908,   8,  100690166) /* Icon */
     , (803908,  22,  872415275) /* PhysicsEffectTable */
     , (803908,  36,  234881042) /* MutateFilter */
	 , (803908,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803908,  3707,      2) /* Legendary Healing Prowess */
	 , (803908,  3702,      2) /* Legendary Flame Ward */
	 , (803908,  3679,      2) /* Legendary Acid Bane */
     , (803908,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803908,  3703,      2) /* Legendary Flame Bane */
     , (803908,  3706,      2) /* Legendary Frost Bane */
     , (803908,  3710,      2) /* Legendary Impenetrability */
     , (803908,  3728,      2) /* Legendary Piercing Bane */
     , (803908,  3686,      2) /* Legendary Slashing Bane */
	 , (803908,  3718,      2) /* Legendary Storm Bane */
	 , (803908,  3738,      2) /* Legendary Strength */
	 , (803908,  3684,      2) /* Prodigal Armor */
	 , (803908,  3699,      2) /* Prodigal Defender */
	 , (803908,  3723,      2) /* Prodigal Magic Resistence */
	 , (803908,  6093,      2) /* Prodigal Magic Resistence */
	 , (803908,  6097,      2) /* Prodigal Magic Resistence */
	 , (803908,  6096,      2) /* Prodigal Magic Resistence */
	 , (803908,  6090,      2) /* Prodigal Magic Resistence */
	 , (803908,  6088,      2) /* Prodigal Magic Resistence */
	 , (803908,  6099,      2) /* Prodigal Magic Resistence */
	 , (803908,  6092,      2) /* Prodigal Magic Resistence */;