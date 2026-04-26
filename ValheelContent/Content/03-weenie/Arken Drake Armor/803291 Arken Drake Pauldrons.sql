DELETE FROM `weenie` WHERE `class_Id` = 803291;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803291, 'Arken Drake Pauldrons', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803291,   1,          2) /* ItemType - Armor */
     , (803291,   3,         93) /* PaletteTemplate - Silver */
     , (803291,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (803291,   5,        400) /* EncumbranceVal */
     , (803291,   8,        240) /* Mass */
     , (803291,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (803291,  16,          1) /* ItemUseable - No */
	 , (803291,  18,        512) /* UiEffects - Magical */
     , (803291,  19,       3000) /* Value */
     , (803291,  27,         32) /* ArmorType - Chainmail */
     , (803291,  28,       4500) /* ArmorLevel */
     , (803291,  33,          1) /* Bonded - Bonded */
     , (803291,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803291, 106,        999) /* ItemSpellcraft */
     , (803291, 107,       2000) /* ItemCurMana */
     , (803291, 108,       2000) /* ItemMaxMana */
     , (803291, 114,          0) /* Attuned - Attuned */
	 , (803291, 158,          7) /* WieldRequirements - Level */
     , (803291, 160,      10000) /* WieldDifficulty */
     , (803291, 169,  118096132) /* TsysMutationData */
     , (803291, 265,         27) /* Defenders */
	 , (803291, 370,        235) /* Damage */
	 , (803291, 371,        235) /* Damage Resist */
	 , (803291, 374,        235) /* Critical Damage */
	 , (803291, 375,        235) /* Critical Damage Resist */
	 , (803291, 376,        235) /* Heal Boost */
	 , (803291, 379,        235) /* Vitality */
	 , (803291, 9041,         4) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803291,  22, True ) /* Inscribable */
     , (803291, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803291,  12, 0.6600000262260437) /* Shade */
     , (803291,  13,     3) /* ArmorModVsSlash */
     , (803291,  14,     3) /* ArmorModVsPierce */
     , (803291,  15,     3) /* ArmorModVsBludgeon */
     , (803291,  16,     3) /* ArmorModVsCold */
     , (803291,  17,     3) /* ArmorModVsFire */
     , (803291,  18,     3) /* ArmorModVsAcid */
     , (803291,  19,     3) /* ArmorModVsElectric */
     , (803291,  29,     1.5) /* WeaponDefense */
     , (803291, 110,       1) /* BulkMod */
     , (803291, 111,       1) /* SizeMod */
     , (803291, 149,     1.5) /* WeaponMissileDefense */
     , (803291, 150,     1.5) /* WeaponMagicDefense */
	 , (803291, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803291,   1, 'Arken Drake Pauldrons') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803291,   1,   33554641) /* Setup */
     , (803291,   3,  536870932) /* SoundTable */
     , (803291,   6,   67108990) /* PaletteBase */
     , (803291,   7,  268437272) /* ClothingBase */
     , (803291,   8,  100674587) /* Icon */
     , (803291,  22,  872415275) /* PhysicsEffectTable */
     , (803291,  36,  234881046) /* MutateFilter */
     , (803291,  46,  939524130) /* TsysMutationFilter */
	 , (803291,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803291,  3680,      2) /* Legendary Acid Ward */
	 , (803291,  3679,      2) /* Legendary Acid Bane */
     , (803291,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803291,  3703,      2) /* Legendary Flame Bane */
     , (803291,  3706,      2) /* Legendary Frost Bane */
     , (803291,  3710,      2) /* Legendary Impenetrability */
     , (803291,  3728,      2) /* Legendary Piercing Bane */
     , (803291,  3686,      2) /* Legendary Slashing Bane */
	 , (803291,  3718,      2) /* Legendary Storm Bane */
	 , (803291,  3733,      2) /* Legendary Willpower */
	 , (803291,  6044,      2) /* Legendary Willpower */
	 , (803291,  6047,      2) /* Legendary Willpower */
	 , (803291,  6072,      2) /* Legendary Willpower */
	 , (803291,  6043,      2) /* Legendary Willpower */
	 , (803291,  6073,      2) /* Legendary Willpower */
	 , (803291,  6125,      2) /* Legendary Willpower */;