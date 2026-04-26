DELETE FROM `weenie` WHERE `class_Id` = 803883;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803883, 'Tradewind Gauntlets of Destruction', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803883,   1,          2) /* ItemType - Armor */
     , (803883,   3,         93) /* PaletteTemplate - Silver */
     , (803883,   4,      32768) /* ClothingPriority - Hands */
     , (803883,   5,        450) /* EncumbranceVal */
     , (803883,   8,        270) /* Mass */
     , (803883,   9,         32) /* ValidLocations - HandWear */
     , (803883,  16,          1) /* ItemUseable - No */
	 , (803883,  18,        512) /* UiEffects - Magical */
     , (803883,  19,     250000) /* Value */
     , (803883,  27,         32) /* ArmorType - Chainmail */
     , (803883,  28,       5000) /* ArmorLevel */
     , (803883,  33,          1) /* Bonded - Bonded */
     , (803883,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803883, 106,        999) /* ItemSpellcraft */
     , (803883, 107,       2000) /* ItemCurMana */
     , (803883, 108,       2000) /* ItemMaxMana */
     , (803883, 114,          0) /* Attuned - Attuned */
	 , (803883, 158,          7) /* WieldRequirements - Level */
     , (803883, 160,      10000) /* WieldDifficulty */
     , (803883, 169,  151651588) /* TsysMutationData */
     , (803883, 265,         25) /* Defenders */
	 , (803883, 370,        750) /* Damage */
	 , (803883, 371,        500) /* Damage Resist */
	 , (803883, 374,        750) /* Critical Damage */
	 , (803883, 375,        500) /* Critical Damage Resist */
	 , (803883, 376,        500) /* Heal Boost */
	 , (803883, 379,        500) /* Vitality */
	 , (803883, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803883,  22, True ) /* Inscribable */
     , (803883, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803883,  12,    0.66) /* Shade */
     , (803883,  13,       3) /* ArmorModVsSlash */
     , (803883,  14,       3) /* ArmorModVsPierce */
     , (803883,  15,       3) /* ArmorModVsBludgeon */
     , (803883,  16,       3) /* ArmorModVsCold */
     , (803883,  17,       3) /* ArmorModVsFire */
     , (803883,  18,       3) /* ArmorModVsAcid */
     , (803883,  19,       3) /* ArmorModVsElectric */
     , (803883,  29,     1.5) /* WeaponDefense */
     , (803883, 110,       1) /* BulkMod */
     , (803883, 111,       1) /* SizeMod */
     , (803883, 149,     1.5) /* WeaponMissileDefense */
     , (803883, 150,     1.5) /* WeaponMagicDefense */
	 , (803883, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803883,   1, 'Tradewind Gauntlets of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803883,   1,   33554648) /* Setup */
     , (803883,   3,  536870932) /* SoundTable */
     , (803883,   7,  268437318) /* ClothingBase */
     , (803883,   8,  100688355) /* Icon */
     , (803883,  22,  872415275) /* PhysicsEffectTable */
     , (803883,  36,  234881042) /* MutateFilter */
	 , (803883,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803883,  3742,      2) /* Legendary Light Weapon Aptitude */
     , (803883,  3741,      2) /* Legendary Missile Weapon Aptitude */
     , (803883,  3697,      2) /* Legendary Finesse Weapon Aptitude */
     , (803883,  5903,      2) /* Legendary Dual Wield Aptitude */
     , (803883,  3704,      2) /* Legendary Fletching Prowess */
     , (803883,  3740,      2) /* Legendary Heavy Weapon Aptitude */
     , (803883,  5026,      2) /* Legendary Two Handed Combat Aptitude */
     , (803883,  5436,      2) /* Legendary Void Magic Aptitude */
     , (803883,  3743,      2) /* Legendary War Magic Aptitude */
     , (803883,  3695,      2) /* Legendary Creature Magic Aptitude */
     , (803883,  3713,      2) /* Legendary Item Magic Aptitude */
     , (803883,  3717,      2) /* Legendary Life Magic Aptitude */
     , (803883,  3679,      2) /* Legendary Acid Bane */
     , (803883,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803883,  3703,      2) /* Legendary Flame Bane */
     , (803883,  3706,      2) /* Legendary Frost Bane */
     , (803883,  3710,      2) /* Legendary Impenetrability */
     , (803883,  3728,      2) /* Legendary Piercing Bane */
     , (803883,  3686,      2) /* Legendary Slashing Bane */
     , (803883,  3718,      2) /* Legendary Storm Bane */
     , (803883,  6061,      2) /* Legendary Storm Bane */
     , (803883,  6067,      2) /* Legendary Storm Bane */
     , (803883,  6071,      2) /* Legendary Storm Bane */
     , (803883,  6069,      2) /* Legendary Storm Bane */
     , (803883,  6070,      2) /* Legendary Storm Bane */;