DELETE FROM `weenie` WHERE `class_Id` = 803071;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803071, 'BlackOreAscendedCovenantBracers', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803071,   1,          2) /* ItemType - Armor */
     , (803071,   3,         93) /* PaletteTemplate - Silver */
     , (803071,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (803071,   5,        300) /* EncumbranceVal */
     , (803071,   8,        180) /* Mass */
     , (803071,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (803071,  16,          1) /* ItemUseable - No */
	 , (803071,  18,          4) /* UiEffects - Magical */
     , (803071,  19,       2500) /* Value */
     , (803071,  27,         32) /* ArmorType - Chainmail */
     , (803071,  28,       3800) /* ArmorLevel */
     , (803071,  33,          1) /* Bonded - Bonded */
     , (803071,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803071, 106,        999) /* ItemSpellcraft */
     , (803071, 107,       1200) /* ItemCurMana */
     , (803071, 108,       1200) /* ItemMaxMana */
     , (803071, 114,          1) /* Attuned - Attuned */
	 , (803071, 158,          7) /* WieldRequirements - Level */
     , (803071, 160,        8000) /* WieldDifficulty */
     , (803071, 169,  118097156) /* TsysMutationData */
     , (803071, 265,         26) /* Defenders */
	 , (803071, 370,         210) /* Damage */
	 , (803071, 371,         210) /* Damage Resist */
	 , (803071, 374,         210) /* Critical Damage */
	 , (803071, 375,         210) /* Critical Damage Resist */
	 , (803071, 376,         210) /* Heal Boost */
	 , (803071, 379,         210) /* Vitality */
	 , (803071, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803071,  22, True ) /* Inscribable */
     , (803071, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803071,  12, 0.6600000262260437) /* Shade */
     , (803071,  13,     3) /* ArmorModVsSlash */
     , (803071,  14,     3) /* ArmorModVsPierce */
     , (803071,  15,     3) /* ArmorModVsBludgeon */
     , (803071,  16,     3) /* ArmorModVsCold */
     , (803071,  17,     3) /* ArmorModVsFire */
     , (803071,  18,     3) /* ArmorModVsAcid */
     , (803071,  19,     3) /* ArmorModVsElectric */
     , (803071,  29,     1.2) /* WeaponDefense */
     , (803071, 110,       1) /* BulkMod */
     , (803071, 111,       1) /* SizeMod */
     , (803071, 149,     1.4) /* WeaponMissileDefense */
     , (803071, 150,     1.4) /* WeaponMagicDefense */
	 , (803071, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803071,   1, 'Black Ore Ascended Covenant Bracers') /* Name */
     , (803071,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803071,   1,   33554641) /* Setup */
     , (803071,   3,  536870932) /* SoundTable */
     , (803071,   6,   67108990) /* PaletteBase */
     , (803071,   7,  268436444) /* ClothingBase */
     , (803071,   8,  100667331) /* Icon */
     , (803071,  22,  872415275) /* PhysicsEffectTable */
     , (803071,  36,  234881046) /* MutateFilter */
     , (803071,  46,  939524130) /* TsysMutationFilter */
	 , (803071,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803071,  3690,      2) /* Legendary Bludgeoning Ward */
	 , (803071,  3679,      2) /* Legendary Acid Bane */
     , (803071,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803071,  3703,      2) /* Legendary Flame Bane */
     , (803071,  3706,      2) /* Legendary Frost Bane */
     , (803071,  3710,      2) /* Legendary Impenetrability */
     , (803071,  3728,      2) /* Legendary Piercing Bane */
     , (803071,  3686,      2) /* Legendary Slashing Bane */
	 , (803071,  3718,      2) /* Legendary Storm Bane */
     , (803071,  3705,      2) /* Legendary Focus */
     , (803071,  6083,      2) /* Legendary Focus */
     , (803071,  6085,      2) /* Legendary Focus */
     , (803071,  6084,      2) /* Legendary Focus */
     , (803071,  6081,      2) /* Legendary Focus */
     , (803071,  6080,      2) /* Legendary Focus */
     , (803071,  6079,      2) /* Legendary Focus */
     , (803071,  6082,      2) /* Legendary Focus */;