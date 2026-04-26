DELETE FROM `weenie` WHERE `class_Id` = 803391;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803391, 'Luminium Helm', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803391,   1,          2) /* ItemType - Armor */
     , (803391,   3,         93) /* PaletteTemplate - Silver */
     , (803391,   4,      16384) /* ClothingPriority - Head */
     , (803391,   5,        140) /* EncumbranceVal */
     , (803391,   8,        140) /* Mass */
     , (803391,   9,          1) /* ValidLocations - HeadWear */
     , (803391,  16,          1) /* ItemUseable - No */
     , (803391,  18,          1) /* UiEffects - Magical */
     , (803391,  19,     400000) /* Value */
     , (803391,  27,         32) /* ArmorType - Chainmail */
     , (803391,  28,       2500) /* ArmorLevel */
     , (803391,  33,          1) /* Bonded - Bonded */
     , (803391,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803391, 106,        999) /* ItemSpellcraft */
     , (803391, 107,       1200) /* ItemCurMana */
     , (803391, 108,       1200) /* ItemMaxMana */ 
     , (803391, 114,          1) /* Attuned - Attuned */
	 , (803391, 158,          7) /* WieldRequirements - Level */
     , (803391, 160,       5000) /* WieldDifficulty */
     , (803391, 169,  168427780) /* TsysMutationData */
     , (803391, 265,         29) /* Defenders */
	 , (803391, 370,         160) /* Damage */
	 , (803391, 371,         160) /* Damage Resist */
	 , (803391, 374,         160) /* Critical Damage */
	 , (803391, 375,         160) /* Critical Damage Resist */
	 , (803391, 376,         160) /* Heal Boost */
	 , (803391, 379,         160) /* Vitality */
	 , (803391, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803391,  22, True ) /* Inscribable */
     , (803391, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803391,  12, 0.6600000262260437) /* Shade */
     , (803391,  13,     2.5) /* ArmorModVsSlash */
     , (803391,  14,     2.5) /* ArmorModVsPierce */
     , (803391,  15,     2.5) /* ArmorModVsBludgeon */
     , (803391,  16,     2.5) /* ArmorModVsCold */
     , (803391,  17,     2.5) /* ArmorModVsFire */
     , (803391,  18,     2.5) /* ArmorModVsAcid */
     , (803391,  19,     2.5) /* ArmorModVsElectric */
     , (803391,  29,     1.2) /* WeaponDefense */
     , (803391, 110,       1) /* BulkMod */
     , (803391, 111,       1) /* SizeMod */
     , (803391, 149,     1.2) /* WeaponMissileDefense */
     , (803391, 150,     1.2) /* WeaponMagicDefense */
	 , (803391, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803391,   1, 'Luminium Helm') /* Name */
     , (803391,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803391,   1,   33555048) /* Setup */
     , (803391,   3,  536870932) /* SoundTable */
     , (803391,   7,  268437585) /* ClothingBase */
     , (803391,   8,  100693099) /* Icon */
     , (803391,  22,  872415275) /* PhysicsEffectTable */
     , (803391,  36,  234881046) /* MutateFilter */
     , (803391,  46,  939524130) /* TsysMutationFilter */
     , (803391,  52,  100686604) /* IconUnderlay */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803391,  3682,      2) /* Legendary Arcane Prowess */
     , (803391,  3711,      2) /* Legendary Impregnability */
     , (803391,  3724,      2) /* Legendary Mana Conversion Prowess */
     , (803391,  3725,      2) /* Legendary Mana Gain */
	 , (803391,  3719,      2) /* Legendary Storm Ward */
	 , (803391,  3679,      2) /* Legendary Acid Bane */
     , (803391,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803391,  3703,      2) /* Legendary Flame Bane */
     , (803391,  3706,      2) /* Legendary Frost Bane */
     , (803391,  3710,      2) /* Legendary Impenetrability */
     , (803391,  3728,      2) /* Legendary Piercing Bane */
     , (803391,  3686,      2) /* Legendary Slashing Bane */
     , (803391,  3718,      2) /* Legendary Storm Bane */
	 , (803391,  3730,      2) /* Legendary Quickness */
	 , (803391,  6056,      2) /* Legendary Quickness */
	 , (803391,  6046,      2) /* Legendary Quickness */
	 , (803391,  6060,      2) /* Legendary Quickness */
	 , (803391,  6075,      2) /* Legendary Quickness */
	 , (803391,  6074,      2) /* Legendary Quickness */
	 , (803391,  6064,      2) /* Legendary Quickness */;