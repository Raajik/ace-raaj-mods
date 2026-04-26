DELETE FROM `weenie` WHERE `class_Id` = 803887;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803887, 'Tradewind Sollerets of Destruction', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803887,   1,          2) /* ItemType - Armor */
     , (803887,   3,         93) /* PaletteTemplate - Silver */
     , (803887,   4,      65536) /* ClothingPriority - Feet */
     , (803887,   5,        540) /* EncumbranceVal */
     , (803887,   8,        360) /* Mass */
     , (803887,   9,        256) /* ValidLocations - FootWear */
     , (803887,  16,          1) /* ItemUseable - No */
	 , (803887,  18,        512) /* UiEffects - Magical */
     , (803887,  19,     250000) /* Value */
     , (803887,  27,         32) /* ArmorType - Metal */
     , (803887,  28,       5000) /* ArmorLevel */
     , (803887,  33,          1) /* Bonded - Bonded */
     , (803887,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803887, 106,        999) /* ItemSpellcraft */
     , (803887, 107,       2000) /* ItemCurMana */
     , (803887, 108,       2000) /* ItemMaxMana */
     , (803887, 114,          0) /* Attuned - Attuned */
	 , (803887, 158,          7) /* WieldRequirements - Level */
     , (803887, 160,      10000) /* WieldDifficulty */
     , (803887, 169,  151650564) /* TsysMutationData */
     , (803887, 265,         16) /* Defenders */
	 , (803887, 370,        750) /* Damage */
	 , (803887, 371,        500) /* Damage Resist */
	 , (803887, 374,        750) /* Critical Damage */
	 , (803887, 375,        500) /* Critical Damage Resist */
	 , (803887, 376,        500) /* Heal Boost */
	 , (803887, 379,        500) /* Vitality */
	 , (803887, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803887,  22, True ) /* Inscribable */
     , (803887, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803887,  12,    0.66) /* Shade */
     , (803887,  13,       3) /* ArmorModVsSlash */
     , (803887,  14,       3) /* ArmorModVsPierce */
     , (803887,  15,       3) /* ArmorModVsBludgeon */
     , (803887,  16,       3) /* ArmorModVsCold */
     , (803887,  17,       3) /* ArmorModVsFire */
     , (803887,  18,       3) /* ArmorModVsAcid */
     , (803887,  19,       3) /* ArmorModVsElectric */
     , (803887,  29,     1.5) /* WeaponDefense */
     , (803887, 110,       1) /* BulkMod */
     , (803887, 111,       1) /* SizeMod */
     , (803887, 149,     1.5) /* WeaponMissileDefense */
     , (803887, 150,     1.5) /* WeaponMagicDefense */
	 , (803887, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803887,   1, 'Tradewind Sollerets of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803887,   1,   33554654) /* Setup */
     , (803887,   3,  536870932) /* SoundTable */
     , (803887,   7,  268437323) /* ClothingBase */
     , (803887,   8,  100690228) /* Icon */
     , (803887,  22,  872415275) /* PhysicsEffectTable */
     , (803887,  36,  234881042) /* MutateFilter */
	 , (803887,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803887,  3715,      2) /* Legendary Jumping Prowess */
     , (803887,  3736,      2) /* Legendary Sprint */
     , (803887,  3732,      2) /* Legendary Stamina Gain */
     , (803887,  3679,      2) /* Legendary Acid Bane */
     , (803887,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803887,  3703,      2) /* Legendary Flame Bane */
     , (803887,  3706,      2) /* Legendary Frost Bane */
     , (803887,  3710,      2) /* Legendary Impenetrability */
     , (803887,  3728,      2) /* Legendary Piercing Bane */
     , (803887,  3686,      2) /* Legendary Slashing Bane */
     , (803887,  3718,      2) /* Legendary Storm Bane */
     , (803887,  6107,      2) /* Legendary Strength */
     , (803887,  6104,      2) /* Legendary Strength */
     , (803887,  6103,      2) /* Legendary Strength */
     , (803887,  6106,      2) /* Legendary Strength */
     , (803887,  6105,      2) /* Legendary Strength */
     , (803887,  6101,      2) /* Legendary Strength */;