DELETE FROM `weenie` WHERE `class_Id` = 803902;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803902, 'Tradewind Gauntlets of Vitality', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803902,   1,          2) /* ItemType - Armor */
     , (803902,   3,         93) /* PaletteTemplate - Silver */
     , (803902,   4,      32768) /* ClothingPriority - Hands */
     , (803902,   5,        450) /* EncumbranceVal */
     , (803902,   8,        270) /* Mass */
     , (803902,   9,         32) /* ValidLocations - HandWear */
     , (803902,  16,          1) /* ItemUseable - No */
	 , (803902,  18,        512) /* UiEffects - Magical */
     , (803902,  19,     250000) /* Value */
     , (803902,  27,         32) /* ArmorType - Chainmail */
     , (803902,  28,       5000) /* ArmorLevel */
     , (803902,  33,          1) /* Bonded - Bonded */
     , (803902,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803902, 106,        999) /* ItemSpellcraft */
     , (803902, 107,       2000) /* ItemCurMana */
     , (803902, 108,       2000) /* ItemMaxMana */
     , (803902, 114,          0) /* Attuned - Attuned */
	 , (803902, 158,          7) /* WieldRequirements - Level */
     , (803902, 160,      10000) /* WieldDifficulty */
     , (803902, 169,  151651588) /* TsysMutationData */
     , (803902, 265,         25) /* Defenders */
	 , (803902, 370,        500) /* Damage */
	 , (803902, 371,        500) /* Damage Resist */
	 , (803902, 374,        500) /* Critical Damage */
	 , (803902, 375,        500) /* Critical Damage Resist */
	 , (803902, 376,        750) /* Heal Boost */
	 , (803902, 379,        750) /* Vitality */
	 , (803902, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803902,  22, True ) /* Inscribable */
     , (803902, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803902,  12,    0.66) /* Shade */
     , (803902,  13,       3) /* ArmorModVsSlash */
     , (803902,  14,       3) /* ArmorModVsPierce */
     , (803902,  15,       3) /* ArmorModVsBludgeon */
     , (803902,  16,       3) /* ArmorModVsCold */
     , (803902,  17,       3) /* ArmorModVsFire */
     , (803902,  18,       3) /* ArmorModVsAcid */
     , (803902,  19,       3) /* ArmorModVsElectric */
     , (803902,  29,     1.5) /* WeaponDefense */
     , (803902, 110,       1) /* BulkMod */
     , (803902, 111,       1) /* SizeMod */
     , (803902, 149,     1.5) /* WeaponMissileDefense */
     , (803902, 150,     1.5) /* WeaponMagicDefense */
	 , (803902, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803902,   1, 'Tradewind Gauntlets of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803902,   1,   33554648) /* Setup */
     , (803902,   3,  536870932) /* SoundTable */
     , (803902,   7,  268437309) /* ClothingBase */
     , (803902,   8,  100688352) /* Icon */
     , (803902,  22,  872415275) /* PhysicsEffectTable */
     , (803902,  36,  234881042) /* MutateFilter */
	 , (803902,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803902,  3742,      2) /* Legendary Light Weapon Aptitude */
     , (803902,  3741,      2) /* Legendary Missile Weapon Aptitude */
     , (803902,  3697,      2) /* Legendary Finesse Weapon Aptitude */
     , (803902,  5903,      2) /* Legendary Dual Wield Aptitude */
     , (803902,  3704,      2) /* Legendary Fletching Prowess */
     , (803902,  3740,      2) /* Legendary Heavy Weapon Aptitude */
     , (803902,  5026,      2) /* Legendary Two Handed Combat Aptitude */
     , (803902,  5436,      2) /* Legendary Void Magic Aptitude */
     , (803902,  3743,      2) /* Legendary War Magic Aptitude */
     , (803902,  3695,      2) /* Legendary Creature Magic Aptitude */
     , (803902,  3713,      2) /* Legendary Item Magic Aptitude */
     , (803902,  3717,      2) /* Legendary Life Magic Aptitude */
     , (803902,  3679,      2) /* Legendary Acid Bane */
     , (803902,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803902,  3703,      2) /* Legendary Flame Bane */
     , (803902,  3706,      2) /* Legendary Frost Bane */
     , (803902,  3710,      2) /* Legendary Impenetrability */
     , (803902,  3728,      2) /* Legendary Piercing Bane */
     , (803902,  3686,      2) /* Legendary Slashing Bane */
     , (803902,  3718,      2) /* Legendary Storm Bane */
     , (803902,  6061,      2) /* Legendary Storm Bane */
     , (803902,  6067,      2) /* Legendary Storm Bane */
     , (803902,  6071,      2) /* Legendary Storm Bane */
     , (803902,  6069,      2) /* Legendary Storm Bane */
     , (803902,  6070,      2) /* Legendary Storm Bane */;