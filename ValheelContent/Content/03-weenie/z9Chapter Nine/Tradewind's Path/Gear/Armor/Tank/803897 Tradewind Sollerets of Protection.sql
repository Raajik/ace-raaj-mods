DELETE FROM `weenie` WHERE `class_Id` = 803897;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803897, 'Tradewind Sollerets of Protection', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803897,   1,          2) /* ItemType - Armor */
     , (803897,   3,         93) /* PaletteTemplate - Silver */
     , (803897,   4,      65536) /* ClothingPriority - Feet */
     , (803897,   5,        540) /* EncumbranceVal */
     , (803897,   8,        360) /* Mass */
     , (803897,   9,        256) /* ValidLocations - FootWear */
     , (803897,  16,          1) /* ItemUseable - No */
	 , (803897,  18,        512) /* UiEffects - Magical */
     , (803897,  19,     250000) /* Value */
     , (803897,  27,         32) /* ArmorType - Metal */
     , (803897,  28,       5000) /* ArmorLevel */
     , (803897,  33,          1) /* Bonded - Bonded */
     , (803897,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803897, 106,        999) /* ItemSpellcraft */
     , (803897, 107,       2000) /* ItemCurMana */
     , (803897, 108,       2000) /* ItemMaxMana */
     , (803897, 114,          0) /* Attuned - Attuned */
	 , (803897, 158,          7) /* WieldRequirements - Level */
     , (803897, 160,      10000) /* WieldDifficulty */
     , (803897, 169,  151650564) /* TsysMutationData */
     , (803897, 265,         16) /* Defenders */
	 , (803897, 370,        500) /* Damage */
	 , (803897, 371,        750) /* Damage Resist */
	 , (803897, 374,        500) /* Critical Damage */
	 , (803897, 375,        750) /* Critical Damage Resist */
	 , (803897, 376,        500) /* Heal Boost */
	 , (803897, 379,        750) /* Vitality */
	 , (803897, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803897,  22, True ) /* Inscribable */
     , (803897, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803897,  12,    0.66) /* Shade */
     , (803897,  13,       3) /* ArmorModVsSlash */
     , (803897,  14,       3) /* ArmorModVsPierce */
     , (803897,  15,       3) /* ArmorModVsBludgeon */
     , (803897,  16,       3) /* ArmorModVsCold */
     , (803897,  17,       3) /* ArmorModVsFire */
     , (803897,  18,       3) /* ArmorModVsAcid */
     , (803897,  19,       3) /* ArmorModVsElectric */
     , (803897,  29,     1.5) /* WeaponDefense */
     , (803897, 110,       1) /* BulkMod */
     , (803897, 111,       1) /* SizeMod */
     , (803897, 149,     1.5) /* WeaponMissileDefense */
     , (803897, 150,     1.5) /* WeaponMagicDefense */
	 , (803897, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803897,   1, 'Tradewind Sollerets of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803897,   1,   33554654) /* Setup */
     , (803897,   3,  536870932) /* SoundTable */
     , (803897,   7,  268437332) /* ClothingBase */
     , (803897,   8,  100690250) /* Icon */
     , (803897,  22,  872415275) /* PhysicsEffectTable */
     , (803897,  36,  234881042) /* MutateFilter */
	 , (803897,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803897,  3715,      2) /* Legendary Jumping Prowess */
     , (803897,  3736,      2) /* Legendary Sprint */
     , (803897,  3732,      2) /* Legendary Stamina Gain */
     , (803897,  3679,      2) /* Legendary Acid Bane */
     , (803897,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803897,  3703,      2) /* Legendary Flame Bane */
     , (803897,  3706,      2) /* Legendary Frost Bane */
     , (803897,  3710,      2) /* Legendary Impenetrability */
     , (803897,  3728,      2) /* Legendary Piercing Bane */
     , (803897,  3686,      2) /* Legendary Slashing Bane */
     , (803897,  3718,      2) /* Legendary Storm Bane */
     , (803897,  6107,      2) /* Legendary Strength */
     , (803897,  6104,      2) /* Legendary Strength */
     , (803897,  6103,      2) /* Legendary Strength */
     , (803897,  6106,      2) /* Legendary Strength */
     , (803897,  6105,      2) /* Legendary Strength */
     , (803897,  6101,      2) /* Legendary Strength */;