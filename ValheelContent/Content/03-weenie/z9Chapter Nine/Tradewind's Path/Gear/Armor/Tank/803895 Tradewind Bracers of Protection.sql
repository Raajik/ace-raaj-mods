DELETE FROM `weenie` WHERE `class_Id` = 803895;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803895, 'Tradewind Bracers of Protection', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803895,   1,          2) /* ItemType - Armor */
     , (803895,   3,         93) /* PaletteTemplate - Silver */
     , (803895,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (803895,   5,        300) /* EncumbranceVal */
     , (803895,   8,        180) /* Mass */
     , (803895,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (803895,  16,          1) /* ItemUseable - No */
	 , (803895,  18,        512) /* UiEffects - Magical */
     , (803895,  19,     250000) /* Value */
     , (803895,  27,         32) /* ArmorType - Chainmail */
     , (803895,  28,       5000) /* ArmorLevel */
     , (803895,  33,          1) /* Bonded - Bonded */
     , (803895,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803895, 106,        999) /* ItemSpellcraft */
     , (803895, 107,       2000) /* ItemCurMana */
     , (803895, 108,       2000) /* ItemMaxMana */
     , (803895, 114,          0) /* Attuned - Attuned */
	 , (803895, 158,          7) /* WieldRequirements - Level */
     , (803895, 160,      10000) /* WieldDifficulty */
     , (803895, 169,  118097156) /* TsysMutationData */
     , (803895, 265,         26) /* Defenders */
	 , (803895, 370,        500) /* Damage */
	 , (803895, 371,        750) /* Damage Resist */
	 , (803895, 374,        500) /* Critical Damage */
	 , (803895, 375,        750) /* Critical Damage Resist */
	 , (803895, 376,        500) /* Heal Boost */
	 , (803895, 379,        750) /* Vitality */
	 , (803895, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803895,  22, True ) /* Inscribable */
     , (803895, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803895,  12,    0.66) /* Shade */
     , (803895,  13,       3) /* ArmorModVsSlash */
     , (803895,  14,       3) /* ArmorModVsPierce */
     , (803895,  15,       3) /* ArmorModVsBludgeon */
     , (803895,  16,       3) /* ArmorModVsCold */
     , (803895,  17,       3) /* ArmorModVsFire */
     , (803895,  18,       3) /* ArmorModVsAcid */
     , (803895,  19,       3) /* ArmorModVsElectric */
     , (803895,  29,     1.2) /* WeaponDefense */
     , (803895, 110,       1) /* BulkMod */
     , (803895, 111,       1) /* SizeMod */
     , (803895, 149,     1.4) /* WeaponMissileDefense */
     , (803895, 150,     1.4) /* WeaponMagicDefense */
	 , (803895, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803895,   1, 'Tradewind Bracers of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803895,   1,   33554641) /* Setup */
     , (803895,   3,  536870932) /* SoundTable */
     , (803895,   7,  268437325) /* ClothingBase */
     , (803895,   8,  100690244) /* Icon */
     , (803895,  22,  872415275) /* PhysicsEffectTable */
     , (803895,  36,  234881042) /* MutateFilter */
	 , (803895,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803895,  3690,      2) /* Legendary Bludgeoning Ward */
	 , (803895,  3679,      2) /* Legendary Acid Bane */
     , (803895,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803895,  3703,      2) /* Legendary Flame Bane */
     , (803895,  3706,      2) /* Legendary Frost Bane */
     , (803895,  3710,      2) /* Legendary Impenetrability */
     , (803895,  3728,      2) /* Legendary Piercing Bane */
     , (803895,  3686,      2) /* Legendary Slashing Bane */
	 , (803895,  3718,      2) /* Legendary Storm Bane */
     , (803895,  3705,      2) /* Legendary Focus */
     , (803895,  6083,      2) /* Legendary Focus */
     , (803895,  6085,      2) /* Legendary Focus */
     , (803895,  6084,      2) /* Legendary Focus */
     , (803895,  6081,      2) /* Legendary Focus */
     , (803895,  6080,      2) /* Legendary Focus */
     , (803895,  6079,      2) /* Legendary Focus */
     , (803895,  6082,      2) /* Legendary Focus */;