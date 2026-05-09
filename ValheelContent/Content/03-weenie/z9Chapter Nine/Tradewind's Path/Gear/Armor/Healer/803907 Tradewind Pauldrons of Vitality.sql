DELETE FROM `weenie` WHERE `class_Id` = 803907;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803907, 'Tradewind Pauldrons of Vitality', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803907,   1,          2) /* ItemType - Armor */
     , (803907,   3,         93) /* PaletteTemplate - Silver */
     , (803907,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (803907,   5,        400) /* EncumbranceVal */
     , (803907,   8,        240) /* Mass */
     , (803907,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (803907,  16,          1) /* ItemUseable - No */
	 , (803907,  18,        512) /* UiEffects - Magical */
     , (803907,  19,     250000) /* Value */
     , (803907,  27,         32) /* ArmorType - Chainmail */
     , (803907,  28,       5000) /* ArmorLevel */
     , (803907,  33,          1) /* Bonded - Bonded */
     , (803907,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803907, 106,        999) /* ItemSpellcraft */
     , (803907, 107,       2000) /* ItemCurMana */
     , (803907, 108,       2000) /* ItemMaxMana */
     , (803907, 114,          0) /* Attuned - Attuned */
	 , (803907, 158,          7) /* WieldRequirements - Level */
     , (803907, 160,      10000) /* WieldDifficulty */
     , (803907, 169,  118096132) /* TsysMutationData */
     , (803907, 265,         27) /* Defenders */
	 , (803907, 370,        500) /* Damage */
	 , (803907, 371,        500) /* Damage Resist */
	 , (803907, 374,        500) /* Critical Damage */
	 , (803907, 375,        500) /* Critical Damage Resist */
	 , (803907, 376,        750) /* Heal Boost */
	 , (803907, 379,        750) /* Vitality */
	 , (803907, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803907,  22, True ) /* Inscribable */
     , (803907, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803907,  12,    0.66) /* Shade */
     , (803907,  13,       3) /* ArmorModVsSlash */
     , (803907,  14,       3) /* ArmorModVsPierce */
     , (803907,  15,       3) /* ArmorModVsBludgeon */
     , (803907,  16,       3) /* ArmorModVsCold */
     , (803907,  17,       3) /* ArmorModVsFire */
     , (803907,  18,       3) /* ArmorModVsAcid */
     , (803907,  19,       3) /* ArmorModVsElectric */
     , (803907,  29,     1.5) /* WeaponDefense */
     , (803907, 110,       1) /* BulkMod */
     , (803907, 111,       1) /* SizeMod */
     , (803907, 149,     1.5) /* WeaponMissileDefense */
     , (803907, 150,     1.5) /* WeaponMagicDefense */
	 , (803907, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803907,   1, 'Tradewind Pauldrons of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803907,   1,   33554641) /* Setup */
     , (803907,   3,  536870932) /* SoundTable */
     , (803907,   7,  268437313) /* ClothingBase */
     , (803907,   8,  100690168) /* Icon */
     , (803907,  22,  872415275) /* PhysicsEffectTable */
     , (803907,  36,  234881042) /* MutateFilter */
	 , (803907,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803907,  3680,      2) /* Legendary Acid Ward */
	 , (803907,  3679,      2) /* Legendary Acid Bane */
     , (803907,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803907,  3703,      2) /* Legendary Flame Bane */
     , (803907,  3706,      2) /* Legendary Frost Bane */
     , (803907,  3710,      2) /* Legendary Impenetrability */
     , (803907,  3728,      2) /* Legendary Piercing Bane */
     , (803907,  3686,      2) /* Legendary Slashing Bane */
	 , (803907,  3718,      2) /* Legendary Storm Bane */
	 , (803907,  3733,      2) /* Legendary Willpower */
	 , (803907,  6044,      2) /* Legendary Willpower */
	 , (803907,  6047,      2) /* Legendary Willpower */
	 , (803907,  6072,      2) /* Legendary Willpower */
	 , (803907,  6043,      2) /* Legendary Willpower */
	 , (803907,  6073,      2) /* Legendary Willpower */
	 , (803907,  6125,      2) /* Legendary Willpower */;