DELETE FROM `weenie` WHERE `class_Id` = 803399;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803399, 'Luminium Sollerets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803399,   1,          2) /* ItemType - Armor */
     , (803399,   3,         93) /* PaletteTemplate - Silver */
     , (803399,   4,      65536) /* ClothingPriority - Feet */
     , (803399,   5,        540) /* EncumbranceVal */
     , (803399,   8,        360) /* Mass */
     , (803399,   9,        256) /* ValidLocations - FootWear */
     , (803399,  16,          1) /* ItemUseable - No */
	 , (803399,  18,          1) /* UiEffects - Magical */
     , (803399,  19,     400000) /* Value */
     , (803399,  27,         32) /* ArmorType - Metal */
     , (803399,  28,       2500) /* ArmorLevel */
     , (803399,  33,          1) /* Bonded - Bonded */
     , (803399,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803399, 106,        999) /* ItemSpellcraft */
     , (803399, 107,       1200) /* ItemCurMana */
     , (803399, 108,       1200) /* ItemMaxMana */
     , (803399, 114,          1) /* Attuned - Attuned */
	 , (803399, 158,          7) /* WieldRequirements - Level */
     , (803399, 160,       5000) /* WieldDifficulty */
     , (803399, 169,  151650564) /* TsysMutationData */
     , (803399, 265,         16) /* Defenders */
	 , (803399, 370,         160) /* Damage */
	 , (803399, 371,         160) /* Damage Resist */
	 , (803399, 374,         160) /* Critical Damage */
	 , (803399, 375,         160) /* Critical Damage Resist */
	 , (803399, 376,         160) /* Heal Boost */
	 , (803399, 379,         160) /* Vitality */
	 , (803399, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803399,  22, True ) /* Inscribable */
     , (803399, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803399,  12, 0.6600000262260437) /* Shade */
     , (803399,  13,     2.5) /* ArmorModVsSlash */
     , (803399,  14,     2.5) /* ArmorModVsPierce */
     , (803399,  15,     2.5) /* ArmorModVsBludgeon */
     , (803399,  16,     2.5) /* ArmorModVsCold */
     , (803399,  17,     2.5) /* ArmorModVsFire */
     , (803399,  18,     2.5) /* ArmorModVsAcid */
     , (803399,  19,     2.5) /* ArmorModVsElectric */
     , (803399,  29,     1.2) /* WeaponDefense */
     , (803399, 110,       1) /* BulkMod */
     , (803399, 111,       1) /* SizeMod */
     , (803399, 149,     1.2) /* WeaponMissileDefense */
     , (803399, 150,     1.2) /* WeaponMagicDefense */
	 , (803399, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803399,   1, 'Luminium Sollerets') /* Name */
     , (803399,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803399,   1,   33554654) /* Setup */
     , (803399,   3,  536870932) /* SoundTable */
     , (803399,   7,  268437587) /* ClothingBase */
     , (803399,   8,  100693101) /* Icon */
     , (803399,  22,  872415275) /* PhysicsEffectTable */
     , (803399,  36,  234881046) /* MutateFilter */
     , (803399,  46,  939524130) /* TsysMutationFilter */
	 , (803399,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803399,  3715,      2) /* Legendary Jumping Prowess */
     , (803399,  3736,      2) /* Legendary Sprint */
     , (803399,  3732,      2) /* Legendary Stamina Gain */
     , (803399,  3679,      2) /* Legendary Acid Bane */
     , (803399,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803399,  3703,      2) /* Legendary Flame Bane */
     , (803399,  3706,      2) /* Legendary Frost Bane */
     , (803399,  3710,      2) /* Legendary Impenetrability */
     , (803399,  3728,      2) /* Legendary Piercing Bane */
     , (803399,  3686,      2) /* Legendary Slashing Bane */
     , (803399,  3718,      2) /* Legendary Storm Bane */
     , (803399,  6107,      2) /* Legendary Strength */
     , (803399,  6104,      2) /* Legendary Strength */
     , (803399,  6103,      2) /* Legendary Strength */
     , (803399,  6106,      2) /* Legendary Strength */
     , (803399,  6105,      2) /* Legendary Strength */
     , (803399,  6101,      2) /* Legendary Strength */;