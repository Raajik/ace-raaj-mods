DELETE FROM `weenie` WHERE `class_Id` = 803893;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803893, 'Tradewind Gauntlets of Protection', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803893,   1,          2) /* ItemType - Armor */
     , (803893,   3,         93) /* PaletteTemplate - Silver */
     , (803893,   4,      32768) /* ClothingPriority - Hands */
     , (803893,   5,        450) /* EncumbranceVal */
     , (803893,   8,        270) /* Mass */
     , (803893,   9,         32) /* ValidLocations - HandWear */
     , (803893,  16,          1) /* ItemUseable - No */
	 , (803893,  18,        512) /* UiEffects - Magical */
     , (803893,  19,     250000) /* Value */
     , (803893,  27,         32) /* ArmorType - Chainmail */
     , (803893,  28,       5000) /* ArmorLevel */
     , (803893,  33,          1) /* Bonded - Bonded */
     , (803893,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803893, 106,        999) /* ItemSpellcraft */
     , (803893, 107,       2000) /* ItemCurMana */
     , (803893, 108,       2000) /* ItemMaxMana */
     , (803893, 114,          0) /* Attuned - Attuned */
	 , (803893, 158,          7) /* WieldRequirements - Level */
     , (803893, 160,      10000) /* WieldDifficulty */
     , (803893, 169,  151651588) /* TsysMutationData */
     , (803893, 265,         25) /* Defenders */
	 , (803893, 370,        500) /* Damage */
	 , (803893, 371,        750) /* Damage Resist */
	 , (803893, 374,        500) /* Critical Damage */
	 , (803893, 375,        750) /* Critical Damage Resist */
	 , (803893, 376,        500) /* Heal Boost */
	 , (803893, 379,        750) /* Vitality */
	 , (803893, 9041,         5) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803893,  22, True ) /* Inscribable */
     , (803893, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803893,  12,    0.66) /* Shade */
     , (803893,  13,       3) /* ArmorModVsSlash */
     , (803893,  14,       3) /* ArmorModVsPierce */
     , (803893,  15,       3) /* ArmorModVsBludgeon */
     , (803893,  16,       3) /* ArmorModVsCold */
     , (803893,  17,       3) /* ArmorModVsFire */
     , (803893,  18,       3) /* ArmorModVsAcid */
     , (803893,  19,       3) /* ArmorModVsElectric */
     , (803893,  29,     1.5) /* WeaponDefense */
     , (803893, 110,       1) /* BulkMod */
     , (803893, 111,       1) /* SizeMod */
     , (803893, 149,     1.5) /* WeaponMissileDefense */
     , (803893, 150,     1.5) /* WeaponMagicDefense */
	 , (803893, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803893,   1, 'Tradewind Gauntlets of Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803893,   1,   33554648) /* Setup */
     , (803893,   3,  536870932) /* SoundTable */
     , (803893,   7,  268437327) /* ClothingBase */
     , (803893,   8,  100688353) /* Icon */
     , (803893,  22,  872415275) /* PhysicsEffectTable */
     , (803893,  36,  234881042) /* MutateFilter */
	 , (803893,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803893,  3742,      2) /* Legendary Light Weapon Aptitude */
     , (803893,  3741,      2) /* Legendary Missile Weapon Aptitude */
     , (803893,  3697,      2) /* Legendary Finesse Weapon Aptitude */
     , (803893,  5903,      2) /* Legendary Dual Wield Aptitude */
     , (803893,  3704,      2) /* Legendary Fletching Prowess */
     , (803893,  3740,      2) /* Legendary Heavy Weapon Aptitude */
     , (803893,  5026,      2) /* Legendary Two Handed Combat Aptitude */
     , (803893,  5436,      2) /* Legendary Void Magic Aptitude */
     , (803893,  3743,      2) /* Legendary War Magic Aptitude */
     , (803893,  3695,      2) /* Legendary Creature Magic Aptitude */
     , (803893,  3713,      2) /* Legendary Item Magic Aptitude */
     , (803893,  3717,      2) /* Legendary Life Magic Aptitude */
     , (803893,  3679,      2) /* Legendary Acid Bane */
     , (803893,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803893,  3703,      2) /* Legendary Flame Bane */
     , (803893,  3706,      2) /* Legendary Frost Bane */
     , (803893,  3710,      2) /* Legendary Impenetrability */
     , (803893,  3728,      2) /* Legendary Piercing Bane */
     , (803893,  3686,      2) /* Legendary Slashing Bane */
     , (803893,  3718,      2) /* Legendary Storm Bane */
     , (803893,  6061,      2) /* Legendary Storm Bane */
     , (803893,  6067,      2) /* Legendary Storm Bane */
     , (803893,  6071,      2) /* Legendary Storm Bane */
     , (803893,  6069,      2) /* Legendary Storm Bane */
     , (803893,  6070,      2) /* Legendary Storm Bane */;