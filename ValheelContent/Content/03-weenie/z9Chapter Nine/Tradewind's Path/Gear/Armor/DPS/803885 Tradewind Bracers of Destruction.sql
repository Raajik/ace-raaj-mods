DELETE FROM `weenie` WHERE `class_Id` = 803885;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803885, 'Tradewind Bracers of Destruction', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803885,   1,          2) /* ItemType - Armor */
     , (803885,   3,         93) /* PaletteTemplate - Silver */
     , (803885,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (803885,   5,        300) /* EncumbranceVal */
     , (803885,   8,        180) /* Mass */
     , (803885,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (803885,  16,          1) /* ItemUseable - No */
	 , (803885,  18,        512) /* UiEffects - Magical */
     , (803885,  19,     250000) /* Value */
     , (803885,  27,         32) /* ArmorType - Chainmail */
     , (803885,  28,       5000) /* ArmorLevel */
     , (803885,  33,          1) /* Bonded - Bonded */
     , (803885,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803885, 106,        999) /* ItemSpellcraft */
     , (803885, 107,       2000) /* ItemCurMana */
     , (803885, 108,       2000) /* ItemMaxMana */
     , (803885, 114,          0) /* Attuned - Attuned */
	 , (803885, 158,          7) /* WieldRequirements - Level */
     , (803885, 160,      10000) /* WieldDifficulty */
     , (803885, 169,  118097156) /* TsysMutationData */
     , (803885, 265,         26) /* Defenders */
	 , (803885, 370,        750) /* Damage */
	 , (803885, 371,        500) /* Damage Resist */
	 , (803885, 374,        750) /* Critical Damage */
	 , (803885, 375,        500) /* Critical Damage Resist */
	 , (803885, 376,        500) /* Heal Boost */
	 , (803885, 379,        500) /* Vitality */
	 , (803885, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803885,  22, True ) /* Inscribable */
     , (803885, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803885,  12,    0.66) /* Shade */
     , (803885,  13,       3) /* ArmorModVsSlash */
     , (803885,  14,       3) /* ArmorModVsPierce */
     , (803885,  15,       3) /* ArmorModVsBludgeon */
     , (803885,  16,       3) /* ArmorModVsCold */
     , (803885,  17,       3) /* ArmorModVsFire */
     , (803885,  18,       3) /* ArmorModVsAcid */
     , (803885,  19,       3) /* ArmorModVsElectric */
     , (803885,  29,     1.2) /* WeaponDefense */
     , (803885, 110,       1) /* BulkMod */
     , (803885, 111,       1) /* SizeMod */
     , (803885, 149,     1.4) /* WeaponMissileDefense */
     , (803885, 150,     1.4) /* WeaponMagicDefense */
	 , (803885, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803885,   1, 'Tradewind Bracers of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803885,   1,   33554641) /* Setup */
     , (803885,   3,  536870932) /* SoundTable */
     , (803885,   7,  268437316) /* ClothingBase */
     , (803885,   8,  100690222) /* Icon */
     , (803885,  22,  872415275) /* PhysicsEffectTable */
     , (803885,  36,  234881042) /* MutateFilter */
	 , (803885,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803885,  3690,      2) /* Legendary Bludgeoning Ward */
	 , (803885,  3679,      2) /* Legendary Acid Bane */
     , (803885,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803885,  3703,      2) /* Legendary Flame Bane */
     , (803885,  3706,      2) /* Legendary Frost Bane */
     , (803885,  3710,      2) /* Legendary Impenetrability */
     , (803885,  3728,      2) /* Legendary Piercing Bane */
     , (803885,  3686,      2) /* Legendary Slashing Bane */
	 , (803885,  3718,      2) /* Legendary Storm Bane */
     , (803885,  3705,      2) /* Legendary Focus */
     , (803885,  6083,      2) /* Legendary Focus */
     , (803885,  6085,      2) /* Legendary Focus */
     , (803885,  6084,      2) /* Legendary Focus */
     , (803885,  6081,      2) /* Legendary Focus */
     , (803885,  6080,      2) /* Legendary Focus */
     , (803885,  6079,      2) /* Legendary Focus */
     , (803885,  6082,      2) /* Legendary Focus */;