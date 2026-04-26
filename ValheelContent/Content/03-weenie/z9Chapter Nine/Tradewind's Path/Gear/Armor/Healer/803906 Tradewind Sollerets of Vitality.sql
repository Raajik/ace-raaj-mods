DELETE FROM `weenie` WHERE `class_Id` = 803906;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803906, 'Tradewind Sollerets of Vitality', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803906,   1,          2) /* ItemType - Armor */
     , (803906,   3,         93) /* PaletteTemplate - Silver */
     , (803906,   4,      65536) /* ClothingPriority - Feet */
     , (803906,   5,        540) /* EncumbranceVal */
     , (803906,   8,        360) /* Mass */
     , (803906,   9,        256) /* ValidLocations - FootWear */
     , (803906,  16,          1) /* ItemUseable - No */
	 , (803906,  18,        512) /* UiEffects - Magical */
     , (803906,  19,     250000) /* Value */
     , (803906,  27,         32) /* ArmorType - Metal */
     , (803906,  28,       5000) /* ArmorLevel */
     , (803906,  33,          1) /* Bonded - Bonded */
     , (803906,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803906, 106,        999) /* ItemSpellcraft */
     , (803906, 107,       2000) /* ItemCurMana */
     , (803906, 108,       2000) /* ItemMaxMana */
     , (803906, 114,          0) /* Attuned - Attuned */
	 , (803906, 158,          7) /* WieldRequirements - Level */
     , (803906, 160,      10000) /* WieldDifficulty */
     , (803906, 169,  151650564) /* TsysMutationData */
     , (803906, 265,         16) /* Defenders */
	 , (803906, 370,        500) /* Damage */
	 , (803906, 371,        500) /* Damage Resist */
	 , (803906, 374,        500) /* Critical Damage */
	 , (803906, 375,        500) /* Critical Damage Resist */
	 , (803906, 376,        750) /* Heal Boost */
	 , (803906, 379,        750) /* Vitality */
	 , (803906, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803906,  22, True ) /* Inscribable */
     , (803906, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803906,  12,    0.66) /* Shade */
     , (803906,  13,       3) /* ArmorModVsSlash */
     , (803906,  14,       3) /* ArmorModVsPierce */
     , (803906,  15,       3) /* ArmorModVsBludgeon */
     , (803906,  16,       3) /* ArmorModVsCold */
     , (803906,  17,       3) /* ArmorModVsFire */
     , (803906,  18,       3) /* ArmorModVsAcid */
     , (803906,  19,       3) /* ArmorModVsElectric */
     , (803906,  29,     1.5) /* WeaponDefense */
     , (803906, 110,       1) /* BulkMod */
     , (803906, 111,       1) /* SizeMod */
     , (803906, 149,     1.5) /* WeaponMissileDefense */
     , (803906, 150,     1.5) /* WeaponMagicDefense */
	 , (803906, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803906,   1, 'Tradewind Sollerets of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803906,   1,   33554654) /* Setup */
     , (803906,   3,  536870932) /* SoundTable */
     , (803906,   7,  268437314) /* ClothingBase */
     , (803906,   8,  100690169) /* Icon */
     , (803906,  22,  872415275) /* PhysicsEffectTable */
     , (803906,  36,  234881042) /* MutateFilter */
	 , (803906,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803906,  3715,      2) /* Legendary Jumping Prowess */
     , (803906,  3736,      2) /* Legendary Sprint */
     , (803906,  3732,      2) /* Legendary Stamina Gain */
     , (803906,  3679,      2) /* Legendary Acid Bane */
     , (803906,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803906,  3703,      2) /* Legendary Flame Bane */
     , (803906,  3706,      2) /* Legendary Frost Bane */
     , (803906,  3710,      2) /* Legendary Impenetrability */
     , (803906,  3728,      2) /* Legendary Piercing Bane */
     , (803906,  3686,      2) /* Legendary Slashing Bane */
     , (803906,  3718,      2) /* Legendary Storm Bane */
     , (803906,  6107,      2) /* Legendary Strength */
     , (803906,  6104,      2) /* Legendary Strength */
     , (803906,  6103,      2) /* Legendary Strength */
     , (803906,  6106,      2) /* Legendary Strength */
     , (803906,  6105,      2) /* Legendary Strength */
     , (803906,  6101,      2) /* Legendary Strength */;