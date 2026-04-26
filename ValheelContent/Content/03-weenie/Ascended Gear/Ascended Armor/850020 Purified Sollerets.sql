DELETE FROM `weenie` WHERE `class_Id` = 850020;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850020, 'ace850020-purifiedsollerets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850020,   1,          2) /* ItemType - Armor */
     , (850020,   3,         93) /* PaletteTemplate - Silver */
     , (850020,   4,      65536) /* ClothingPriority - Feet */
     , (850020,   5,        540) /* EncumbranceVal */
     , (850020,   8,        360) /* Mass */
     , (850020,   9,        256) /* ValidLocations - FootWear */
     , (850020,  16,          1) /* ItemUseable - No */
	 , (850020,  18,          1) /* UiEffects - Magical */
     , (850020,  19,     200000) /* Value */
     , (850020,  27,         32) /* ArmorType - Metal */
     , (850020,  28,       2100) /* ArmorLevel */
     , (850020,  33,          1) /* Bonded - Bonded */
     , (850020,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (850020, 106,        999) /* ItemSpellcraft */
     , (850020, 107,       1200) /* ItemCurMana */
     , (850020, 108,       1200) /* ItemMaxMana */
     , (850020, 114,          1) /* Attuned - Attuned */
	 , (850020, 158,          7) /* WieldRequirements - Level */
     , (850020, 160,        3000) /* WieldDifficulty */
     , (850020, 169,  151650564) /* TsysMutationData */
     , (850020, 265,         16) /* Defenders */
	 , (850020, 370,         135) /* Damage */
	 , (850020, 371,         135) /* Damage Resist */
	 , (850020, 374,         135) /* Critical Damage */
	 , (850020, 375,         135) /* Critical Damage Resist */
	 , (850020, 376,         135) /* Heal Boost */
	 , (850020, 379,         135) /* Vitality */
	 , (850020, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850020,  22, True ) /* Inscribable */
     , (850020, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850020,  12, 0.6600000262260437) /* Shade */
     , (850020,  13,     2.5) /* ArmorModVsSlash */
     , (850020,  14,     2.5) /* ArmorModVsPierce */
     , (850020,  15,     2.5) /* ArmorModVsBludgeon */
     , (850020,  16,     2.5) /* ArmorModVsCold */
     , (850020,  17,     2.5) /* ArmorModVsFire */
     , (850020,  18,     2.5) /* ArmorModVsAcid */
     , (850020,  19,     2.5) /* ArmorModVsElectric */
     , (850020,  29,     1.2) /* WeaponDefense */
     , (850020, 110,       1) /* BulkMod */
     , (850020, 111,       1) /* SizeMod */
     , (850020, 149,     1.2) /* WeaponMissileDefense */
     , (850020, 150,     1.2) /* WeaponMagicDefense */
	 , (850020, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850020,   1, 'Ascended Covenant Sollerets') /* Name */
     , (850020,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850020,   1,   33554654) /* Setup */
     , (850020,   3,  536870932) /* SoundTable */
     , (850020,   6,   67108990) /* PaletteBase */
     , (850020,   7,  268436450) /* ClothingBase */
     , (850020,   8,  100667309) /* Icon */
     , (850020,  22,  872415275) /* PhysicsEffectTable */
     , (850020,  36,  234881046) /* MutateFilter */
     , (850020,  46,  939524130) /* TsysMutationFilter */
	 , (850020,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850020,  3715,      2) /* Legendary Jumping Prowess */
     , (850020,  3736,      2) /* Legendary Sprint */
     , (850020,  3732,      2) /* Legendary Stamina Gain */
     , (850020,  3679,      2) /* Legendary Acid Bane */
     , (850020,  3689,      2) /* Legendary Bludgeoning Bane */
     , (850020,  3703,      2) /* Legendary Flame Bane */
     , (850020,  3706,      2) /* Legendary Frost Bane */
     , (850020,  3710,      2) /* Legendary Impenetrability */
     , (850020,  3728,      2) /* Legendary Piercing Bane */
     , (850020,  3686,      2) /* Legendary Slashing Bane */
     , (850020,  3718,      2) /* Legendary Storm Bane */
     , (850020,  6107,      2) /* Legendary Strength */
     , (850020,  6104,      2) /* Legendary Strength */
     , (850020,  6103,      2) /* Legendary Strength */
     , (850020,  6106,      2) /* Legendary Strength */
     , (850020,  6105,      2) /* Legendary Strength */
     , (850020,  6101,      2) /* Legendary Strength */;