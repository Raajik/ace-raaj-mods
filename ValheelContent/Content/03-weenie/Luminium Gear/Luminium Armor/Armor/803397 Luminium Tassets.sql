DELETE FROM `weenie` WHERE `class_Id` = 803397;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803397, 'Luminium Tassets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803397,   1,          2) /* ItemType - Armor */
     , (803397,   3,         93) /* PaletteTemplate - Silver */
     , (803397,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (803397,   5,        280) /* EncumbranceVal */
     , (803397,   8,        260) /* Mass */
     , (803397,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (803397,  16,          1) /* ItemUseable - No */
	 , (803397,  18,          1) /* UiEffects - Magical */
     , (803397,  19,     400000) /* Value */
     , (803397,  27,         32) /* ArmorType - Chainmail */
     , (803397,  28,       2500) /* ArmorLevel */
     , (803397,  33,          1) /* Bonded - Bonded */
     , (803397,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803397, 106,        999) /* ItemSpellcraft */
     , (803397, 107,       1200) /* ItemCurMana */
     , (803397, 108,       1200) /* ItemMaxMana */
     , (803397, 114,          1) /* Attuned - Attuned */
	 , (803397, 158,          7) /* WieldRequirements - Level */
     , (803397, 160,        5000) /* WieldDifficulty */
     , (803397, 169,  252313860) /* TsysMutationData */
     , (803397, 265,         23) /* Defenders */
	 , (803397, 370,         160) /* Damage */
	 , (803397, 371,         160) /* Damage Resist */
	 , (803397, 374,         160) /* Critical Damage */
	 , (803397, 375,         160) /* Critical Damage Resist */
	 , (803397, 376,         160) /* Heal Boost */
	 , (803397, 379,         160) /* Vitality */
	 , (803397, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803397,  22, True ) /* Inscribable */
     , (803397, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803397,  12, 0.6600000262260437) /* Shade */
     , (803397,  13,     2.5) /* ArmorModVsSlash */
     , (803397,  14,     2.5) /* ArmorModVsPierce */
     , (803397,  15,     2.5) /* ArmorModVsBludgeon */
     , (803397,  16,     2.5) /* ArmorModVsCold */
     , (803397,  17,     2.5) /* ArmorModVsFire */
     , (803397,  18,     2.5) /* ArmorModVsAcid */
     , (803397,  19,     2.5) /* ArmorModVsElectric */
     , (803397,  29,     1.2) /* WeaponDefense */
     , (803397, 110,       1) /* BulkMod */
     , (803397, 111,       1) /* SizeMod */
     , (803397, 149,     1.2) /* WeaponMissileDefense */
     , (803397, 150,     1.2) /* WeaponMagicDefense */
	 , (803397, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803397,   1, 'Luminium Tassets') /* Name */
     , (803397,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803397,   1,   33554656) /* Setup */
     , (803397,   3,  536870932) /* SoundTable */
     , (803397,   7,  268437579) /* ClothingBase */
     , (803397,   8,  100693093) /* Icon */
     , (803397,  22,  872415275) /* PhysicsEffectTable */
     , (803397,  36,  234881046) /* MutateFilter */
     , (803397,  46,  939524130) /* TsysMutationFilter */
	 , (803397,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803397,  3687,      2) /* Legendary Slashing Ward */
	 , (803397,  3679,      2) /* Legendary Acid Bane */
     , (803397,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803397,  3703,      2) /* Legendary Flame Bane */
     , (803397,  3706,      2) /* Legendary Frost Bane */
     , (803397,  3710,      2) /* Legendary Impenetrability */
     , (803397,  3728,      2) /* Legendary Piercing Bane */
     , (803397,  3686,      2) /* Legendary Slashing Bane */
     , (803397,  3718,      2) /* Legendary Storm Bane */
     , (803397,  3694,      2) /* Legendary Coordination */
     , (803397,  6057,      2) /* Legendary Coordination */
     , (803397,  6062,      2) /* Legendary Coordination */
     , (803397,  6039,      2) /* Legendary Coordination */
     , (803397,  6042,      2) /* Legendary Coordination */
     , (803397,  6041,      2) /* Legendary Coordination */
     , (803397,  6068,      2) /* Legendary Coordination */;