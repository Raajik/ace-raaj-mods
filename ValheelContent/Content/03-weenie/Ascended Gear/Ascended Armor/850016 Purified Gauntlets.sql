DELETE FROM `weenie` WHERE `class_Id` = 850016;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850016, 'ace850016-purifiedgauntlets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850016,   1,          2) /* ItemType - Armor */
     , (850016,   3,         93) /* PaletteTemplate - Silver */
     , (850016,   4,      32768) /* ClothingPriority - Hands */
     , (850016,   5,        450) /* EncumbranceVal */
     , (850016,   8,        270) /* Mass */
     , (850016,   9,         32) /* ValidLocations - HandWear */
     , (850016,  16,          1) /* ItemUseable - No */
	 , (850016,  18,          1) /* UiEffects - Magical */
     , (850016,  19,     200000) /* Value */
     , (850016,  27,         32) /* ArmorType - Chainmail */
     , (850016,  28,       2100) /* ArmorLevel */
     , (850016,  33,          1) /* Bonded - Bonded */
     , (850016,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (850016, 106,        999) /* ItemSpellcraft */
     , (850016, 107,       1200) /* ItemCurMana */
     , (850016, 108,       1200) /* ItemMaxMana */
     , (850016, 114,          1) /* Attuned - Attuned */
	 , (850016, 158,          7) /* WieldRequirements - Level */
     , (850016, 160,        3000) /* WieldDifficulty */
     , (850016, 169,  151651588) /* TsysMutationData */
     , (850016, 265,         25) /* Defenders */
	 , (850016, 370,         135) /* Damage */
	 , (850016, 371,         135) /* Damage Resist */
	 , (850016, 374,         135) /* Critical Damage */
	 , (850016, 375,         135) /* Critical Damage Resist */
	 , (850016, 376,         135) /* Heal Boost */
	 , (850016, 379,         135) /* Vitality */
	 , (850016, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850016,  22, True ) /* Inscribable */
     , (850016, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850016,  12, 0.6600000262260437) /* Shade */
     , (850016,  13,     2.5) /* ArmorModVsSlash */
     , (850016,  14,     2.5) /* ArmorModVsPierce */
     , (850016,  15,     2.5) /* ArmorModVsBludgeon */
     , (850016,  16,     2.5) /* ArmorModVsCold */
     , (850016,  17,     2.5) /* ArmorModVsFire */
     , (850016,  18,     2.5) /* ArmorModVsAcid */
     , (850016,  19,     2.5) /* ArmorModVsElectric */
     , (850016,  29,     1.2) /* WeaponDefense */
     , (850016, 110,       1) /* BulkMod */
     , (850016, 111,       1) /* SizeMod */
     , (850016, 149,     1.2) /* WeaponMissileDefense */
     , (850016, 150,     1.2) /* WeaponMagicDefense */
	 , (850016, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850016,   1, 'Ascended Covenant Gauntlets') /* Name */
     , (850016,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850016,   1,   33554648) /* Setup */
     , (850016,   3,  536870932) /* SoundTable */
     , (850016,   6,   67108990) /* PaletteBase */
     , (850016,   7,  268436445) /* ClothingBase */
     , (850016,   8,  100667341) /* Icon */
     , (850016,  22,  872415275) /* PhysicsEffectTable */
     , (850016,  36,  234881046) /* MutateFilter */
     , (850016,  46,  939524130) /* TsysMutationFilter */
	 , (850016,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850016,  3742,      2) /* Legendary Light Weapon Aptitude */
     , (850016,  3741,      2) /* Legendary Missile Weapon Aptitude */
     , (850016,  3697,      2) /* Legendary Finesse Weapon Aptitude */
     , (850016,  5903,      2) /* Legendary Dual Wield Aptitude */
     , (850016,  3704,      2) /* Legendary Fletching Prowess */
     , (850016,  3740,      2) /* Legendary Heavy Weapon Aptitude */
     , (850016,  5026,      2) /* Legendary Two Handed Combat Aptitude */
     , (850016,  5436,      2) /* Legendary Void Magic Aptitude */
     , (850016,  3743,      2) /* Legendary War Magic Aptitude */
     , (850016,  3695,      2) /* Legendary Creature Magic Aptitude */
     , (850016,  3713,      2) /* Legendary Item Magic Aptitude */
     , (850016,  3717,      2) /* Legendary Life Magic Aptitude */
     , (850016,  3679,      2) /* Legendary Acid Bane */
     , (850016,  3689,      2) /* Legendary Bludgeoning Bane */
     , (850016,  3703,      2) /* Legendary Flame Bane */
     , (850016,  3706,      2) /* Legendary Frost Bane */
     , (850016,  3710,      2) /* Legendary Impenetrability */
     , (850016,  3728,      2) /* Legendary Piercing Bane */
     , (850016,  3686,      2) /* Legendary Slashing Bane */
     , (850016,  3718,      2) /* Legendary Storm Bane */
     , (850016,  6061,      2) /* Legendary Storm Bane */
     , (850016,  6067,      2) /* Legendary Storm Bane */
     , (850016,  6071,      2) /* Legendary Storm Bane */
     , (850016,  6069,      2) /* Legendary Storm Bane */
     , (850016,  6070,      2) /* Legendary Storm Bane */;