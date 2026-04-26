DELETE FROM `weenie` WHERE `class_Id` = 803293;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803293, 'Arken Drake Greaves', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803293,   1,          2) /* ItemType - Armor */
     , (803293,   3,         93) /* PaletteTemplate - Silver */
     , (803293,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (803293,   5,        280) /* EncumbranceVal */
     , (803293,   8,        260) /* Mass */
     , (803293,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (803293,  16,          1) /* ItemUseable - No */
	 , (803293,  18,        512) /* UiEffects - Magical */
     , (803293,  19,       3000) /* Value */
     , (803293,  27,         32) /* ArmorType - Chainmail */
     , (803293,  28,       4500) /* ArmorLevel */
     , (803293,  33,          1) /* Bonded - Bonded */
     , (803293,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803293, 106,        999) /* ItemSpellcraft */
     , (803293, 107,       2000) /* ItemCurMana */
     , (803293, 108,       2000) /* ItemMaxMana */
     , (803293, 114,          0) /* Attuned - Attuned */
	 , (803293, 158,          7) /* WieldRequirements - Level */
     , (803293, 160,      10000) /* WieldDifficulty */
     , (803293, 169,  252313860) /* TsysMutationData */
     , (803293, 265,         19) /* Defenders */
	 , (803293, 370,        235) /* Damage */
	 , (803293, 371,        235) /* Damage Resist */
	 , (803293, 374,        235) /* Critical Damage */
	 , (803293, 375,        235) /* Critical Damage Resist */
	 , (803293, 376,        235) /* Heal Boost */
	 , (803293, 379,        235) /* Vitality */
	 , (803293, 9041,         4) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803293,  22, True ) /* Inscribable */
     , (803293, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803293,  12, 0.6600000262260437) /* Shade */
     , (803293,  13,     3) /* ArmorModVsSlash */
     , (803293,  14,     3) /* ArmorModVsPierce */
     , (803293,  15,     3) /* ArmorModVsBludgeon */
     , (803293,  16,     3) /* ArmorModVsCold */
     , (803293,  17,     3) /* ArmorModVsFire */
     , (803293,  18,     3) /* ArmorModVsAcid */
     , (803293,  19,     3) /* ArmorModVsElectric */
     , (803293,  29,     1.5) /* WeaponDefense */
     , (803293, 110,       1) /* BulkMod */
     , (803293, 111,       1) /* SizeMod */
     , (803293, 149,     1.5) /* WeaponMissileDefense */
     , (803293, 150,     1.5) /* WeaponMagicDefense */
	 , (803293, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803293,   1, 'Arken Drake Greaves') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803293,   1,   33554641) /* Setup */
     , (803293,   3,  536870932) /* SoundTable */
     , (803293,   6,   67108990) /* PaletteBase */
     , (803293,   7,  268437271) /* ClothingBase */
     , (803293,   8,  100674552) /* Icon */
     , (803293,  22,  872415275) /* PhysicsEffectTable */
     , (803293,  36,  234881046) /* MutateFilter */
     , (803293,  46,  939524130) /* TsysMutationFilter */
	 , (803293,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803293,  3707,      2) /* Legendary Healing Prowess */
	 , (803293,  3702,      2) /* Legendary Flame Ward */
	 , (803293,  3679,      2) /* Legendary Acid Bane */
     , (803293,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803293,  3703,      2) /* Legendary Flame Bane */
     , (803293,  3706,      2) /* Legendary Frost Bane */
     , (803293,  3710,      2) /* Legendary Impenetrability */
     , (803293,  3728,      2) /* Legendary Piercing Bane */
     , (803293,  3686,      2) /* Legendary Slashing Bane */
	 , (803293,  3718,      2) /* Legendary Storm Bane */
	 , (803293,  3738,      2) /* Legendary Strength */
	 , (803293,  3684,      2) /* Prodigal Armor */
	 , (803293,  3699,      2) /* Prodigal Defender */
	 , (803293,  3723,      2) /* Prodigal Magic Resistence */
	 , (803293,  6093,      2) /* Prodigal Magic Resistence */
	 , (803293,  6097,      2) /* Prodigal Magic Resistence */
	 , (803293,  6096,      2) /* Prodigal Magic Resistence */
	 , (803293,  6090,      2) /* Prodigal Magic Resistence */
	 , (803293,  6088,      2) /* Prodigal Magic Resistence */
	 , (803293,  6099,      2) /* Prodigal Magic Resistence */
	 , (803293,  6092,      2) /* Prodigal Magic Resistence */;