DELETE FROM `weenie` WHERE `class_Id` = 803891;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803891, 'Tradewind Girth of Destruction', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803891,   1,          2) /* ItemType - Armor */
     , (803891,   3,         93) /* PaletteTemplate - Silver */
     , (803891,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (803891,   5,        466) /* EncumbranceVal */
     , (803891,   8,        280) /* Mass */
     , (803891,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (803891,  16,          1) /* ItemUseable - No */
	 , (803891,  18,        512) /* UiEffects - Magical */
     , (803891,  19,     250000) /* Value */
     , (803891,  27,         32) /* ArmorType - Chainmail */
     , (803891,  28,       5000) /* ArmorLevel */
     , (803891,  33,          1) /* Bonded - Bonded */
     , (803891,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803891, 106,        999) /* ItemSpellcraft */
     , (803891, 107,       2000) /* ItemCurMana */
     , (803891, 108,       2000) /* ItemMaxMana */
     , (803891, 114,          0) /* Attuned - Attuned */
	 , (803891, 158,          7) /* WieldRequirements - Level */
     , (803891, 160,      10000) /* WieldDifficulty */
     , (803891, 169,  118096132) /* TsysMutationData */
     , (803891, 265,         24) /* Defenders */
	 , (803891, 370,        750) /* Damage */
	 , (803891, 371,        500) /* Damage Resist */
	 , (803891, 374,        750) /* Critical Damage */
	 , (803891, 375,        500) /* Critical Damage Resist */
	 , (803891, 376,        500) /* Heal Boost */
	 , (803891, 379,        500) /* Vitality */
	 , (803891, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803891,  22, True ) /* Inscribable */
     , (803891, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803891,  12,    0.66) /* Shade */
     , (803891,  13,       3) /* ArmorModVsSlash */
     , (803891,  14,       3) /* ArmorModVsPierce */
     , (803891,  15,       3) /* ArmorModVsBludgeon */
     , (803891,  16,       3) /* ArmorModVsCold */
     , (803891,  17,       3) /* ArmorModVsFire */
     , (803891,  18,       3) /* ArmorModVsAcid */
     , (803891,  19,       3) /* ArmorModVsElectric */
     , (803891,  29,     1.5) /* WeaponDefense */
     , (803891, 110,       1) /* BulkMod */
     , (803891, 111,       1) /* SizeMod */
     , (803891, 149,     1.5) /* WeaponMissileDefense */
     , (803891, 150,     1.5) /* WeaponMagicDefense */
	 , (803891, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803891,   1, 'Tradewind Girth of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803891,   1,   33554647) /* Setup */
     , (803891,   3,  536870932) /* SoundTable */
     , (803891,   7,  268437319) /* ClothingBase */
     , (803891,   8,  100690224) /* Icon */
     , (803891,  22,  872415275) /* PhysicsEffectTable */
     , (803891,  36,  234881042) /* MutateFilter */
	 , (803891,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803891,  3692,      2) /* Legendary Frost Ward */
	 , (803891,  3679,      2) /* Legendary Acid Bane */
     , (803891,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803891,  3703,      2) /* Legendary Flame Bane */
     , (803891,  3706,      2) /* Legendary Frost Bane */
     , (803891,  3710,      2) /* Legendary Impenetrability */
     , (803891,  3728,      2) /* Legendary Piercing Bane */
     , (803891,  3686,      2) /* Legendary Slashing Bane */
	 , (803891,  3718,      2) /* Legendary Storm Bane */
     , (803891,  3700,      2) /* Legendary Endurance */
     , (803891,  6048,      2) /* Legendary Endurance */
     , (803891,  6049,      2) /* Legendary Endurance */
     , (803891,  6050,      2) /* Legendary Endurance */
     , (803891,  6052,      2) /* Legendary Endurance */
     , (803891,  6053,      2) /* Legendary Endurance */
     , (803891,  6058,      2) /* Legendary Endurance */
     , (803891,  6059,      2) /* Legendary Endurance */;