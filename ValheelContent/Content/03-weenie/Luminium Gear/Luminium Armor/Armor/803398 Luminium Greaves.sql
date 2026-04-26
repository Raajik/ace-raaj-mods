DELETE FROM `weenie` WHERE `class_Id` = 803398;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803398, 'Luminium Greaves', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803398,   1,          2) /* ItemType - Armor */
     , (803398,   3,         93) /* PaletteTemplate - Silver */
     , (803398,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (803398,   5,        280) /* EncumbranceVal */
     , (803398,   8,        260) /* Mass */
     , (803398,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (803398,  16,          1) /* ItemUseable - No */
	 , (803398,  18,          1) /* UiEffects - Magical */
     , (803398,  19,     400000) /* Value */
     , (803398,  27,         32) /* ArmorType - Chainmail */
     , (803398,  28,       2500) /* ArmorLevel */
     , (803398,  33,          1) /* Bonded - Bonded */
     , (803398,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803398, 106,        999) /* ItemSpellcraft */
     , (803398, 107,       1200) /* ItemCurMana */
     , (803398, 108,       1200) /* ItemMaxMana */
     , (803398, 114,          1) /* Attuned - Attuned */
	 , (803398, 158,          7) /* WieldRequirements - Level */
     , (803398, 160,       5000) /* WieldDifficulty */
     , (803398, 169,  252313860) /* TsysMutationData */
     , (803398, 265,         19) /* Defenders */
	 , (803398, 370,         160) /* Damage */
	 , (803398, 371,         160) /* Damage Resist */
	 , (803398, 374,         160) /* Critical Damage */
	 , (803398, 375,         160) /* Critical Damage Resist */
	 , (803398, 376,         160) /* Heal Boost */
	 , (803398, 379,         160) /* Vitality */
	 , (803398, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803398,  22, True ) /* Inscribable */
     , (803398, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803398,  12, 0.6600000262260437) /* Shade */
     , (803398,  13,     2.5) /* ArmorModVsSlash */
     , (803398,  14,     2.5) /* ArmorModVsPierce */
     , (803398,  15,     2.5) /* ArmorModVsBludgeon */
     , (803398,  16,     2.5) /* ArmorModVsCold */
     , (803398,  17,     2.5) /* ArmorModVsFire */
     , (803398,  18,     2.5) /* ArmorModVsAcid */
     , (803398,  19,     2.5) /* ArmorModVsElectric */
     , (803398,  29,     1.2) /* WeaponDefense */
     , (803398, 110,       1) /* BulkMod */
     , (803398, 111,       1) /* SizeMod */
     , (803398, 149,     1.2) /* WeaponMissileDefense */
     , (803398, 150,     1.2) /* WeaponMagicDefense */
	 , (803398, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803398,   1, 'Luminium Greaves') /* Name */
     , (803398,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803398,   1,   33554641) /* Setup */
     , (803398,   3,  536870932) /* SoundTable */
     , (803398,   7,  268437584) /* ClothingBase */
     , (803398,   8,  100693098) /* Icon */
     , (803398,  22,  872415275) /* PhysicsEffectTable */
     , (803398,  36,  234881046) /* MutateFilter */
     , (803398,  46,  939524130) /* TsysMutationFilter */
	 , (803398,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803398,  3707,      2) /* Legendary Healing Prowess */
	 , (803398,  3702,      2) /* Legendary Flame Ward */
	 , (803398,  3679,      2) /* Legendary Acid Bane */
     , (803398,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803398,  3703,      2) /* Legendary Flame Bane */
     , (803398,  3706,      2) /* Legendary Frost Bane */
     , (803398,  3710,      2) /* Legendary Impenetrability */
     , (803398,  3728,      2) /* Legendary Piercing Bane */
     , (803398,  3686,      2) /* Legendary Slashing Bane */
	 , (803398,  3718,      2) /* Legendary Storm Bane */
	 , (803398,  3738,      2) /* Legendary Strength */
	 , (803398,  3684,      2) /* Prodigal Armor */
	 , (803398,  3699,      2) /* Prodigal Defender */
	 , (803398,  3723,      2) /* Prodigal Magic Resistence */
	 , (803398,  6093,      2) /* Prodigal Magic Resistence */
	 , (803398,  6097,      2) /* Prodigal Magic Resistence */
	 , (803398,  6096,      2) /* Prodigal Magic Resistence */
	 , (803398,  6090,      2) /* Prodigal Magic Resistence */
	 , (803398,  6088,      2) /* Prodigal Magic Resistence */
	 , (803398,  6099,      2) /* Prodigal Magic Resistence */
	 , (803398,  6092,      2) /* Prodigal Magic Resistence */;