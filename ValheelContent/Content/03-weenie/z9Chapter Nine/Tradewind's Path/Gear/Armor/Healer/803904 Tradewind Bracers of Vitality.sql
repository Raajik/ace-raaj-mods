DELETE FROM `weenie` WHERE `class_Id` = 803904;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803904, 'Tradewind Bracers of Vitality', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803904,   1,          2) /* ItemType - Armor */
     , (803904,   3,         93) /* PaletteTemplate - Silver */
     , (803904,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (803904,   5,        300) /* EncumbranceVal */
     , (803904,   8,        180) /* Mass */
     , (803904,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (803904,  16,          1) /* ItemUseable - No */
	 , (803904,  18,        512) /* UiEffects - Magical */
     , (803904,  19,     250000) /* Value */
     , (803904,  27,         32) /* ArmorType - Chainmail */
     , (803904,  28,       5000) /* ArmorLevel */
     , (803904,  33,          1) /* Bonded - Bonded */
     , (803904,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803904, 106,        999) /* ItemSpellcraft */
     , (803904, 107,       2000) /* ItemCurMana */
     , (803904, 108,       2000) /* ItemMaxMana */
     , (803904, 114,          0) /* Attuned - Attuned */
	 , (803904, 158,          7) /* WieldRequirements - Level */
     , (803904, 160,      10000) /* WieldDifficulty */
     , (803904, 169,  118097156) /* TsysMutationData */
     , (803904, 265,         26) /* Defenders */
	 , (803904, 370,        500) /* Damage */
	 , (803904, 371,        500) /* Damage Resist */
	 , (803904, 374,        500) /* Critical Damage */
	 , (803904, 375,        500) /* Critical Damage Resist */
	 , (803904, 376,        750) /* Heal Boost */
	 , (803904, 379,        750) /* Vitality */
	 , (803904, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803904,  22, True ) /* Inscribable */
     , (803904, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803904,  12,    0.66) /* Shade */
     , (803904,  13,       3) /* ArmorModVsSlash */
     , (803904,  14,       3) /* ArmorModVsPierce */
     , (803904,  15,       3) /* ArmorModVsBludgeon */
     , (803904,  16,       3) /* ArmorModVsCold */
     , (803904,  17,       3) /* ArmorModVsFire */
     , (803904,  18,       3) /* ArmorModVsAcid */
     , (803904,  19,       3) /* ArmorModVsElectric */
     , (803904,  29,     1.2) /* WeaponDefense */
     , (803904, 110,       1) /* BulkMod */
     , (803904, 111,       1) /* SizeMod */
     , (803904, 149,     1.4) /* WeaponMissileDefense */
     , (803904, 150,     1.4) /* WeaponMagicDefense */
	 , (803904, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803904,   1, 'Tradewind Bracers of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803904,   1,   33554641) /* Setup */
     , (803904,   3,  536870932) /* SoundTable */
     , (803904,   7,  268437307) /* ClothingBase */
     , (803904,   8,  100690163) /* Icon */
     , (803904,  22,  872415275) /* PhysicsEffectTable */
     , (803904,  36,  234881042) /* MutateFilter */
	 , (803904,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803904,  3690,      2) /* Legendary Bludgeoning Ward */
	 , (803904,  3679,      2) /* Legendary Acid Bane */
     , (803904,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803904,  3703,      2) /* Legendary Flame Bane */
     , (803904,  3706,      2) /* Legendary Frost Bane */
     , (803904,  3710,      2) /* Legendary Impenetrability */
     , (803904,  3728,      2) /* Legendary Piercing Bane */
     , (803904,  3686,      2) /* Legendary Slashing Bane */
	 , (803904,  3718,      2) /* Legendary Storm Bane */
     , (803904,  3705,      2) /* Legendary Focus */
     , (803904,  6083,      2) /* Legendary Focus */
     , (803904,  6085,      2) /* Legendary Focus */
     , (803904,  6084,      2) /* Legendary Focus */
     , (803904,  6081,      2) /* Legendary Focus */
     , (803904,  6080,      2) /* Legendary Focus */
     , (803904,  6079,      2) /* Legendary Focus */
     , (803904,  6082,      2) /* Legendary Focus */;