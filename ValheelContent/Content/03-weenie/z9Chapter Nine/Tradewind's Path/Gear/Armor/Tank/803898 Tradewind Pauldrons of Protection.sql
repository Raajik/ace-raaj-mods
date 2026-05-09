DELETE FROM `weenie` WHERE `class_Id` = 803898;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803898, 'Tradewind Pauldrons of Protection', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803898,   1,          2) /* ItemType - Armor */
     , (803898,   3,         93) /* PaletteTemplate - Silver */
     , (803898,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (803898,   5,        400) /* EncumbranceVal */
     , (803898,   8,        240) /* Mass */
     , (803898,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (803898,  16,          1) /* ItemUseable - No */
	 , (803898,  18,        512) /* UiEffects - Magical */
     , (803898,  19,     250000) /* Value */
     , (803898,  27,         32) /* ArmorType - Chainmail */
     , (803898,  28,       5000) /* ArmorLevel */
     , (803898,  33,          1) /* Bonded - Bonded */
     , (803898,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803898, 106,        999) /* ItemSpellcraft */
     , (803898, 107,       2000) /* ItemCurMana */
     , (803898, 108,       2000) /* ItemMaxMana */
     , (803898, 114,          0) /* Attuned - Attuned */
	 , (803898, 158,          7) /* WieldRequirements - Level */
     , (803898, 160,      10000) /* WieldDifficulty */
     , (803898, 169,  118096132) /* TsysMutationData */
     , (803898, 265,         27) /* Defenders */
	 , (803898, 370,        500) /* Damage */
	 , (803898, 371,        750) /* Damage Resist */
	 , (803898, 374,        500) /* Critical Damage */
	 , (803898, 375,        750) /* Critical Damage Resist */
	 , (803898, 376,        500) /* Heal Boost */
	 , (803898, 379,        750) /* Vitality */
	 , (803898, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803898,  22, True ) /* Inscribable */
     , (803898, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803898,  12,    0.66) /* Shade */
     , (803898,  13,       3) /* ArmorModVsSlash */
     , (803898,  14,       3) /* ArmorModVsPierce */
     , (803898,  15,       3) /* ArmorModVsBludgeon */
     , (803898,  16,       3) /* ArmorModVsCold */
     , (803898,  17,       3) /* ArmorModVsFire */
     , (803898,  18,       3) /* ArmorModVsAcid */
     , (803898,  19,       3) /* ArmorModVsElectric */
     , (803898,  29,     1.5) /* WeaponDefense */
     , (803898, 110,       1) /* BulkMod */
     , (803898, 111,       1) /* SizeMod */
     , (803898, 149,     1.5) /* WeaponMissileDefense */
     , (803898, 150,     1.5) /* WeaponMagicDefense */
	 , (803898, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803898,   1, 'Tradewind Pauldrons of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803898,   1,   33554641) /* Setup */
     , (803898,   3,  536870932) /* SoundTable */
     , (803898,   7,  268437331) /* ClothingBase */
     , (803898,   8,  100690249) /* Icon */
     , (803898,  22,  872415275) /* PhysicsEffectTable */
     , (803898,  36,  234881042) /* MutateFilter */
	 , (803898,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803898,  3680,      2) /* Legendary Acid Ward */
	 , (803898,  3679,      2) /* Legendary Acid Bane */
     , (803898,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803898,  3703,      2) /* Legendary Flame Bane */
     , (803898,  3706,      2) /* Legendary Frost Bane */
     , (803898,  3710,      2) /* Legendary Impenetrability */
     , (803898,  3728,      2) /* Legendary Piercing Bane */
     , (803898,  3686,      2) /* Legendary Slashing Bane */
	 , (803898,  3718,      2) /* Legendary Storm Bane */
	 , (803898,  3733,      2) /* Legendary Willpower */
	 , (803898,  6044,      2) /* Legendary Willpower */
	 , (803898,  6047,      2) /* Legendary Willpower */
	 , (803898,  6072,      2) /* Legendary Willpower */
	 , (803898,  6043,      2) /* Legendary Willpower */
	 , (803898,  6073,      2) /* Legendary Willpower */
	 , (803898,  6125,      2) /* Legendary Willpower */;