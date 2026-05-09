DELETE FROM `weenie` WHERE `class_Id` = 803395;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803395, 'Luminium Gauntlets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803395,   1,          2) /* ItemType - Armor */
     , (803395,   3,         93) /* PaletteTemplate - Silver */
     , (803395,   4,      32768) /* ClothingPriority - Hands */
     , (803395,   5,        450) /* EncumbranceVal */
     , (803395,   8,        270) /* Mass */
     , (803395,   9,         32) /* ValidLocations - HandWear */
     , (803395,  16,          1) /* ItemUseable - No */
	 , (803395,  18,          1) /* UiEffects - Magical */
     , (803395,  19,     400000) /* Value */
     , (803395,  27,         32) /* ArmorType - Chainmail */
     , (803395,  28,       2500) /* ArmorLevel */
     , (803395,  33,          1) /* Bonded - Bonded */
     , (803395,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803395, 106,        999) /* ItemSpellcraft */
     , (803395, 107,       1200) /* ItemCurMana */
     , (803395, 108,       1200) /* ItemMaxMana */
     , (803395, 114,          1) /* Attuned - Attuned */
	 , (803395, 158,          7) /* WieldRequirements - Level */
     , (803395, 160,        5000) /* WieldDifficulty */
     , (803395, 169,  151651588) /* TsysMutationData */
     , (803395, 265,         25) /* Defenders */
	 , (803395, 370,         160) /* Damage */
	 , (803395, 371,         160) /* Damage Resist */
	 , (803395, 374,         160) /* Critical Damage */
	 , (803395, 375,         160) /* Critical Damage Resist */
	 , (803395, 376,         160) /* Heal Boost */
	 , (803395, 379,         160) /* Vitality */
	 , (803395, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803395,  22, True ) /* Inscribable */
     , (803395, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803395,  12, 0.6600000262260437) /* Shade */
     , (803395,  13,     2.5) /* ArmorModVsSlash */
     , (803395,  14,     2.5) /* ArmorModVsPierce */
     , (803395,  15,     2.5) /* ArmorModVsBludgeon */
     , (803395,  16,     2.5) /* ArmorModVsCold */
     , (803395,  17,     2.5) /* ArmorModVsFire */
     , (803395,  18,     2.5) /* ArmorModVsAcid */
     , (803395,  19,     2.5) /* ArmorModVsElectric */
     , (803395,  29,     1.2) /* WeaponDefense */
     , (803395, 110,       1) /* BulkMod */
     , (803395, 111,       1) /* SizeMod */
     , (803395, 149,     1.2) /* WeaponMissileDefense */
     , (803395, 150,     1.2) /* WeaponMagicDefense */
	 , (803395, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803395,   1, 'Luminium Gauntlets') /* Name */
     , (803395,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803395,   1,   33554648) /* Setup */
     , (803395,   3,  536870932) /* SoundTable */
     , (803395,   7,  268437582) /* ClothingBase */
     , (803395,   8,  100693096) /* Icon */
     , (803395,  22,  872415275) /* PhysicsEffectTable */
     , (803395,  36,  234881046) /* MutateFilter */
     , (803395,  46,  939524130) /* TsysMutationFilter */
	 , (803395,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803395,  3742,      2) /* Legendary Light Weapon Aptitude */
     , (803395,  3741,      2) /* Legendary Missile Weapon Aptitude */
     , (803395,  3697,      2) /* Legendary Finesse Weapon Aptitude */
     , (803395,  5903,      2) /* Legendary Dual Wield Aptitude */
     , (803395,  3704,      2) /* Legendary Fletching Prowess */
     , (803395,  3740,      2) /* Legendary Heavy Weapon Aptitude */
     , (803395,  5026,      2) /* Legendary Two Handed Combat Aptitude */
     , (803395,  5436,      2) /* Legendary Void Magic Aptitude */
     , (803395,  3743,      2) /* Legendary War Magic Aptitude */
     , (803395,  3695,      2) /* Legendary Creature Magic Aptitude */
     , (803395,  3713,      2) /* Legendary Item Magic Aptitude */
     , (803395,  3717,      2) /* Legendary Life Magic Aptitude */
     , (803395,  3679,      2) /* Legendary Acid Bane */
     , (803395,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803395,  3703,      2) /* Legendary Flame Bane */
     , (803395,  3706,      2) /* Legendary Frost Bane */
     , (803395,  3710,      2) /* Legendary Impenetrability */
     , (803395,  3728,      2) /* Legendary Piercing Bane */
     , (803395,  3686,      2) /* Legendary Slashing Bane */
     , (803395,  3718,      2) /* Legendary Storm Bane */
     , (803395,  6061,      2) /* Legendary Storm Bane */
     , (803395,  6067,      2) /* Legendary Storm Bane */
     , (803395,  6071,      2) /* Legendary Storm Bane */
     , (803395,  6069,      2) /* Legendary Storm Bane */
     , (803395,  6070,      2) /* Legendary Storm Bane */;