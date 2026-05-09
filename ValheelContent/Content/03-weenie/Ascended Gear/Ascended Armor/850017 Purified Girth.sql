DELETE FROM `weenie` WHERE `class_Id` = 850017;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850017, 'ace850017-purifiedgirth', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850017,   1,          2) /* ItemType - Armor */
     , (850017,   3,         93) /* PaletteTemplate - Silver */
     , (850017,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (850017,   5,        466) /* EncumbranceVal */
     , (850017,   8,        280) /* Mass */
     , (850017,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (850017,  16,          1) /* ItemUseable - No */
	 , (850017,  18,          1) /* UiEffects - Magical */
     , (850017,  19,     200000) /* Value */
     , (850017,  27,         32) /* ArmorType - Chainmail */
     , (850017,  28,       2100) /* ArmorLevel */
     , (850017,  33,          1) /* Bonded - Bonded */
     , (850017,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (850017, 106,        999) /* ItemSpellcraft */
     , (850017, 107,       1200) /* ItemCurMana */
     , (850017, 108,       1200) /* ItemMaxMana */
     , (850017, 114,          1) /* Attuned - Attuned */
	 , (850017, 158,          7) /* WieldRequirements - Level */
     , (850017, 160,        3000) /* WieldDifficulty */
     , (850017, 169,  118096132) /* TsysMutationData */
     , (850017, 265,         24) /* Defenders */
	 , (850017, 370,         135) /* Damage */
	 , (850017, 371,         135) /* Damage Resist */
	 , (850017, 374,         135) /* Critical Damage */
	 , (850017, 375,         135) /* Critical Damage Resist */
	 , (850017, 376,         135) /* Heal Boost */
	 , (850017, 379,         135) /* Vitality */
	 , (850017, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850017,  22, True ) /* Inscribable */
     , (850017, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850017,  12, 0.6600000262260437) /* Shade */
     , (850017,  13,     2.5) /* ArmorModVsSlash */
     , (850017,  14,     2.5) /* ArmorModVsPierce */
     , (850017,  15,     2.5) /* ArmorModVsBludgeon */
     , (850017,  16,     2.5) /* ArmorModVsCold */
     , (850017,  17,     2.5) /* ArmorModVsFire */
     , (850017,  18,     2.5) /* ArmorModVsAcid */
     , (850017,  19,     2.5) /* ArmorModVsElectric */
     , (850017,  29,     1.2) /* WeaponDefense */
     , (850017, 110,       1) /* BulkMod */
     , (850017, 111,       1) /* SizeMod */
     , (850017, 149,     1.2) /* WeaponMissileDefense */
     , (850017, 150,     1.2) /* WeaponMagicDefense */
	 , (850017, 165,     2.5) /* ArmorModVsNether */
	 , (850017,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850017,   1, 'Ascended Covenant Girth') /* Name */
     , (850017,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850017,   1,   33554647) /* Setup */
     , (850017,   3,  536870932) /* SoundTable */
     , (850017,   6,   67108990) /* PaletteBase */
     , (850017,   7,  268436446) /* ClothingBase */
     , (850017,   8,  100668144) /* Icon */
     , (850017,  22,  872415275) /* PhysicsEffectTable */
     , (850017,  36,  234881046) /* MutateFilter */
     , (850017,  46,  939524130) /* TsysMutationFilter */
	 , (850017,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850017,  3692,      2) /* Legendary Frost Ward */
	 , (850017,  3679,      2) /* Legendary Acid Bane */
     , (850017,  3689,      2) /* Legendary Bludgeoning Bane */
     , (850017,  3703,      2) /* Legendary Flame Bane */
     , (850017,  3706,      2) /* Legendary Frost Bane */
     , (850017,  3710,      2) /* Legendary Impenetrability */
     , (850017,  3728,      2) /* Legendary Piercing Bane */
     , (850017,  3686,      2) /* Legendary Slashing Bane */
	 , (850017,  3718,      2) /* Legendary Storm Bane */
     , (850017,  3700,      2) /* Legendary Endurance */
     , (850017,  6048,      2) /* Legendary Endurance */
     , (850017,  6049,      2) /* Legendary Endurance */
     , (850017,  6050,      2) /* Legendary Endurance */
     , (850017,  6052,      2) /* Legendary Endurance */
     , (850017,  6053,      2) /* Legendary Endurance */
     , (850017,  6058,      2) /* Legendary Endurance */
     , (850017,  6059,      2) /* Legendary Endurance */;