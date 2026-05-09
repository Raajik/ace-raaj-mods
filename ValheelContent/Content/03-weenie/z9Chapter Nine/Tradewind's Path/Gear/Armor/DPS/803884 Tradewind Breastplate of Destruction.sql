DELETE FROM `weenie` WHERE `class_Id` = 803884;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803884, 'Tradewind Breastplate of Destruction', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803884,   1,          2) /* ItemType - Armor */
     , (803884,   3,         93) /* PaletteTemplate - Silver */
     , (803884,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (803884,   5,        500) /* EncumbranceVal */
     , (803884,   8,        500) /* Mass */
     , (803884,   9,        512) /* ValidLocations - ChestArmor */
     , (803884,  16,          1) /* ItemUseable - No */
	 , (803884,  18,        512) /* UiEffects - Magical */
     , (803884,  19,     250000) /* Value */
     , (803884,  27,         32) /* ArmorType - Chainmail */
     , (803884,  28,       5000) /* ArmorLevel */
     , (803884,  33,          1) /* Bonded - Bonded */
     , (803884,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803884, 106,        999) /* ItemSpellcraft */
     , (803884, 107,       2000) /* ItemCurMana */
     , (803884, 108,       2000) /* ItemMaxMana */
     , (803884, 114,          1) /* Attuned - Attuned */
	 , (803884, 158,          7) /* WieldRequirements - Level */
     , (803884, 160,      10000) /* WieldDifficulty */
     , (803884, 169,  118097668) /* TsysMutationData */
     , (803884, 265,         28) /* Defenders */
	 , (803884, 370,        750) /* Damage */
	 , (803884, 371,        500) /* Damage Resist */
	 , (803884, 374,        750) /* Critical Damage */
	 , (803884, 375,        500) /* Critical Damage Resist */
	 , (803884, 376,        500) /* Heal Boost */
	 , (803884, 379,        500) /* Vitality */
	 , (803884, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803884,  22, True ) /* Inscribable */
     , (803884, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803884,  12,    0.66) /* Shade */
     , (803884,  13,       3) /* ArmorModVsSlash */
     , (803884,  14,       3) /* ArmorModVsPierce */
     , (803884,  15,       3) /* ArmorModVsBludgeon */
     , (803884,  16,       3) /* ArmorModVsCold */
     , (803884,  17,       3) /* ArmorModVsFire */
     , (803884,  18,       3) /* ArmorModVsAcid */
     , (803884,  19,       3) /* ArmorModVsElectric */
     , (803884,  29,     1.5) /* WeaponDefense */
     , (803884, 110,       1) /* BulkMod */
     , (803884, 111,       1) /* SizeMod */
     , (803884, 149,     1.5) /* WeaponMissileDefense */
     , (803884, 150,     1.5) /* WeaponMagicDefense */
	 , (803884, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803884,   1, 'Tradewind Breastplate of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803884,   1,   33554642) /* Setup */
     , (803884,   3,  536870932) /* SoundTable */
     , (803884,   7,  268437317) /* ClothingBase */
     , (803884,   8,  100690223) /* Icon */
     , (803884,  22,  872415275) /* PhysicsEffectTable */
     , (803884,  36,  234881042) /* MutateFilter */
	 , (803884,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803884,  3712,      2) /* Legendary Invulnerability */
     , (803884,  3731,      2) /* Legendary Health Gain */
	 , (803884,  3729,      2) /* Legendary Piercing Ward */
     , (803884,  3679,      2) /* Legendary Acid Bane */
	 , (803884,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803884,  3703,      2) /* Legendary Flame Bane */
     , (803884,  3706,      2) /* Legendary Frost Bane */
     , (803884,  3710,      2) /* Legendary Impenetrability */
     , (803884,  3728,      2) /* Legendary Piercing Bane */
     , (803884,  3686,      2) /* Legendary Slashing Bane */
     , (803884,  3718,      2) /* Legendary Storm Bane */
     , (803884,  6055,      2) /* Legendary Storm Bane */
     , (803884,  6054,      2) /* Legendary Storm Bane */
     , (803884,  6095,      2) /* Legendary Storm Bane */
     , (803884,  6063,      2) /* Legendary Storm Bane */;