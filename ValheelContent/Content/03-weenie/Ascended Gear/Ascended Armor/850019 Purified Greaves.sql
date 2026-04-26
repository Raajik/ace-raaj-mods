DELETE FROM `weenie` WHERE `class_Id` = 850019;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850019, 'ace850019-purifiedgreaves', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850019,   1,          2) /* ItemType - Armor */
     , (850019,   3,         93) /* PaletteTemplate - Silver */
     , (850019,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (850019,   5,        280) /* EncumbranceVal */
     , (850019,   8,        260) /* Mass */
     , (850019,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (850019,  16,          1) /* ItemUseable - No */
	 , (850019,  18,          1) /* UiEffects - Magical */
     , (850019,  19,     200000) /* Value */
     , (850019,  27,         32) /* ArmorType - Chainmail */
     , (850019,  28,       2100) /* ArmorLevel */
     , (850019,  33,          1) /* Bonded - Bonded */
     , (850019,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (850019, 106,        999) /* ItemSpellcraft */
     , (850019, 107,       1200) /* ItemCurMana */
     , (850019, 108,       1200) /* ItemMaxMana */
     , (850019, 114,          1) /* Attuned - Attuned */
	 , (850019, 158,          7) /* WieldRequirements - Level */
     , (850019, 160,       3000) /* WieldDifficulty */
     , (850019, 169,  252313860) /* TsysMutationData */
     , (850019, 265,         19) /* Defenders */
	 , (850019, 370,         135) /* Damage */
	 , (850019, 371,         135) /* Damage Resist */
	 , (850019, 374,         135) /* Critical Damage */
	 , (850019, 375,         135) /* Critical Damage Resist */
	 , (850019, 376,         135) /* Heal Boost */
	 , (850019, 379,         135) /* Vitality */
	 , (850019, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850019,  22, True ) /* Inscribable */
     , (850019, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850019,  12, 0.6600000262260437) /* Shade */
     , (850019,  13,     2.5) /* ArmorModVsSlash */
     , (850019,  14,     2.5) /* ArmorModVsPierce */
     , (850019,  15,     2.5) /* ArmorModVsBludgeon */
     , (850019,  16,     2.5) /* ArmorModVsCold */
     , (850019,  17,     2.5) /* ArmorModVsFire */
     , (850019,  18,     2.5) /* ArmorModVsAcid */
     , (850019,  19,     2.5) /* ArmorModVsElectric */
     , (850019,  29,     1.2) /* WeaponDefense */
     , (850019, 110,       1) /* BulkMod */
     , (850019, 111,       1) /* SizeMod */
     , (850019, 149,     1.2) /* WeaponMissileDefense */
     , (850019, 150,     1.2) /* WeaponMagicDefense */
	 , (850019, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850019,   1, 'Ascended Covenant Greaves') /* Name */
     , (850019,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850019,   1,   33554641) /* Setup */
     , (850019,   3,  536870932) /* SoundTable */
     , (850019,   6,   67108990) /* PaletteBase */
     , (850019,   7,  268436447) /* ClothingBase */
     , (850019,   8,  100668167) /* Icon */
     , (850019,  22,  872415275) /* PhysicsEffectTable */
     , (850019,  36,  234881046) /* MutateFilter */
     , (850019,  46,  939524130) /* TsysMutationFilter */
	 , (850019,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850019,  3707,      2) /* Legendary Healing Prowess */
	 , (850019,  3702,      2) /* Legendary Flame Ward */
	 , (850019,  3679,      2) /* Legendary Acid Bane */
     , (850019,  3689,      2) /* Legendary Bludgeoning Bane */
     , (850019,  3703,      2) /* Legendary Flame Bane */
     , (850019,  3706,      2) /* Legendary Frost Bane */
     , (850019,  3710,      2) /* Legendary Impenetrability */
     , (850019,  3728,      2) /* Legendary Piercing Bane */
     , (850019,  3686,      2) /* Legendary Slashing Bane */
	 , (850019,  3718,      2) /* Legendary Storm Bane */
	 , (850019,  3738,      2) /* Legendary Strength */
	 , (850019,  3684,      2) /* Prodigal Armor */
	 , (850019,  3699,      2) /* Prodigal Defender */
	 , (850019,  3723,      2) /* Prodigal Magic Resistence */
	 , (850019,  6093,      2) /* Prodigal Magic Resistence */
	 , (850019,  6097,      2) /* Prodigal Magic Resistence */
	 , (850019,  6096,      2) /* Prodigal Magic Resistence */
	 , (850019,  6090,      2) /* Prodigal Magic Resistence */
	 , (850019,  6088,      2) /* Prodigal Magic Resistence */
	 , (850019,  6099,      2) /* Prodigal Magic Resistence */
	 , (850019,  6092,      2) /* Prodigal Magic Resistence */;