DELETE FROM `weenie` WHERE `class_Id` = 803396;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803396, 'Luminium Girth', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803396,   1,          2) /* ItemType - Armor */
     , (803396,   3,         93) /* PaletteTemplate - Silver */
     , (803396,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (803396,   5,        466) /* EncumbranceVal */
     , (803396,   8,        280) /* Mass */
     , (803396,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (803396,  16,          1) /* ItemUseable - No */
	 , (803396,  18,          1) /* UiEffects - Magical */
     , (803396,  19,     400000) /* Value */
     , (803396,  27,         32) /* ArmorType - Chainmail */
     , (803396,  28,       2500) /* ArmorLevel */
     , (803396,  33,          1) /* Bonded - Bonded */
     , (803396,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803396, 106,        999) /* ItemSpellcraft */
     , (803396, 107,       1200) /* ItemCurMana */
     , (803396, 108,       1200) /* ItemMaxMana */
     , (803396, 114,          1) /* Attuned - Attuned */
	 , (803396, 158,          7) /* WieldRequirements - Level */
     , (803396, 160,        5000) /* WieldDifficulty */
     , (803396, 169,  118096132) /* TsysMutationData */
     , (803396, 265,         24) /* Defenders */
	 , (803396, 370,         160) /* Damage */
	 , (803396, 371,         160) /* Damage Resist */
	 , (803396, 374,         160) /* Critical Damage */
	 , (803396, 375,         160) /* Critical Damage Resist */
	 , (803396, 376,         160) /* Heal Boost */
	 , (803396, 379,         160) /* Vitality */
	 , (803396, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803396,  22, True ) /* Inscribable */
     , (803396, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803396,  12, 0.6600000262260437) /* Shade */
     , (803396,  13,     2.5) /* ArmorModVsSlash */
     , (803396,  14,     2.5) /* ArmorModVsPierce */
     , (803396,  15,     2.5) /* ArmorModVsBludgeon */
     , (803396,  16,     2.5) /* ArmorModVsCold */
     , (803396,  17,     2.5) /* ArmorModVsFire */
     , (803396,  18,     2.5) /* ArmorModVsAcid */
     , (803396,  19,     2.5) /* ArmorModVsElectric */
     , (803396,  29,     1.2) /* WeaponDefense */
     , (803396, 110,       1) /* BulkMod */
     , (803396, 111,       1) /* SizeMod */
     , (803396, 149,     1.2) /* WeaponMissileDefense */
     , (803396, 150,     1.2) /* WeaponMagicDefense */
	 , (803396, 165,     2.5) /* ArmorModVsNether */
	 , (803396,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803396,   1, 'Luminium Girth') /* Name */
     , (803396,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803396,   1,   33554647) /* Setup */
     , (803396,   3,  536870932) /* SoundTable */
     , (803396,   7,  268437583) /* ClothingBase */
     , (803396,   8,  100693097) /* Icon */
     , (803396,  22,  872415275) /* PhysicsEffectTable */
     , (803396,  36,  234881046) /* MutateFilter */
     , (803396,  46,  939524130) /* TsysMutationFilter */
	 , (803396,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803396,  3692,      2) /* Legendary Frost Ward */
	 , (803396,  3679,      2) /* Legendary Acid Bane */
     , (803396,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803396,  3703,      2) /* Legendary Flame Bane */
     , (803396,  3706,      2) /* Legendary Frost Bane */
     , (803396,  3710,      2) /* Legendary Impenetrability */
     , (803396,  3728,      2) /* Legendary Piercing Bane */
     , (803396,  3686,      2) /* Legendary Slashing Bane */
	 , (803396,  3718,      2) /* Legendary Storm Bane */
     , (803396,  3700,      2) /* Legendary Endurance */
     , (803396,  6048,      2) /* Legendary Endurance */
     , (803396,  6049,      2) /* Legendary Endurance */
     , (803396,  6050,      2) /* Legendary Endurance */
     , (803396,  6052,      2) /* Legendary Endurance */
     , (803396,  6053,      2) /* Legendary Endurance */
     , (803396,  6058,      2) /* Legendary Endurance */
     , (803396,  6059,      2) /* Legendary Endurance */;