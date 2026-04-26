DELETE FROM `weenie` WHERE `class_Id` = 803888;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803888, 'Tradewind Pauldrons of Destruction', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803888,   1,          2) /* ItemType - Armor */
     , (803888,   3,         93) /* PaletteTemplate - Silver */
     , (803888,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (803888,   5,        400) /* EncumbranceVal */
     , (803888,   8,        240) /* Mass */
     , (803888,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (803888,  16,          1) /* ItemUseable - No */
	 , (803888,  18,        512) /* UiEffects - Magical */
     , (803888,  19,     250000) /* Value */
     , (803888,  27,         32) /* ArmorType - Chainmail */
     , (803888,  28,       5000) /* ArmorLevel */
     , (803888,  33,          1) /* Bonded - Bonded */
     , (803888,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803888, 106,        999) /* ItemSpellcraft */
     , (803888, 107,       2000) /* ItemCurMana */
     , (803888, 108,       2000) /* ItemMaxMana */
     , (803888, 114,          0) /* Attuned - Attuned */
	 , (803888, 158,          7) /* WieldRequirements - Level */
     , (803888, 160,      10000) /* WieldDifficulty */
     , (803888, 169,  118096132) /* TsysMutationData */
     , (803888, 265,         27) /* Defenders */
	 , (803888, 370,        750) /* Damage */
	 , (803888, 371,        500) /* Damage Resist */
	 , (803888, 374,        750) /* Critical Damage */
	 , (803888, 375,        500) /* Critical Damage Resist */
	 , (803888, 376,        500) /* Heal Boost */
	 , (803888, 379,        500) /* Vitality */
	 , (803888, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803888,  22, True ) /* Inscribable */
     , (803888, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803888,  12,    0.66) /* Shade */
     , (803888,  13,       3) /* ArmorModVsSlash */
     , (803888,  14,       3) /* ArmorModVsPierce */
     , (803888,  15,       3) /* ArmorModVsBludgeon */
     , (803888,  16,       3) /* ArmorModVsCold */
     , (803888,  17,       3) /* ArmorModVsFire */
     , (803888,  18,       3) /* ArmorModVsAcid */
     , (803888,  19,       3) /* ArmorModVsElectric */
     , (803888,  29,     1.5) /* WeaponDefense */
     , (803888, 110,       1) /* BulkMod */
     , (803888, 111,       1) /* SizeMod */
     , (803888, 149,     1.5) /* WeaponMissileDefense */
     , (803888, 150,     1.5) /* WeaponMagicDefense */
	 , (803888, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803888,   1, 'Tradewind Pauldrons of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803888,   1,   33554641) /* Setup */
     , (803888,   3,  536870932) /* SoundTable */
     , (803888,   7,  268437322) /* ClothingBase */
     , (803888,   8,  100690227) /* Icon */
     , (803888,  22,  872415275) /* PhysicsEffectTable */
     , (803888,  36,  234881042) /* MutateFilter */
	 , (803888,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803888,  3680,      2) /* Legendary Acid Ward */
	 , (803888,  3679,      2) /* Legendary Acid Bane */
     , (803888,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803888,  3703,      2) /* Legendary Flame Bane */
     , (803888,  3706,      2) /* Legendary Frost Bane */
     , (803888,  3710,      2) /* Legendary Impenetrability */
     , (803888,  3728,      2) /* Legendary Piercing Bane */
     , (803888,  3686,      2) /* Legendary Slashing Bane */
	 , (803888,  3718,      2) /* Legendary Storm Bane */
	 , (803888,  3733,      2) /* Legendary Willpower */
	 , (803888,  6044,      2) /* Legendary Willpower */
	 , (803888,  6047,      2) /* Legendary Willpower */
	 , (803888,  6072,      2) /* Legendary Willpower */
	 , (803888,  6043,      2) /* Legendary Willpower */
	 , (803888,  6073,      2) /* Legendary Willpower */
	 , (803888,  6125,      2) /* Legendary Willpower */;