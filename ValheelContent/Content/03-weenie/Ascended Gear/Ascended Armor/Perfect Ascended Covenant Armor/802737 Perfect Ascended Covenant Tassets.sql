DELETE FROM `weenie` WHERE `class_Id` = 802737;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802737, 'PerfectAscendedCovenantTassets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802737,   1,          2) /* ItemType - Armor */
     , (802737,   3,         93) /* PaletteTemplate - Silver */
     , (802737,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (802737,   5,        280) /* EncumbranceVal */
     , (802737,   8,        260) /* Mass */
     , (802737,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (802737,  16,          1) /* ItemUseable - No */
	 , (802737,  18,          4) /* UiEffects - Magical */
     , (802737,  19,       7500) /* Value */
     , (802737,  27,         32) /* ArmorType - Chainmail */
     , (802737,  28,       3300) /* ArmorLevel */
     , (802737,  33,          1) /* Bonded - Bonded */
     , (802737,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (802737, 106,        999) /* ItemSpellcraft */
     , (802737, 107,       1200) /* ItemCurMana */
     , (802737, 108,       1200) /* ItemMaxMana */
     , (802737, 114,          1) /* Attuned - Attuned */
	 , (802737, 158,          7) /* WieldRequirements - Level */
     , (802737, 160,        8000) /* WieldDifficulty */
     , (802737, 169,  252313860) /* TsysMutationData */
     , (802737, 265,         19) /* Defenders */
	 , (802737, 370,         185) /* Damage */
	 , (802737, 371,         185) /* Damage Resist */
	 , (802737, 374,         185) /* Critical Damage */
	 , (802737, 375,         185) /* Critical Damage Resist */
	 , (802737, 376,         185) /* Heal Boost */
	 , (802737, 379,         185) /* Vitality */
	 , (802737, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802737,  22, True ) /* Inscribable */
     , (802737, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802737,  12, 0.6600000262260437) /* Shade */
     , (802737,  13,     2.5) /* ArmorModVsSlash */
     , (802737,  14,     2.5) /* ArmorModVsPierce */
     , (802737,  15,     2.5) /* ArmorModVsBludgeon */
     , (802737,  16,     2.5) /* ArmorModVsCold */
     , (802737,  17,     2.5) /* ArmorModVsFire */
     , (802737,  18,     2.5) /* ArmorModVsAcid */
     , (802737,  19,     2.5) /* ArmorModVsElectric */
     , (802737,  29,     1.2) /* WeaponDefense */
     , (802737, 110,       1) /* BulkMod */
     , (802737, 111,       1) /* SizeMod */
     , (802737, 149,     1.2) /* WeaponMissileDefense */
     , (802737, 150,     1.2) /* WeaponMagicDefense */
	 , (802737, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802737,   1, 'Perfect Ascended Covenant Tassets') /* Name */
     , (802737,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802737,   1,   33554656) /* Setup */
     , (802737,   3,  536870932) /* SoundTable */
     , (802737,   6,   67108990) /* PaletteBase */
     , (802737,   7,  268436451) /* ClothingBase */
     , (802737,   8,  100673372) /* Icon */
     , (802737,  22,  872415275) /* PhysicsEffectTable */
     , (802737,  36,  234881046) /* MutateFilter */
     , (802737,  46,  939524130) /* TsysMutationFilter */
	 , (802737,  52,  100676442) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802737,  3687,      2) /* Legendary Slashing Ward */
	 , (802737,  3679,      2) /* Legendary Acid Bane */
     , (802737,  3689,      2) /* Legendary Bludgeoning Bane */
     , (802737,  3703,      2) /* Legendary Flame Bane */
     , (802737,  3706,      2) /* Legendary Frost Bane */
     , (802737,  3710,      2) /* Legendary Impenetrability */
     , (802737,  3728,      2) /* Legendary Piercing Bane */
     , (802737,  3686,      2) /* Legendary Slashing Bane */
     , (802737,  3718,      2) /* Legendary Storm Bane */
     , (802737,  3694,      2) /* Legendary Coordination */
     , (802737,  6057,      2) /* Legendary Coordination */
     , (802737,  6062,      2) /* Legendary Coordination */
     , (802737,  6039,      2) /* Legendary Coordination */
     , (802737,  6042,      2) /* Legendary Coordination */
     , (802737,  6041,      2) /* Legendary Coordination */
     , (802737,  6068,      2) /* Legendary Coordination */;