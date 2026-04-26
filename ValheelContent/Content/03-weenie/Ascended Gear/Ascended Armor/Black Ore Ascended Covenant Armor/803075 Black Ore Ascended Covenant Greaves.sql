DELETE FROM `weenie` WHERE `class_Id` = 803075;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803075, 'BlackOreAscendedCovenantGreaves', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803075,   1,          2) /* ItemType - Armor */
     , (803075,   3,         93) /* PaletteTemplate - Silver */
     , (803075,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (803075,   5,        280) /* EncumbranceVal */
     , (803075,   8,        260) /* Mass */
     , (803075,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (803075,  16,          1) /* ItemUseable - No */
	 , (803075,  18,          4) /* UiEffects - Magical */
     , (803075,  19,       7500) /* Value */
     , (803075,  27,         32) /* ArmorType - Chainmail */
     , (803075,  28,       3800) /* ArmorLevel */
     , (803075,  33,          1) /* Bonded - Bonded */
     , (803075,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803075, 106,        999) /* ItemSpellcraft */
     , (803075, 107,       1200) /* ItemCurMana */
     , (803075, 108,       1200) /* ItemMaxMana */
     , (803075, 114,          1) /* Attuned - Attuned */
	 , (803075, 158,          7) /* WieldRequirements - Level */
     , (803075, 160,        8000) /* WieldDifficulty */
     , (803075, 169,  252313860) /* TsysMutationData */
     , (803075, 265,         19) /* Defenders */
	 , (803075, 370,         210) /* Damage */
	 , (803075, 371,         210) /* Damage Resist */
	 , (803075, 374,         210) /* Critical Damage */
	 , (803075, 375,         210) /* Critical Damage Resist */
	 , (803075, 376,         210) /* Heal Boost */
	 , (803075, 379,         210) /* Vitality */
	 , (803075, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803075,  22, True ) /* Inscribable */
     , (803075, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803075,  12, 0.6600000262260437) /* Shade */
     , (803075,  13,     3) /* ArmorModVsSlash */
     , (803075,  14,     3) /* ArmorModVsPierce */
     , (803075,  15,     3) /* ArmorModVsBludgeon */
     , (803075,  16,     3) /* ArmorModVsCold */
     , (803075,  17,     3) /* ArmorModVsFire */
     , (803075,  18,     3) /* ArmorModVsAcid */
     , (803075,  19,     3) /* ArmorModVsElectric */
     , (803075,  29,     1.2) /* WeaponDefense */
     , (803075, 110,       1) /* BulkMod */
     , (803075, 111,       1) /* SizeMod */
     , (803075, 149,     1.4) /* WeaponMissileDefense */
     , (803075, 150,     1.4) /* WeaponMagicDefense */
	 , (803075, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803075,   1, 'Black Ore Ascended Covenant Greaves') /* Name */
     , (803075,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803075,   1,   33554641) /* Setup */
     , (803075,   3,  536870932) /* SoundTable */
     , (803075,   6,   67108990) /* PaletteBase */
     , (803075,   7,  268436447) /* ClothingBase */
     , (803075,   8,  100668167) /* Icon */
     , (803075,  22,  872415275) /* PhysicsEffectTable */
     , (803075,  36,  234881046) /* MutateFilter */
     , (803075,  46,  939524130) /* TsysMutationFilter */
	 , (803075,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803075,  3707,      2) /* Legendary Healing Prowess */
	 , (803075,  3702,      2) /* Legendary Flame Ward */
	 , (803075,  3679,      2) /* Legendary Acid Bane */
     , (803075,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803075,  3703,      2) /* Legendary Flame Bane */
     , (803075,  3706,      2) /* Legendary Frost Bane */
     , (803075,  3710,      2) /* Legendary Impenetrability */
     , (803075,  3728,      2) /* Legendary Piercing Bane */
     , (803075,  3686,      2) /* Legendary Slashing Bane */
	 , (803075,  3718,      2) /* Legendary Storm Bane */
	 , (803075,  3738,      2) /* Legendary Strength */
	 , (803075,  3684,      2) /* Prodigal Armor */
	 , (803075,  3699,      2) /* Prodigal Defender */
	 , (803075,  3723,      2) /* Prodigal Magic Resistence */
	 , (803075,  6093,      2) /* Prodigal Magic Resistence */
	 , (803075,  6097,      2) /* Prodigal Magic Resistence */
	 , (803075,  6096,      2) /* Prodigal Magic Resistence */
	 , (803075,  6090,      2) /* Prodigal Magic Resistence */
	 , (803075,  6088,      2) /* Prodigal Magic Resistence */
	 , (803075,  6099,      2) /* Prodigal Magic Resistence */
	 , (803075,  6092,      2) /* Prodigal Magic Resistence */;