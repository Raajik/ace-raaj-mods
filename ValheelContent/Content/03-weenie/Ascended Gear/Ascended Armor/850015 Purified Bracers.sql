DELETE FROM `weenie` WHERE `class_Id` = 850015;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850015, 'ace850015-purifiedbracers', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850015,   1,          2) /* ItemType - Armor */
     , (850015,   3,         93) /* PaletteTemplate - Silver */
     , (850015,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (850015,   5,        300) /* EncumbranceVal */
     , (850015,   8,        180) /* Mass */
     , (850015,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (850015,  16,          1) /* ItemUseable - No */
	 , (850015,  18,          1) /* UiEffects - Magical */
     , (850015,  19,     200000) /* Value */
     , (850015,  27,         32) /* ArmorType - Chainmail */
     , (850015,  28,       2100) /* ArmorLevel */
     , (850015,  33,          1) /* Bonded - Bonded */
     , (850015,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (850015, 106,        999) /* ItemSpellcraft */
     , (850015, 107,       1200) /* ItemCurMana */
     , (850015, 108,       1200) /* ItemMaxMana */
     , (850015, 114,          1) /* Attuned - Attuned */
	 , (850015, 158,          7) /* WieldRequirements - Level */
     , (850015, 160,        3000) /* WieldDifficulty */
     , (850015, 169,  118097156) /* TsysMutationData */
     , (850015, 265,         26) /* Defenders */
	 , (850015, 370,         135) /* Damage */
	 , (850015, 371,         135) /* Damage Resist */
	 , (850015, 374,         135) /* Critical Damage */
	 , (850015, 375,         135) /* Critical Damage Resist */
	 , (850015, 376,         135) /* Heal Boost */
	 , (850015, 379,         135) /* Vitality */
	 , (850015, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850015,  22, True ) /* Inscribable */
     , (850015, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850015,  12, 0.6600000262260437) /* Shade */
     , (850015,  13,     2.5) /* ArmorModVsSlash */
     , (850015,  14,     2.5) /* ArmorModVsPierce */
     , (850015,  15,     2.5) /* ArmorModVsBludgeon */
     , (850015,  16,     2.5) /* ArmorModVsCold */
     , (850015,  17,     2.5) /* ArmorModVsFire */
     , (850015,  18,     2.5) /* ArmorModVsAcid */
     , (850015,  19,     2.5) /* ArmorModVsElectric */
     , (850015,  29,     1.2) /* WeaponDefense */
     , (850015, 110,       1) /* BulkMod */
     , (850015, 111,       1) /* SizeMod */
     , (850015, 149,     1.2) /* WeaponMissileDefense */
     , (850015, 150,     1.2) /* WeaponMagicDefense */
	 , (850015, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850015,   1, 'Ascended Covenant Bracers') /* Name */
     , (850015,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850015,   1,   33554641) /* Setup */
     , (850015,   3,  536870932) /* SoundTable */
     , (850015,   6,   67108990) /* PaletteBase */
     , (850015,   7,  268436444) /* ClothingBase */
     , (850015,   8,  100667331) /* Icon */
     , (850015,  22,  872415275) /* PhysicsEffectTable */
     , (850015,  36,  234881046) /* MutateFilter */
     , (850015,  46,  939524130) /* TsysMutationFilter */
	 , (850015,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850015,  3690,      2) /* Legendary Bludgeoning Ward */
	 , (850015,  3679,      2) /* Legendary Acid Bane */
     , (850015,  3689,      2) /* Legendary Bludgeoning Bane */
     , (850015,  3703,      2) /* Legendary Flame Bane */
     , (850015,  3706,      2) /* Legendary Frost Bane */
     , (850015,  3710,      2) /* Legendary Impenetrability */
     , (850015,  3728,      2) /* Legendary Piercing Bane */
     , (850015,  3686,      2) /* Legendary Slashing Bane */
	 , (850015,  3718,      2) /* Legendary Storm Bane */
     , (850015,  3705,      2) /* Legendary Focus */
     , (850015,  6083,      2) /* Legendary Focus */
     , (850015,  6085,      2) /* Legendary Focus */
     , (850015,  6084,      2) /* Legendary Focus */
     , (850015,  6081,      2) /* Legendary Focus */
     , (850015,  6080,      2) /* Legendary Focus */
     , (850015,  6079,      2) /* Legendary Focus */
     , (850015,  6082,      2) /* Legendary Focus */;