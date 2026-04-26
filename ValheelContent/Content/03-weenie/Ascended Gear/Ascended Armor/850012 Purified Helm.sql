DELETE FROM `weenie` WHERE `class_Id` = 850012;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850012, 'ace850012-purifiedhelm', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850012,   1,          2) /* ItemType - Armor */
     , (850012,   3,         93) /* PaletteTemplate - Silver */
     , (850012,   4,      16384) /* ClothingPriority - Head */
     , (850012,   5,        140) /* EncumbranceVal */
     , (850012,   8,        140) /* Mass */
     , (850012,   9,          1) /* ValidLocations - HeadWear */
     , (850012,  16,          1) /* ItemUseable - No */
     , (850012,  18,          1) /* UiEffects - Magical */
     , (850012,  19,     200000) /* Value */
     , (850012,  27,         32) /* ArmorType - Chainmail */
     , (850012,  28,       2100) /* ArmorLevel */
     , (850012,  33,          1) /* Bonded - Bonded */
     , (850012,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850012, 106,        999) /* ItemSpellcraft */
     , (850012, 107,       1200) /* ItemCurMana */
     , (850012, 108,       1200) /* ItemMaxMana */ 
     , (850012, 114,          1) /* Attuned - Attuned */
	 , (850012, 158,          7) /* WieldRequirements - Level */
     , (850012, 160,        3000) /* WieldDifficulty */
     , (850012, 169,  168427780) /* TsysMutationData */
     , (850012, 265,         29) /* Defenders */
	 , (850012, 370,         135) /* Damage */
	 , (850012, 371,         135) /* Damage Resist */
	 , (850012, 374,         135) /* Critical Damage */
	 , (850012, 375,         135) /* Critical Damage Resist */
	 , (850012, 376,         135) /* Heal Boost */
	 , (850012, 379,         135) /* Vitality */
	 , (850012, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850012,  22, True ) /* Inscribable */
     , (850012, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850012,  12, 0.6600000262260437) /* Shade */
     , (850012,  13,     2.5) /* ArmorModVsSlash */
     , (850012,  14,     2.5) /* ArmorModVsPierce */
     , (850012,  15,     2.5) /* ArmorModVsBludgeon */
     , (850012,  16,     2.5) /* ArmorModVsCold */
     , (850012,  17,     2.5) /* ArmorModVsFire */
     , (850012,  18,     2.5) /* ArmorModVsAcid */
     , (850012,  19,     2.5) /* ArmorModVsElectric */
     , (850012,  29,     1.2) /* WeaponDefense */
     , (850012, 110,       1) /* BulkMod */
     , (850012, 111,       1) /* SizeMod */
     , (850012, 149,     1.2) /* WeaponMissileDefense */
     , (850012, 150,     1.2) /* WeaponMagicDefense */
	 , (850012, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850012,   1, 'Ascended Covenant Helm') /* Name */
     , (850012,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850012,   1,   33557884) /* Setup */
     , (850012,   3,  536870932) /* SoundTable */
     , (850012,   6,   67108990) /* PaletteBase */
     , (850012,   7,  268436448) /* ClothingBase */
     , (850012,   8,  100667343) /* Icon */
     , (850012,  22,  872415275) /* PhysicsEffectTable */
     , (850012,  36,  234881046) /* MutateFilter */
     , (850012,  46,  939524130) /* TsysMutationFilter */
     , (850012,  52,  100686604) /* IconUnderlay */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850012,  3682,      2) /* Legendary Arcane Prowess */
     , (850012,  3711,      2) /* Legendary Impregnability */
     , (850012,  3724,      2) /* Legendary Mana Conversion Prowess */
     , (850012,  3725,      2) /* Legendary Mana Gain */
	 , (850012,  3719,      2) /* Legendary Storm Ward */
	 , (850012,  3679,      2) /* Legendary Acid Bane */
     , (850012,  3689,      2) /* Legendary Bludgeoning Bane */
     , (850012,  3703,      2) /* Legendary Flame Bane */
     , (850012,  3706,      2) /* Legendary Frost Bane */
     , (850012,  3710,      2) /* Legendary Impenetrability */
     , (850012,  3728,      2) /* Legendary Piercing Bane */
     , (850012,  3686,      2) /* Legendary Slashing Bane */
     , (850012,  3718,      2) /* Legendary Storm Bane */
	 , (850012,  3730,      2) /* Legendary Quickness */
	 , (850012,  6056,      2) /* Legendary Quickness */
	 , (850012,  6046,      2) /* Legendary Quickness */
	 , (850012,  6060,      2) /* Legendary Quickness */
	 , (850012,  6075,      2) /* Legendary Quickness */
	 , (850012,  6074,      2) /* Legendary Quickness */
	 , (850012,  6064,      2) /* Legendary Quickness */;