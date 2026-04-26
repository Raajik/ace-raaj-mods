DELETE FROM `weenie` WHERE `class_Id` = 803894;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803894, 'Tradewind Breastplate of Protection', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803894,   1,          2) /* ItemType - Armor */
     , (803894,   3,         93) /* PaletteTemplate - Silver */
     , (803894,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (803894,   5,        500) /* EncumbranceVal */
     , (803894,   8,        500) /* Mass */
     , (803894,   9,        512) /* ValidLocations - ChestArmor */
     , (803894,  16,          1) /* ItemUseable - No */
	 , (803894,  18,        512) /* UiEffects - Magical */
     , (803894,  19,     250000) /* Value */
     , (803894,  27,         32) /* ArmorType - Chainmail */
     , (803894,  28,       5000) /* ArmorLevel */
     , (803894,  33,          1) /* Bonded - Bonded */
     , (803894,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803894, 106,        999) /* ItemSpellcraft */
     , (803894, 107,       2000) /* ItemCurMana */
     , (803894, 108,       2000) /* ItemMaxMana */
     , (803894, 114,          1) /* Attuned - Attuned */
	 , (803894, 158,          7) /* WieldRequirements - Level */
     , (803894, 160,      10000) /* WieldDifficulty */
     , (803894, 169,  118097668) /* TsysMutationData */
     , (803894, 265,         28) /* Defenders */
	 , (803894, 370,        500) /* Damage */
	 , (803894, 371,        750) /* Damage Resist */
	 , (803894, 374,        500) /* Critical Damage */
	 , (803894, 375,        750) /* Critical Damage Resist */
	 , (803894, 376,        500) /* Heal Boost */
	 , (803894, 379,        750) /* Vitality */
	 , (803894, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803894,  22, True ) /* Inscribable */
     , (803894, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803894,  12,    0.66) /* Shade */
     , (803894,  13,       3) /* ArmorModVsSlash */
     , (803894,  14,       3) /* ArmorModVsPierce */
     , (803894,  15,       3) /* ArmorModVsBludgeon */
     , (803894,  16,       3) /* ArmorModVsCold */
     , (803894,  17,       3) /* ArmorModVsFire */
     , (803894,  18,       3) /* ArmorModVsAcid */
     , (803894,  19,       3) /* ArmorModVsElectric */
     , (803894,  29,     1.5) /* WeaponDefense */
     , (803894, 110,       1) /* BulkMod */
     , (803894, 111,       1) /* SizeMod */
     , (803894, 149,     1.5) /* WeaponMissileDefense */
     , (803894, 150,     1.5) /* WeaponMagicDefense */
	 , (803894, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803894,   1, 'Tradewind Breastplate of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803894,   1,   33554642) /* Setup */
     , (803894,   3,  536870932) /* SoundTable */
     , (803894,   7,  268437326) /* ClothingBase */
     , (803894,   8,  100690245) /* Icon */
     , (803894,  22,  872415275) /* PhysicsEffectTable */
     , (803894,  36,  234881042) /* MutateFilter */
	 , (803894,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803894,  3712,      2) /* Legendary Invulnerability */
     , (803894,  3731,      2) /* Legendary Health Gain */
	 , (803894,  3729,      2) /* Legendary Piercing Ward */
     , (803894,  3679,      2) /* Legendary Acid Bane */
	 , (803894,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803894,  3703,      2) /* Legendary Flame Bane */
     , (803894,  3706,      2) /* Legendary Frost Bane */
     , (803894,  3710,      2) /* Legendary Impenetrability */
     , (803894,  3728,      2) /* Legendary Piercing Bane */
     , (803894,  3686,      2) /* Legendary Slashing Bane */
     , (803894,  3718,      2) /* Legendary Storm Bane */
     , (803894,  6055,      2) /* Legendary Storm Bane */
     , (803894,  6054,      2) /* Legendary Storm Bane */
     , (803894,  6095,      2) /* Legendary Storm Bane */
     , (803894,  6063,      2) /* Legendary Storm Bane */;