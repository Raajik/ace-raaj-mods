DELETE FROM `weenie` WHERE `class_Id` = 850018;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850018, 'ace850018-purifiedtassets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850018,   1,          2) /* ItemType - Armor */
     , (850018,   3,         93) /* PaletteTemplate - Silver */
     , (850018,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (850018,   5,        280) /* EncumbranceVal */
     , (850018,   8,        260) /* Mass */
     , (850018,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (850018,  16,          1) /* ItemUseable - No */
	 , (850018,  18,          1) /* UiEffects - Magical */
     , (850018,  19,     200000) /* Value */
     , (850018,  27,         32) /* ArmorType - Chainmail */
     , (850018,  28,       2100) /* ArmorLevel */
     , (850018,  33,          1) /* Bonded - Bonded */
     , (850018,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (850018, 106,        999) /* ItemSpellcraft */
     , (850018, 107,       1200) /* ItemCurMana */
     , (850018, 108,       1200) /* ItemMaxMana */
     , (850018, 114,          1) /* Attuned - Attuned */
	 , (850018, 158,          7) /* WieldRequirements - Level */
     , (850018, 160,        3000) /* WieldDifficulty */
     , (850018, 169,  252313860) /* TsysMutationData */
     , (850018, 265,         23) /* Defenders */
	 , (850018, 370,         135) /* Damage */
	 , (850018, 371,         135) /* Damage Resist */
	 , (850018, 374,         135) /* Critical Damage */
	 , (850018, 375,         135) /* Critical Damage Resist */
	 , (850018, 376,         135) /* Heal Boost */
	 , (850018, 379,         135) /* Vitality */
	 , (850018, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850018,  22, True ) /* Inscribable */
     , (850018, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850018,  12, 0.6600000262260437) /* Shade */
     , (850018,  13,     2.5) /* ArmorModVsSlash */
     , (850018,  14,     2.5) /* ArmorModVsPierce */
     , (850018,  15,     2.5) /* ArmorModVsBludgeon */
     , (850018,  16,     2.5) /* ArmorModVsCold */
     , (850018,  17,     2.5) /* ArmorModVsFire */
     , (850018,  18,     2.5) /* ArmorModVsAcid */
     , (850018,  19,     2.5) /* ArmorModVsElectric */
     , (850018,  29,     1.2) /* WeaponDefense */
     , (850018, 110,       1) /* BulkMod */
     , (850018, 111,       1) /* SizeMod */
     , (850018, 149,     1.2) /* WeaponMissileDefense */
     , (850018, 150,     1.2) /* WeaponMagicDefense */
	 , (850018, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850018,   1, 'Ascended Covenant Tassets') /* Name */
     , (850018,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850018,   1,   33554656) /* Setup */
     , (850018,   3,  536870932) /* SoundTable */
     , (850018,   6,   67108990) /* PaletteBase */
     , (850018,   7,  268436451) /* ClothingBase */
     , (850018,   8,  100673372) /* Icon */
     , (850018,  22,  872415275) /* PhysicsEffectTable */
     , (850018,  36,  234881046) /* MutateFilter */
     , (850018,  46,  939524130) /* TsysMutationFilter */
	 , (850018,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850018,  3687,      2) /* Legendary Slashing Ward */
	 , (850018,  3679,      2) /* Legendary Acid Bane */
     , (850018,  3689,      2) /* Legendary Bludgeoning Bane */
     , (850018,  3703,      2) /* Legendary Flame Bane */
     , (850018,  3706,      2) /* Legendary Frost Bane */
     , (850018,  3710,      2) /* Legendary Impenetrability */
     , (850018,  3728,      2) /* Legendary Piercing Bane */
     , (850018,  3686,      2) /* Legendary Slashing Bane */
     , (850018,  3718,      2) /* Legendary Storm Bane */
     , (850018,  3694,      2) /* Legendary Coordination */
     , (850018,  6057,      2) /* Legendary Coordination */
     , (850018,  6062,      2) /* Legendary Coordination */
     , (850018,  6039,      2) /* Legendary Coordination */
     , (850018,  6042,      2) /* Legendary Coordination */
     , (850018,  6041,      2) /* Legendary Coordination */
     , (850018,  6068,      2) /* Legendary Coordination */;