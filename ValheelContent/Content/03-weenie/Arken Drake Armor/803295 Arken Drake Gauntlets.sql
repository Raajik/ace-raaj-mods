DELETE FROM `weenie` WHERE `class_Id` = 803295;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803295, 'Arken Drake Gauntlets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803295,   1,          2) /* ItemType - Armor */
     , (803295,   3,         93) /* PaletteTemplate - Silver */
     , (803295,   4,      32768) /* ClothingPriority - Hands */
     , (803295,   5,        450) /* EncumbranceVal */
     , (803295,   8,        270) /* Mass */
     , (803295,   9,         32) /* ValidLocations - HandWear */
     , (803295,  16,          1) /* ItemUseable - No */
	 , (803295,  18,        512) /* UiEffects - Magical */
     , (803295,  19,       3000) /* Value */
     , (803295,  27,         32) /* ArmorType - Chainmail */
     , (803295,  28,       4500) /* ArmorLevel */
     , (803295,  33,          1) /* Bonded - Bonded */
     , (803295,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803295, 106,        999) /* ItemSpellcraft */
     , (803295, 107,       2000) /* ItemCurMana */
     , (803295, 108,       2000) /* ItemMaxMana */
     , (803295, 114,          0) /* Attuned - Attuned */
	 , (803295, 158,          7) /* WieldRequirements - Level */
     , (803295, 160,      10000) /* WieldDifficulty */
     , (803295, 169,  151651588) /* TsysMutationData */
     , (803295, 265,         25) /* Defenders */
	 , (803295, 370,        235) /* Damage */
	 , (803295, 371,        235) /* Damage Resist */
	 , (803295, 374,        235) /* Critical Damage */
	 , (803295, 375,        235) /* Critical Damage Resist */
	 , (803295, 376,        235) /* Heal Boost */
	 , (803295, 379,        235) /* Vitality */
	 , (803295, 9041,         4) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803295,  22, True ) /* Inscribable */
     , (803295, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803295,  12, 0.6600000262260437) /* Shade */
     , (803295,  13,     3) /* ArmorModVsSlash */
     , (803295,  14,     3) /* ArmorModVsPierce */
     , (803295,  15,     3) /* ArmorModVsBludgeon */
     , (803295,  16,     3) /* ArmorModVsCold */
     , (803295,  17,     3) /* ArmorModVsFire */
     , (803295,  18,     3) /* ArmorModVsAcid */
     , (803295,  19,     3) /* ArmorModVsElectric */
     , (803295,  29,     1.5) /* WeaponDefense */
     , (803295, 110,       1) /* BulkMod */
     , (803295, 111,       1) /* SizeMod */
     , (803295, 149,     1.5) /* WeaponMissileDefense */
     , (803295, 150,     1.5) /* WeaponMagicDefense */
	 , (803295, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803295,   1, 'Arken Drake Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803295,   1,   33559505) /* Setup */
     , (803295,   3,  536870932) /* SoundTable */
     , (803295,   6,   67108990) /* PaletteBase */
     , (803295,   7,  268437303) /* ClothingBase */
     , (803295,   8,  100687136) /* Icon */
     , (803295,  22,  872415275) /* PhysicsEffectTable */
	 , (803295,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803295,  3742,      2) /* Legendary Light Weapon Aptitude */
     , (803295,  3741,      2) /* Legendary Missile Weapon Aptitude */
     , (803295,  3697,      2) /* Legendary Finesse Weapon Aptitude */
     , (803295,  5903,      2) /* Legendary Dual Wield Aptitude */
     , (803295,  3704,      2) /* Legendary Fletching Prowess */
     , (803295,  3740,      2) /* Legendary Heavy Weapon Aptitude */
     , (803295,  5026,      2) /* Legendary Two Handed Combat Aptitude */
     , (803295,  5436,      2) /* Legendary Void Magic Aptitude */
     , (803295,  3743,      2) /* Legendary War Magic Aptitude */
     , (803295,  3695,      2) /* Legendary Creature Magic Aptitude */
     , (803295,  3713,      2) /* Legendary Item Magic Aptitude */
     , (803295,  3717,      2) /* Legendary Life Magic Aptitude */
     , (803295,  3679,      2) /* Legendary Acid Bane */
     , (803295,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803295,  3703,      2) /* Legendary Flame Bane */
     , (803295,  3706,      2) /* Legendary Frost Bane */
     , (803295,  3710,      2) /* Legendary Impenetrability */
     , (803295,  3728,      2) /* Legendary Piercing Bane */
     , (803295,  3686,      2) /* Legendary Slashing Bane */
     , (803295,  3718,      2) /* Legendary Storm Bane */
     , (803295,  6061,      2) /* Legendary Storm Bane */
     , (803295,  6067,      2) /* Legendary Storm Bane */
     , (803295,  6071,      2) /* Legendary Storm Bane */
     , (803295,  6069,      2) /* Legendary Storm Bane */
     , (803295,  6070,      2) /* Legendary Storm Bane */;