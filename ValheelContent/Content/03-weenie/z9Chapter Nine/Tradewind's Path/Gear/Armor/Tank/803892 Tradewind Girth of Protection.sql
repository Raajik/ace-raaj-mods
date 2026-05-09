DELETE FROM `weenie` WHERE `class_Id` = 803892;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803892, 'Tradewind Girth of Protection', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803892,   1,          2) /* ItemType - Armor */
     , (803892,   3,         93) /* PaletteTemplate - Silver */
     , (803892,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (803892,   5,        466) /* EncumbranceVal */
     , (803892,   8,        280) /* Mass */
     , (803892,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (803892,  16,          1) /* ItemUseable - No */
	 , (803892,  18,        512) /* UiEffects - Magical */
     , (803892,  19,     250000) /* Value */
     , (803892,  27,         32) /* ArmorType - Chainmail */
     , (803892,  28,       5000) /* ArmorLevel */
     , (803892,  33,          1) /* Bonded - Bonded */
     , (803892,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803892, 106,        999) /* ItemSpellcraft */
     , (803892, 107,       2000) /* ItemCurMana */
     , (803892, 108,       2000) /* ItemMaxMana */
     , (803892, 114,          0) /* Attuned - Attuned */
	 , (803892, 158,          7) /* WieldRequirements - Level */
     , (803892, 160,      10000) /* WieldDifficulty */
     , (803892, 169,  118096132) /* TsysMutationData */
     , (803892, 265,         24) /* Defenders */
	 , (803892, 370,        500) /* Damage */
	 , (803892, 371,        750) /* Damage Resist */
	 , (803892, 374,        500) /* Critical Damage */
	 , (803892, 375,        750) /* Critical Damage Resist */
	 , (803892, 376,        500) /* Heal Boost */
	 , (803892, 379,        750) /* Vitality */
	 , (803892, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803892,  22, True ) /* Inscribable */
     , (803892, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803892,  12,    0.66) /* Shade */
     , (803892,  13,       3) /* ArmorModVsSlash */
     , (803892,  14,       3) /* ArmorModVsPierce */
     , (803892,  15,       3) /* ArmorModVsBludgeon */
     , (803892,  16,       3) /* ArmorModVsCold */
     , (803892,  17,       3) /* ArmorModVsFire */
     , (803892,  18,       3) /* ArmorModVsAcid */
     , (803892,  19,       3) /* ArmorModVsElectric */
     , (803892,  29,     1.5) /* WeaponDefense */
     , (803892, 110,       1) /* BulkMod */
     , (803892, 111,       1) /* SizeMod */
     , (803892, 149,     1.5) /* WeaponMissileDefense */
     , (803892, 150,     1.5) /* WeaponMagicDefense */
	 , (803892, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803892,   1, 'Tradewind Girth of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803892,   1,   33554647) /* Setup */
     , (803892,   3,  536870932) /* SoundTable */
     , (803892,   7,  268437328) /* ClothingBase */
     , (803892,   8,  100690246) /* Icon */
     , (803892,  22,  872415275) /* PhysicsEffectTable */
     , (803892,  36,  234881042) /* MutateFilter */
	 , (803892,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803892,  3692,      2) /* Legendary Frost Ward */
	 , (803892,  3679,      2) /* Legendary Acid Bane */
     , (803892,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803892,  3703,      2) /* Legendary Flame Bane */
     , (803892,  3706,      2) /* Legendary Frost Bane */
     , (803892,  3710,      2) /* Legendary Impenetrability */
     , (803892,  3728,      2) /* Legendary Piercing Bane */
     , (803892,  3686,      2) /* Legendary Slashing Bane */
	 , (803892,  3718,      2) /* Legendary Storm Bane */
     , (803892,  3700,      2) /* Legendary Endurance */
     , (803892,  6048,      2) /* Legendary Endurance */
     , (803892,  6049,      2) /* Legendary Endurance */
     , (803892,  6050,      2) /* Legendary Endurance */
     , (803892,  6052,      2) /* Legendary Endurance */
     , (803892,  6053,      2) /* Legendary Endurance */
     , (803892,  6058,      2) /* Legendary Endurance */
     , (803892,  6059,      2) /* Legendary Endurance */;