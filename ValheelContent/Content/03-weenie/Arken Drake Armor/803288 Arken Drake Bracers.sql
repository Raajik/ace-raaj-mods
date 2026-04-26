DELETE FROM `weenie` WHERE `class_Id` = 803288;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803288, 'Arken Drake Bracers', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803288,   1,          2) /* ItemType - Armor */
     , (803288,   3,         93) /* PaletteTemplate - Silver */
     , (803288,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (803288,   5,        300) /* EncumbranceVal */
     , (803288,   8,        180) /* Mass */
     , (803288,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (803288,  16,          1) /* ItemUseable - No */
	 , (803288,  18,        512) /* UiEffects - Magical */
     , (803288,  19,        3000) /* Value */
     , (803288,  27,         32) /* ArmorType - Chainmail */
     , (803288,  28,       4500) /* ArmorLevel */
     , (803288,  33,          1) /* Bonded - Bonded */
     , (803288,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803288, 106,        999) /* ItemSpellcraft */
     , (803288, 107,       2000) /* ItemCurMana */
     , (803288, 108,       2000) /* ItemMaxMana */
     , (803288, 114,          0) /* Attuned - Attuned */
	 , (803288, 158,          7) /* WieldRequirements - Level */
     , (803288, 160,      10000) /* WieldDifficulty */
     , (803288, 169,  118097156) /* TsysMutationData */
     , (803288, 265,         26) /* Defenders */
	 , (803288, 370,        235) /* Damage */
	 , (803288, 371,        235) /* Damage Resist */
	 , (803288, 374,        235) /* Critical Damage */
	 , (803288, 375,        235) /* Critical Damage Resist */
	 , (803288, 376,        235) /* Heal Boost */
	 , (803288, 379,        235) /* Vitality */
	 , (803288, 9041,         4) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803288,  22, True ) /* Inscribable */
     , (803288, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803288,  12, 0.6600000262260437) /* Shade */
     , (803288,  13,     3) /* ArmorModVsSlash */
     , (803288,  14,     3) /* ArmorModVsPierce */
     , (803288,  15,     3) /* ArmorModVsBludgeon */
     , (803288,  16,     3) /* ArmorModVsCold */
     , (803288,  17,     3) /* ArmorModVsFire */
     , (803288,  18,     3) /* ArmorModVsAcid */
     , (803288,  19,     3) /* ArmorModVsElectric */
     , (803288,  29,     1.2) /* WeaponDefense */
     , (803288, 110,       1) /* BulkMod */
     , (803288, 111,       1) /* SizeMod */
     , (803288, 149,     1.4) /* WeaponMissileDefense */
     , (803288, 150,     1.4) /* WeaponMagicDefense */
	 , (803288, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803288,   1, 'Arken Drake Bracers') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803288,   1,   33554641) /* Setup */
     , (803288,   3,  536870932) /* SoundTable */
     , (803288,   6,   67108990) /* PaletteBase */
     , (803288,   7,  268437269) /* ClothingBase */
     , (803288,   8,  100674527) /* Icon */
     , (803288,  22,  872415275) /* PhysicsEffectTable */
     , (803288,  36,  234881046) /* MutateFilter */
     , (803288,  46,  939524130) /* TsysMutationFilter */
	 , (803288,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803288,  3690,      2) /* Legendary Bludgeoning Ward */
	 , (803288,  3679,      2) /* Legendary Acid Bane */
     , (803288,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803288,  3703,      2) /* Legendary Flame Bane */
     , (803288,  3706,      2) /* Legendary Frost Bane */
     , (803288,  3710,      2) /* Legendary Impenetrability */
     , (803288,  3728,      2) /* Legendary Piercing Bane */
     , (803288,  3686,      2) /* Legendary Slashing Bane */
	 , (803288,  3718,      2) /* Legendary Storm Bane */
     , (803288,  3705,      2) /* Legendary Focus */
     , (803288,  6083,      2) /* Legendary Focus */
     , (803288,  6085,      2) /* Legendary Focus */
     , (803288,  6084,      2) /* Legendary Focus */
     , (803288,  6081,      2) /* Legendary Focus */
     , (803288,  6080,      2) /* Legendary Focus */
     , (803288,  6079,      2) /* Legendary Focus */
     , (803288,  6082,      2) /* Legendary Focus */;