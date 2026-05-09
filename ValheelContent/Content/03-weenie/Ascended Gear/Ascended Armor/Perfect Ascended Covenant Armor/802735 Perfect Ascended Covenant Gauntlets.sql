DELETE FROM `weenie` WHERE `class_Id` = 802735;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802735, 'PerfectAscendedCovenantGauntlets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802735,   1,          2) /* ItemType - Armor */
     , (802735,   3,         93) /* PaletteTemplate - Silver */
     , (802735,   4,      32768) /* ClothingPriority - Hands */
     , (802735,   5,        450) /* EncumbranceVal */
     , (802735,   8,        270) /* Mass */
     , (802735,   9,         32) /* ValidLocations - HandWear */
     , (802735,  16,          1) /* ItemUseable - No */
	 , (802735,  18,          4) /* UiEffects - Magical */
     , (802735,  19,       2500) /* Value */
     , (802735,  27,         32) /* ArmorType - Chainmail */
     , (802735,  28,       3300) /* ArmorLevel */
     , (802735,  33,          1) /* Bonded - Bonded */
     , (802735,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (802735, 106,        999) /* ItemSpellcraft */
     , (802735, 107,       1200) /* ItemCurMana */
     , (802735, 108,       1200) /* ItemMaxMana */
     , (802735, 114,          1) /* Attuned - Attuned */
	 , (802735, 158,          7) /* WieldRequirements - Level */
     , (802735, 160,        8000) /* WieldDifficulty */
     , (802735, 169,  151651588) /* TsysMutationData */
     , (802735, 265,         24) /* Defenders */
	 , (802735, 370,         185) /* Damage */
	 , (802735, 371,         185) /* Damage Resist */
	 , (802735, 374,         185) /* Critical Damage */
	 , (802735, 375,         185) /* Critical Damage Resist */
	 , (802735, 376,         185) /* Heal Boost */
	 , (802735, 379,         185) /* Vitality */
	 , (802735, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802735,  22, True ) /* Inscribable */
     , (802735, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802735,  12, 0.6600000262260437) /* Shade */
     , (802735,  13,     2.5) /* ArmorModVsSlash */
     , (802735,  14,     2.5) /* ArmorModVsPierce */
     , (802735,  15,     2.5) /* ArmorModVsBludgeon */
     , (802735,  16,     2.5) /* ArmorModVsCold */
     , (802735,  17,     2.5) /* ArmorModVsFire */
     , (802735,  18,     2.5) /* ArmorModVsAcid */
     , (802735,  19,     2.5) /* ArmorModVsElectric */
     , (802735,  29,     1.2) /* WeaponDefense */
     , (802735, 110,       1) /* BulkMod */
     , (802735, 111,       1) /* SizeMod */
     , (802735, 149,     1.2) /* WeaponMissileDefense */
     , (802735, 150,     1.2) /* WeaponMagicDefense */
	 , (802735, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802735,   1, 'Perfect Ascended Covenant Gauntlets') /* Name */
     , (802735,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802735,   1,   33554648) /* Setup */
     , (802735,   3,  536870932) /* SoundTable */
     , (802735,   6,   67108990) /* PaletteBase */
     , (802735,   7,  268436445) /* ClothingBase */
     , (802735,   8,  100667341) /* Icon */
     , (802735,  22,  872415275) /* PhysicsEffectTable */
     , (802735,  36,  234881046) /* MutateFilter */
     , (802735,  46,  939524130) /* TsysMutationFilter */
	 , (802735,  52,  100676442) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802735,  3742,      2) /* Legendary Light Weapon Aptitude */
     , (802735,  3741,      2) /* Legendary Missile Weapon Aptitude */
     , (802735,  3697,      2) /* Legendary Finesse Weapon Aptitude */
     , (802735,  5903,      2) /* Legendary Dual Wield Aptitude */
     , (802735,  3704,      2) /* Legendary Fletching Prowess */
     , (802735,  3740,      2) /* Legendary Heavy Weapon Aptitude */
     , (802735,  5026,      2) /* Legendary Two Handed Combat Aptitude */
     , (802735,  5436,      2) /* Legendary Void Magic Aptitude */
     , (802735,  3743,      2) /* Legendary War Magic Aptitude */
     , (802735,  3695,      2) /* Legendary Creature Magic Aptitude */
     , (802735,  3713,      2) /* Legendary Item Magic Aptitude */
     , (802735,  3717,      2) /* Legendary Life Magic Aptitude */
     , (802735,  3679,      2) /* Legendary Acid Bane */
     , (802735,  3689,      2) /* Legendary Bludgeoning Bane */
     , (802735,  3703,      2) /* Legendary Flame Bane */
     , (802735,  3706,      2) /* Legendary Frost Bane */
     , (802735,  3710,      2) /* Legendary Impenetrability */
     , (802735,  3728,      2) /* Legendary Piercing Bane */
     , (802735,  3686,      2) /* Legendary Slashing Bane */
     , (802735,  3718,      2) /* Legendary Storm Bane */
     , (802735,  6061,      2) /* Legendary Storm Bane */
     , (802735,  6067,      2) /* Legendary Storm Bane */
     , (802735,  6071,      2) /* Legendary Storm Bane */
     , (802735,  6069,      2) /* Legendary Storm Bane */
     , (802735,  6070,      2) /* Legendary Storm Bane */;