DELETE FROM `weenie` WHERE `class_Id` = 803073;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803073, 'BlackOreAscendedCovenantGirth', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803073,   1,          2) /* ItemType - Armor */
     , (803073,   3,         93) /* PaletteTemplate - Silver */
     , (803073,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (803073,   5,        466) /* EncumbranceVal */
     , (803073,   8,        280) /* Mass */
     , (803073,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (803073,  16,          1) /* ItemUseable - No */
	 , (803073,  18,          4) /* UiEffects - Magical */
     , (803073,  19,       7500) /* Value */
     , (803073,  27,         32) /* ArmorType - Chainmail */
     , (803073,  28,       3800) /* ArmorLevel */
     , (803073,  33,          1) /* Bonded - Bonded */
     , (803073,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803073, 106,        999) /* ItemSpellcraft */
     , (803073, 107,       1200) /* ItemCurMana */
     , (803073, 108,       1200) /* ItemMaxMana */
     , (803073, 114,          1) /* Attuned - Attuned */
	 , (803073, 158,          7) /* WieldRequirements - Level */
     , (803073, 160,        8000) /* WieldDifficulty */
     , (803073, 169,  118096132) /* TsysMutationData */
     , (803073, 265,         24) /* Defenders */
	 , (803073, 370,         210) /* Damage */
	 , (803073, 371,         210) /* Damage Resist */
	 , (803073, 374,         210) /* Critical Damage */
	 , (803073, 375,         210) /* Critical Damage Resist */
	 , (803073, 376,         210) /* Heal Boost */
	 , (803073, 379,         210) /* Vitality */
	 , (803073, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803073,  22, True ) /* Inscribable */
     , (803073, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803073,  12, 0.6600000262260437) /* Shade */
     , (803073,  13,     3) /* ArmorModVsSlash */
     , (803073,  14,     3) /* ArmorModVsPierce */
     , (803073,  15,     3) /* ArmorModVsBludgeon */
     , (803073,  16,     3) /* ArmorModVsCold */
     , (803073,  17,     3) /* ArmorModVsFire */
     , (803073,  18,     3) /* ArmorModVsAcid */
     , (803073,  19,     3) /* ArmorModVsElectric */
     , (803073,  29,     1.2) /* WeaponDefense */
     , (803073, 110,       1) /* BulkMod */
     , (803073, 111,       1) /* SizeMod */
     , (803073, 149,     1.4) /* WeaponMissileDefense */
     , (803073, 150,     1.4) /* WeaponMagicDefense */
	 , (803073, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803073,   1, 'Black Ore Ascended Covenant Girth') /* Name */
     , (803073,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803073,   1,   33554647) /* Setup */
     , (803073,   3,  536870932) /* SoundTable */
     , (803073,   6,   67108990) /* PaletteBase */
     , (803073,   7,  268436446) /* ClothingBase */
     , (803073,   8,  100668144) /* Icon */
     , (803073,  22,  872415275) /* PhysicsEffectTable */
     , (803073,  36,  234881046) /* MutateFilter */
     , (803073,  46,  939524130) /* TsysMutationFilter */
	 , (803073,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803073,  3692,      2) /* Legendary Frost Ward */
	 , (803073,  3679,      2) /* Legendary Acid Bane */
     , (803073,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803073,  3703,      2) /* Legendary Flame Bane */
     , (803073,  3706,      2) /* Legendary Frost Bane */
     , (803073,  3710,      2) /* Legendary Impenetrability */
     , (803073,  3728,      2) /* Legendary Piercing Bane */
     , (803073,  3686,      2) /* Legendary Slashing Bane */
	 , (803073,  3718,      2) /* Legendary Storm Bane */
     , (803073,  3700,      2) /* Legendary Endurance */
     , (803073,  6048,      2) /* Legendary Endurance */
     , (803073,  6049,      2) /* Legendary Endurance */
     , (803073,  6050,      2) /* Legendary Endurance */
     , (803073,  6052,      2) /* Legendary Endurance */
     , (803073,  6053,      2) /* Legendary Endurance */
     , (803073,  6058,      2) /* Legendary Endurance */
     , (803073,  6059,      2) /* Legendary Endurance */;