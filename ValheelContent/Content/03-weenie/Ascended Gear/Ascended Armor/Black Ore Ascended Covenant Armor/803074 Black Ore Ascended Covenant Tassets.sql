DELETE FROM `weenie` WHERE `class_Id` = 803074;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803074, 'BlackOreAscendedCovenantTassets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803074,   1,          2) /* ItemType - Armor */
     , (803074,   3,         93) /* PaletteTemplate - Silver */
     , (803074,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (803074,   5,        280) /* EncumbranceVal */
     , (803074,   8,        260) /* Mass */
     , (803074,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (803074,  16,          1) /* ItemUseable - No */
	 , (803074,  18,          4) /* UiEffects - Magical */
     , (803074,  19,       7500) /* Value */
     , (803074,  27,         32) /* ArmorType - Chainmail */
     , (803074,  28,       3800) /* ArmorLevel */
     , (803074,  33,          1) /* Bonded - Bonded */
     , (803074,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803074, 106,        999) /* ItemSpellcraft */
     , (803074, 107,       1200) /* ItemCurMana */
     , (803074, 108,       1200) /* ItemMaxMana */
     , (803074, 114,          1) /* Attuned - Attuned */
	 , (803074, 158,          7) /* WieldRequirements - Level */
     , (803074, 160,        8000) /* WieldDifficulty */
     , (803074, 169,  252313860) /* TsysMutationData */
     , (803074, 265,         23) /* Defenders */
	 , (803074, 370,         210) /* Damage */
	 , (803074, 371,         210) /* Damage Resist */
	 , (803074, 374,         210) /* Critical Damage */
	 , (803074, 375,         210) /* Critical Damage Resist */
	 , (803074, 376,         210) /* Heal Boost */
	 , (803074, 379,         210) /* Vitality */
	 , (803074, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803074,  22, True ) /* Inscribable */
     , (803074, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803074,  12, 0.6600000262260437) /* Shade */
     , (803074,  13,     3) /* ArmorModVsSlash */
     , (803074,  14,     3) /* ArmorModVsPierce */
     , (803074,  15,     3) /* ArmorModVsBludgeon */
     , (803074,  16,     3) /* ArmorModVsCold */
     , (803074,  17,     3) /* ArmorModVsFire */
     , (803074,  18,     3) /* ArmorModVsAcid */
     , (803074,  19,     3) /* ArmorModVsElectric */
     , (803074,  29,     1.2) /* WeaponDefense */
     , (803074, 110,       1) /* BulkMod */
     , (803074, 111,       1) /* SizeMod */
     , (803074, 149,     1.4) /* WeaponMissileDefense */
     , (803074, 150,     1.4) /* WeaponMagicDefense */
	 , (803074, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803074,   1, 'Black Ore Ascended Covenant Tassets') /* Name */
     , (803074,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803074,   1,   33554656) /* Setup */
     , (803074,   3,  536870932) /* SoundTable */
     , (803074,   6,   67108990) /* PaletteBase */
     , (803074,   7,  268436451) /* ClothingBase */
     , (803074,   8,  100673372) /* Icon */
     , (803074,  22,  872415275) /* PhysicsEffectTable */
     , (803074,  36,  234881046) /* MutateFilter */
     , (803074,  46,  939524130) /* TsysMutationFilter */
	 , (803074,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803074,  3687,      2) /* Legendary Slashing Ward */
	 , (803074,  3679,      2) /* Legendary Acid Bane */
     , (803074,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803074,  3703,      2) /* Legendary Flame Bane */
     , (803074,  3706,      2) /* Legendary Frost Bane */
     , (803074,  3710,      2) /* Legendary Impenetrability */
     , (803074,  3728,      2) /* Legendary Piercing Bane */
     , (803074,  3686,      2) /* Legendary Slashing Bane */
     , (803074,  3718,      2) /* Legendary Storm Bane */
     , (803074,  3694,      2) /* Legendary Coordination */
     , (803074,  6057,      2) /* Legendary Coordination */
     , (803074,  6062,      2) /* Legendary Coordination */
     , (803074,  6039,      2) /* Legendary Coordination */
     , (803074,  6042,      2) /* Legendary Coordination */
     , (803074,  6041,      2) /* Legendary Coordination */
     , (803074,  6068,      2) /* Legendary Coordination */;