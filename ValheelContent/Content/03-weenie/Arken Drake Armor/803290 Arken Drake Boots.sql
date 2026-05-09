DELETE FROM `weenie` WHERE `class_Id` = 803290;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803290, 'Arken Drake Boots', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803290,   1,          2) /* ItemType - Armor */
     , (803290,   3,         93) /* PaletteTemplate - Silver */
     , (803290,   4,      65536) /* ClothingPriority - Feet */
     , (803290,   5,        540) /* EncumbranceVal */
     , (803290,   8,        360) /* Mass */
     , (803290,   9,        256) /* ValidLocations - FootWear */
     , (803290,  16,          1) /* ItemUseable - No */
	 , (803290,  18,        512) /* UiEffects - Magical */
     , (803290,  19,       3000) /* Value */
     , (803290,  27,         32) /* ArmorType - Metal */
     , (803290,  28,       4500) /* ArmorLevel */
     , (803290,  33,          1) /* Bonded - Bonded */
     , (803290,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803290, 106,        999) /* ItemSpellcraft */
     , (803290, 107,       2000) /* ItemCurMana */
     , (803290, 108,       2000) /* ItemMaxMana */
     , (803290, 114,          0) /* Attuned - Attuned */
	 , (803290, 158,          7) /* WieldRequirements - Level */
     , (803290, 160,      10000) /* WieldDifficulty */
     , (803290, 169,  151650564) /* TsysMutationData */
     , (803290, 265,         16) /* Defenders */
	 , (803290, 370,        235) /* Damage */
	 , (803290, 371,        235) /* Damage Resist */
	 , (803290, 374,        235) /* Critical Damage */
	 , (803290, 375,        235) /* Critical Damage Resist */
	 , (803290, 376,        235) /* Heal Boost */
	 , (803290, 379,        235) /* Vitality */
	 , (803290, 9041,         4) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803290,  22, True ) /* Inscribable */
     , (803290, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803290,  12, 0.6600000262260437) /* Shade */
     , (803290,  13,     3) /* ArmorModVsSlash */
     , (803290,  14,     3) /* ArmorModVsPierce */
     , (803290,  15,     3) /* ArmorModVsBludgeon */
     , (803290,  16,     3) /* ArmorModVsCold */
     , (803290,  17,     3) /* ArmorModVsFire */
     , (803290,  18,     3) /* ArmorModVsAcid */
     , (803290,  19,     3) /* ArmorModVsElectric */
     , (803290,  29,     1.5) /* WeaponDefense */
     , (803290, 110,       1) /* BulkMod */
     , (803290, 111,       1) /* SizeMod */
     , (803290, 149,     1.5) /* WeaponMissileDefense */
     , (803290, 150,     1.5) /* WeaponMagicDefense */
	 , (803290, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803290,   1, 'Arken Drake Boots') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803290,   1,   33559344) /* Setup */
     , (803290,   3,  536870932) /* SoundTable */
     , (803290,   6,   67108990) /* PaletteBase */
     , (803290,   7,  268437306) /* ClothingBase */
     , (803290,   8,  100690147) /* Icon */
     , (803290,  22,  872415275) /* PhysicsEffectTable */
	 , (803290,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803290,  3715,      2) /* Legendary Jumping Prowess */
     , (803290,  3736,      2) /* Legendary Sprint */
     , (803290,  3732,      2) /* Legendary Stamina Gain */
     , (803290,  3679,      2) /* Legendary Acid Bane */
     , (803290,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803290,  3703,      2) /* Legendary Flame Bane */
     , (803290,  3706,      2) /* Legendary Frost Bane */
     , (803290,  3710,      2) /* Legendary Impenetrability */
     , (803290,  3728,      2) /* Legendary Piercing Bane */
     , (803290,  3686,      2) /* Legendary Slashing Bane */
     , (803290,  3718,      2) /* Legendary Storm Bane */
     , (803290,  6107,      2) /* Legendary Strength */
     , (803290,  6104,      2) /* Legendary Strength */
     , (803290,  6103,      2) /* Legendary Strength */
     , (803290,  6106,      2) /* Legendary Strength */
     , (803290,  6105,      2) /* Legendary Strength */
     , (803290,  6101,      2) /* Legendary Strength */;