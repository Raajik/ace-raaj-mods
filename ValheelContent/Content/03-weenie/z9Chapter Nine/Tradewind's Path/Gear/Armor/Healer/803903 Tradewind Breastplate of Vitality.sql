DELETE FROM `weenie` WHERE `class_Id` = 803903;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803903, 'Tradewind Breastplate of Vitality', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803903,   1,          2) /* ItemType - Armor */
     , (803903,   3,         93) /* PaletteTemplate - Silver */
     , (803903,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (803903,   5,        500) /* EncumbranceVal */
     , (803903,   8,        500) /* Mass */
     , (803903,   9,        512) /* ValidLocations - ChestArmor */
     , (803903,  16,          1) /* ItemUseable - No */
	 , (803903,  18,        512) /* UiEffects - Magical */
     , (803903,  19,     250000) /* Value */
     , (803903,  27,         32) /* ArmorType - Chainmail */
     , (803903,  28,       5000) /* ArmorLevel */
     , (803903,  33,          1) /* Bonded - Bonded */
     , (803903,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803903, 106,        999) /* ItemSpellcraft */
     , (803903, 107,       2000) /* ItemCurMana */
     , (803903, 108,       2000) /* ItemMaxMana */
     , (803903, 114,          1) /* Attuned - Attuned */
	 , (803903, 158,          7) /* WieldRequirements - Level */
     , (803903, 160,      10000) /* WieldDifficulty */
     , (803903, 169,  118097668) /* TsysMutationData */
     , (803903, 265,         28) /* Defenders */
	 , (803903, 370,        500) /* Damage */
	 , (803903, 371,        500) /* Damage Resist */
	 , (803903, 374,        500) /* Critical Damage */
	 , (803903, 375,        500) /* Critical Damage Resist */
	 , (803903, 376,        750) /* Heal Boost */
	 , (803903, 379,        750) /* Vitality */
	 , (803903, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803903,  22, True ) /* Inscribable */
     , (803903, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803903,  12,    0.66) /* Shade */
     , (803903,  13,       3) /* ArmorModVsSlash */
     , (803903,  14,       3) /* ArmorModVsPierce */
     , (803903,  15,       3) /* ArmorModVsBludgeon */
     , (803903,  16,       3) /* ArmorModVsCold */
     , (803903,  17,       3) /* ArmorModVsFire */
     , (803903,  18,       3) /* ArmorModVsAcid */
     , (803903,  19,       3) /* ArmorModVsElectric */
     , (803903,  29,     1.5) /* WeaponDefense */
     , (803903, 110,       1) /* BulkMod */
     , (803903, 111,       1) /* SizeMod */
     , (803903, 149,     1.5) /* WeaponMissileDefense */
     , (803903, 150,     1.5) /* WeaponMagicDefense */
	 , (803903, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803903,   1, 'Tradewind Breastplate of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803903,   1,   33554642) /* Setup */
     , (803903,   3,  536870932) /* SoundTable */
     , (803903,   7,  268437308) /* ClothingBase */
     , (803903,   8,  100690164) /* Icon */
     , (803903,  22,  872415275) /* PhysicsEffectTable */
     , (803903,  36,  234881042) /* MutateFilter */
	 , (803903,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803903,  3712,      2) /* Legendary Invulnerability */
     , (803903,  3731,      2) /* Legendary Health Gain */
	 , (803903,  3729,      2) /* Legendary Piercing Ward */
     , (803903,  3679,      2) /* Legendary Acid Bane */
	 , (803903,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803903,  3703,      2) /* Legendary Flame Bane */
     , (803903,  3706,      2) /* Legendary Frost Bane */
     , (803903,  3710,      2) /* Legendary Impenetrability */
     , (803903,  3728,      2) /* Legendary Piercing Bane */
     , (803903,  3686,      2) /* Legendary Slashing Bane */
     , (803903,  3718,      2) /* Legendary Storm Bane */
     , (803903,  6055,      2) /* Legendary Storm Bane */
     , (803903,  6054,      2) /* Legendary Storm Bane */
     , (803903,  6095,      2) /* Legendary Storm Bane */
     , (803903,  6063,      2) /* Legendary Storm Bane */;