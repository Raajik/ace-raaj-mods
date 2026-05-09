DELETE FROM `weenie` WHERE `class_Id` = 803901;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803901, 'Tradewind Girth of Vitality', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803901,   1,          2) /* ItemType - Armor */
     , (803901,   3,         93) /* PaletteTemplate - Silver */
     , (803901,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (803901,   5,        466) /* EncumbranceVal */
     , (803901,   8,        280) /* Mass */
     , (803901,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (803901,  16,          1) /* ItemUseable - No */
	 , (803901,  18,        512) /* UiEffects - Magical */
     , (803901,  19,     250000) /* Value */
     , (803901,  27,         32) /* ArmorType - Chainmail */
     , (803901,  28,       5000) /* ArmorLevel */
     , (803901,  33,          1) /* Bonded - Bonded */
     , (803901,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803901, 106,        999) /* ItemSpellcraft */
     , (803901, 107,       2000) /* ItemCurMana */
     , (803901, 108,       2000) /* ItemMaxMana */
     , (803901, 114,          0) /* Attuned - Attuned */
	 , (803901, 158,          7) /* WieldRequirements - Level */
     , (803901, 160,      10000) /* WieldDifficulty */
     , (803901, 169,  118096132) /* TsysMutationData */
     , (803901, 265,         24) /* Defenders */
	 , (803901, 370,        500) /* Damage */
	 , (803901, 371,        500) /* Damage Resist */
	 , (803901, 374,        500) /* Critical Damage */
	 , (803901, 375,        500) /* Critical Damage Resist */
	 , (803901, 376,        750) /* Heal Boost */
	 , (803901, 379,        750) /* Vitality */
	 , (803901, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803901,  22, True ) /* Inscribable */
     , (803901, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803901,  12,    0.66) /* Shade */
     , (803901,  13,       3) /* ArmorModVsSlash */
     , (803901,  14,       3) /* ArmorModVsPierce */
     , (803901,  15,       3) /* ArmorModVsBludgeon */
     , (803901,  16,       3) /* ArmorModVsCold */
     , (803901,  17,       3) /* ArmorModVsFire */
     , (803901,  18,       3) /* ArmorModVsAcid */
     , (803901,  19,       3) /* ArmorModVsElectric */
     , (803901,  29,     1.5) /* WeaponDefense */
     , (803901, 110,       1) /* BulkMod */
     , (803901, 111,       1) /* SizeMod */
     , (803901, 149,     1.5) /* WeaponMissileDefense */
     , (803901, 150,     1.5) /* WeaponMagicDefense */
	 , (803901, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803901,   1, 'Tradewind Girth of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803901,   1,   33554647) /* Setup */
     , (803901,   3,  536870932) /* SoundTable */
     , (803901,   7,  268437310) /* ClothingBase */
     , (803901,   8,  100690165) /* Icon */
     , (803901,  22,  872415275) /* PhysicsEffectTable */
     , (803901,  36,  234881042) /* MutateFilter */
	 , (803901,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803901,  3692,      2) /* Legendary Frost Ward */
	 , (803901,  3679,      2) /* Legendary Acid Bane */
     , (803901,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803901,  3703,      2) /* Legendary Flame Bane */
     , (803901,  3706,      2) /* Legendary Frost Bane */
     , (803901,  3710,      2) /* Legendary Impenetrability */
     , (803901,  3728,      2) /* Legendary Piercing Bane */
     , (803901,  3686,      2) /* Legendary Slashing Bane */
	 , (803901,  3718,      2) /* Legendary Storm Bane */
     , (803901,  3700,      2) /* Legendary Endurance */
     , (803901,  6048,      2) /* Legendary Endurance */
     , (803901,  6049,      2) /* Legendary Endurance */
     , (803901,  6050,      2) /* Legendary Endurance */
     , (803901,  6052,      2) /* Legendary Endurance */
     , (803901,  6053,      2) /* Legendary Endurance */
     , (803901,  6058,      2) /* Legendary Endurance */
     , (803901,  6059,      2) /* Legendary Endurance */;