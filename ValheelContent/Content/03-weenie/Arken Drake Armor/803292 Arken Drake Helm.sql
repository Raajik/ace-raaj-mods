DELETE FROM `weenie` WHERE `class_Id` = 803292;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803292, 'Arken Drake Helm', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803292,   1,          2) /* ItemType - Armor */
     , (803292,   3,         93) /* PaletteTemplate - Silver */
     , (803292,   4,      16384) /* ClothingPriority - Head */
     , (803292,   5,        140) /* EncumbranceVal */
     , (803292,   8,        140) /* Mass */
     , (803292,   9,          1) /* ValidLocations - HeadWear */
     , (803292,  16,          1) /* ItemUseable - No */
     , (803292,  18,        512) /* UiEffects - Magical */
     , (803292,  19,       3000) /* Value */
     , (803292,  27,         32) /* ArmorType - Chainmail */
     , (803292,  28,       4500) /* ArmorLevel */
     , (803292,  33,          1) /* Bonded - Bonded */
     , (803292,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803292, 106,        999) /* ItemSpellcraft */
     , (803292, 107,       2000) /* ItemCurMana */
     , (803292, 108,       2000) /* ItemMaxMana */ 
     , (803292, 114,          0) /* Attuned - Attuned */
	 , (803292, 158,          7) /* WieldRequirements - Level */
     , (803292, 160,      10000) /* WieldDifficulty */
     , (803292, 169,  168427780) /* TsysMutationData */
     , (803292, 265,         29) /* Defenders */
	 , (803292, 370,        235) /* Damage */
	 , (803292, 371,        235) /* Damage Resist */
	 , (803292, 374,        235) /* Critical Damage */
	 , (803292, 375,        235) /* Critical Damage Resist */
	 , (803292, 376,        235) /* Heal Boost */
	 , (803292, 379,        235) /* Vitality */
	 , (803292, 9041,         4) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803292,  22, True ) /* Inscribable */
     , (803292, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803292,  12, 0.6600000262260437) /* Shade */
     , (803292,  13,     3) /* ArmorModVsSlash */
     , (803292,  14,     3) /* ArmorModVsPierce */
     , (803292,  15,     3) /* ArmorModVsBludgeon */
     , (803292,  16,     3) /* ArmorModVsCold */
     , (803292,  17,     3) /* ArmorModVsFire */
     , (803292,  18,     3) /* ArmorModVsAcid */
     , (803292,  19,     3) /* ArmorModVsElectric */
     , (803292,  29,     1.5) /* WeaponDefense */
     , (803292, 110,       1) /* BulkMod */
     , (803292, 111,       1) /* SizeMod */
     , (803292, 149,     1.5) /* WeaponMissileDefense */
     , (803292, 150,     1.5) /* WeaponMagicDefense */
	 , (803292, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803292,   1, 'Arken Drake Helm') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803292,   1,   33559327) /* Setup */
     , (803292,   3,  536870932) /* SoundTable */
     , (803292,   6,   67108990) /* PaletteBase */
     , (803292,   7,  268437304) /* ClothingBase */
     , (803292,   8,  100690122) /* Icon */
     , (803292,  22,  872415275) /* PhysicsEffectTable */
     , (803292,  52,  100686604) /* IconUnderlay */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803292,  3682,      2) /* Legendary Arcane Prowess */
     , (803292,  3711,      2) /* Legendary Impregnability */
     , (803292,  3724,      2) /* Legendary Mana Conversion Prowess */
     , (803292,  3725,      2) /* Legendary Mana Gain */
	 , (803292,  3719,      2) /* Legendary Storm Ward */
	 , (803292,  3679,      2) /* Legendary Acid Bane */
     , (803292,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803292,  3703,      2) /* Legendary Flame Bane */
     , (803292,  3706,      2) /* Legendary Frost Bane */
     , (803292,  3710,      2) /* Legendary Impenetrability */
     , (803292,  3728,      2) /* Legendary Piercing Bane */
     , (803292,  3686,      2) /* Legendary Slashing Bane */
     , (803292,  3718,      2) /* Legendary Storm Bane */
	 , (803292,  3730,      2) /* Legendary Quickness */
	 , (803292,  6056,      2) /* Legendary Quickness */
	 , (803292,  6046,      2) /* Legendary Quickness */
	 , (803292,  6060,      2) /* Legendary Quickness */
	 , (803292,  6075,      2) /* Legendary Quickness */
	 , (803292,  6074,      2) /* Legendary Quickness */
	 , (803292,  6064,      2) /* Legendary Quickness */;