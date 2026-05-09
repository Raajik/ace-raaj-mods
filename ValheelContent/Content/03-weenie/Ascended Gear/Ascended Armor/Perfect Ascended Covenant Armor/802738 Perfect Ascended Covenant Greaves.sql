DELETE FROM `weenie` WHERE `class_Id` = 802738;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802738, 'PerfectAscendedCovenantGreaves', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802738,   1,          2) /* ItemType - Armor */
     , (802738,   3,         93) /* PaletteTemplate - Silver */
     , (802738,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (802738,   5,        280) /* EncumbranceVal */
     , (802738,   8,        260) /* Mass */
     , (802738,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (802738,  16,          1) /* ItemUseable - No */
	 , (802738,  18,          4) /* UiEffects - Magical */
     , (802738,  19,       7500) /* Value */
     , (802738,  27,         32) /* ArmorType - Chainmail */
     , (802738,  28,       3300) /* ArmorLevel */
     , (802738,  33,          1) /* Bonded - Bonded */
     , (802738,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (802738, 106,        999) /* ItemSpellcraft */
     , (802738, 107,       1200) /* ItemCurMana */
     , (802738, 108,       1200) /* ItemMaxMana */
     , (802738, 114,          1) /* Attuned - Attuned */
	 , (802738, 158,          7) /* WieldRequirements - Level */
     , (802738, 160,        8000) /* WieldDifficulty */
     , (802738, 169,  252313860) /* TsysMutationData */
     , (802738, 265,         16) /* Defenders */
	 , (802738, 370,         185) /* Damage */
	 , (802738, 371,         185) /* Damage Resist */
	 , (802738, 374,         185) /* Critical Damage */
	 , (802738, 375,         185) /* Critical Damage Resist */
	 , (802738, 376,         185) /* Heal Boost */
	 , (802738, 379,         185) /* Vitality */
	 , (802738, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802738,  22, True ) /* Inscribable */
     , (802738, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802738,  12, 0.6600000262260437) /* Shade */
     , (802738,  13,     2.5) /* ArmorModVsSlash */
     , (802738,  14,     2.5) /* ArmorModVsPierce */
     , (802738,  15,     2.5) /* ArmorModVsBludgeon */
     , (802738,  16,     2.5) /* ArmorModVsCold */
     , (802738,  17,     2.5) /* ArmorModVsFire */
     , (802738,  18,     2.5) /* ArmorModVsAcid */
     , (802738,  19,     2.5) /* ArmorModVsElectric */
     , (802738,  29,     1.2) /* WeaponDefense */
     , (802738, 110,       1) /* BulkMod */
     , (802738, 111,       1) /* SizeMod */
     , (802738, 149,     1.2) /* WeaponMissileDefense */
     , (802738, 150,     1.2) /* WeaponMagicDefense */
	 , (802738, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802738,   1, 'Perfect Ascended Covenant Greaves') /* Name */
     , (802738,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802738,   1,   33554641) /* Setup */
     , (802738,   3,  536870932) /* SoundTable */
     , (802738,   6,   67108990) /* PaletteBase */
     , (802738,   7,  268436447) /* ClothingBase */
     , (802738,   8,  100668167) /* Icon */
     , (802738,  22,  872415275) /* PhysicsEffectTable */
     , (802738,  36,  234881046) /* MutateFilter */
     , (802738,  46,  939524130) /* TsysMutationFilter */
	 , (802738,  52,  100676442) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802738,  3707,      2) /* Legendary Healing Prowess */
	 , (802738,  3702,      2) /* Legendary Flame Ward */
	 , (802738,  3679,      2) /* Legendary Acid Bane */
     , (802738,  3689,      2) /* Legendary Bludgeoning Bane */
     , (802738,  3703,      2) /* Legendary Flame Bane */
     , (802738,  3706,      2) /* Legendary Frost Bane */
     , (802738,  3710,      2) /* Legendary Impenetrability */
     , (802738,  3728,      2) /* Legendary Piercing Bane */
     , (802738,  3686,      2) /* Legendary Slashing Bane */
	 , (802738,  3718,      2) /* Legendary Storm Bane */
	 , (802738,  3738,      2) /* Legendary Strength */
	 , (802738,  3684,      2) /* Prodigal Armor */
	 , (802738,  3699,      2) /* Prodigal Defender */
	 , (802738,  3723,      2) /* Prodigal Magic Resistence */
	 , (802738,  6093,      2) /* Prodigal Magic Resistence */
	 , (802738,  6097,      2) /* Prodigal Magic Resistence */
	 , (802738,  6096,      2) /* Prodigal Magic Resistence */
	 , (802738,  6090,      2) /* Prodigal Magic Resistence */
	 , (802738,  6088,      2) /* Prodigal Magic Resistence */
	 , (802738,  6099,      2) /* Prodigal Magic Resistence */
	 , (802738,  6092,      2) /* Prodigal Magic Resistence */;