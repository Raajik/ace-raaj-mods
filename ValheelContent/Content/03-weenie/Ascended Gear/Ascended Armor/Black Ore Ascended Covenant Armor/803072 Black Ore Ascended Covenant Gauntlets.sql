DELETE FROM `weenie` WHERE `class_Id` = 803072;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803072, 'BlackOreAscendedCovenantGauntlets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803072,   1,          2) /* ItemType - Armor */
     , (803072,   3,         93) /* PaletteTemplate - Silver */
     , (803072,   4,      32768) /* ClothingPriority - Hands */
     , (803072,   5,        450) /* EncumbranceVal */
     , (803072,   8,        270) /* Mass */
     , (803072,   9,         32) /* ValidLocations - HandWear */
     , (803072,  16,          1) /* ItemUseable - No */
	 , (803072,  18,          4) /* UiEffects - Magical */
     , (803072,  19,       2500) /* Value */
     , (803072,  27,         32) /* ArmorType - Chainmail */
     , (803072,  28,       3800) /* ArmorLevel */
     , (803072,  33,          1) /* Bonded - Bonded */
     , (803072,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803072, 106,        999) /* ItemSpellcraft */
     , (803072, 107,       1200) /* ItemCurMana */
     , (803072, 108,       1200) /* ItemMaxMana */
     , (803072, 114,          1) /* Attuned - Attuned */
	 , (803072, 158,          7) /* WieldRequirements - Level */
     , (803072, 160,        8000) /* WieldDifficulty */
     , (803072, 169,  151651588) /* TsysMutationData */
     , (803072, 265,         25) /* Defenders */
	 , (803072, 370,         210) /* Damage */
	 , (803072, 371,         210) /* Damage Resist */
	 , (803072, 374,         210) /* Critical Damage */
	 , (803072, 375,         210) /* Critical Damage Resist */
	 , (803072, 376,         210) /* Heal Boost */
	 , (803072, 379,         210) /* Vitality */
	 , (803072, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803072,  22, True ) /* Inscribable */
     , (803072, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803072,  12, 0.6600000262260437) /* Shade */
     , (803072,  13,     3) /* ArmorModVsSlash */
     , (803072,  14,     3) /* ArmorModVsPierce */
     , (803072,  15,     3) /* ArmorModVsBludgeon */
     , (803072,  16,     3) /* ArmorModVsCold */
     , (803072,  17,     3) /* ArmorModVsFire */
     , (803072,  18,     3) /* ArmorModVsAcid */
     , (803072,  19,     3) /* ArmorModVsElectric */
     , (803072,  29,     1.2) /* WeaponDefense */
     , (803072, 110,       1) /* BulkMod */
     , (803072, 111,       1) /* SizeMod */
     , (803072, 149,     1.4) /* WeaponMissileDefense */
     , (803072, 150,     1.4) /* WeaponMagicDefense */
	 , (803072, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803072,   1, 'Black Ore Ascended Covenant Gauntlets') /* Name */
     , (803072,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803072,   1,   33554648) /* Setup */
     , (803072,   3,  536870932) /* SoundTable */
     , (803072,   6,   67108990) /* PaletteBase */
     , (803072,   7,  268436445) /* ClothingBase */
     , (803072,   8,  100667341) /* Icon */
     , (803072,  22,  872415275) /* PhysicsEffectTable */
     , (803072,  36,  234881046) /* MutateFilter */
     , (803072,  46,  939524130) /* TsysMutationFilter */
	 , (803072,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803072,  3742,      2) /* Legendary Light Weapon Aptitude */
     , (803072,  3741,      2) /* Legendary Missile Weapon Aptitude */
     , (803072,  3697,      2) /* Legendary Finesse Weapon Aptitude */
     , (803072,  5903,      2) /* Legendary Dual Wield Aptitude */
     , (803072,  3704,      2) /* Legendary Fletching Prowess */
     , (803072,  3740,      2) /* Legendary Heavy Weapon Aptitude */
     , (803072,  5026,      2) /* Legendary Two Handed Combat Aptitude */
     , (803072,  5436,      2) /* Legendary Void Magic Aptitude */
     , (803072,  3743,      2) /* Legendary War Magic Aptitude */
     , (803072,  3695,      2) /* Legendary Creature Magic Aptitude */
     , (803072,  3713,      2) /* Legendary Item Magic Aptitude */
     , (803072,  3717,      2) /* Legendary Life Magic Aptitude */
     , (803072,  3679,      2) /* Legendary Acid Bane */
     , (803072,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803072,  3703,      2) /* Legendary Flame Bane */
     , (803072,  3706,      2) /* Legendary Frost Bane */
     , (803072,  3710,      2) /* Legendary Impenetrability */
     , (803072,  3728,      2) /* Legendary Piercing Bane */
     , (803072,  3686,      2) /* Legendary Slashing Bane */
     , (803072,  3718,      2) /* Legendary Storm Bane */
     , (803072,  6061,      2) /* Legendary Storm Bane */
     , (803072,  6067,      2) /* Legendary Storm Bane */
     , (803072,  6071,      2) /* Legendary Storm Bane */
     , (803072,  6069,      2) /* Legendary Storm Bane */
     , (803072,  6070,      2) /* Legendary Storm Bane */;