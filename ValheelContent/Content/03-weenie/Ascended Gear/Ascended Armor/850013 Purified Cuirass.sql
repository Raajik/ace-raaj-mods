DELETE FROM `weenie` WHERE `class_Id` = 850013;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850013, 'ace850013-purifiedCuirass', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850013,   1,          2) /* ItemType - Armor */
     , (850013,   3,         93) /* PaletteTemplate - Silver */
     , (850013,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (850013,   5,        932) /* EncumbranceVal */
     , (850013,   8,        560) /* Mass */
     , (850013,   9,        512) /* ValidLocations - ChestArmor */
     , (850013,  16,          1) /* ItemUseable - No */
	 , (850013,  18,          1) /* UiEffects - Magical */
     , (850013,  19,     200000) /* Value */
     , (850013,  27,         32) /* ArmorType - Chainmail */
     , (850013,  28,       2100) /* ArmorLevel */
     , (850013,  33,          1) /* Bonded - Bonded */
     , (850013,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (850013, 106,        999) /* ItemSpellcraft */
     , (850013, 107,       1200) /* ItemCurMana */
     , (850013, 108,       1200) /* ItemMaxMana */
     , (850013, 114,          1) /* Attuned - Attuned */
	 , (850013, 158,          7) /* WieldRequirements - Level */
     , (850013, 160,        3000) /* WieldDifficulty */
     , (850013, 169,  118097668) /* TsysMutationData */
     , (850013, 265,         28) /* Defenders */
	 , (850013, 370,         135) /* Damage */
	 , (850013, 371,         135) /* Damage Resist */
	 , (850013, 374,         135) /* Critical Damage */
	 , (850013, 375,         135) /* Critical Damage Resist */
	 , (850013, 376,         135) /* Heal Boost */
	 , (850013, 379,         135) /* Vitality */
	 , (850013, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850013,  22, True ) /* Inscribable */
     , (850013, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850013,  12, 0.6600000262260437) /* Shade */
     , (850013,  13,     2.5) /* ArmorModVsSlash */
     , (850013,  14,     2.5) /* ArmorModVsPierce */
     , (850013,  15,     2.5) /* ArmorModVsBludgeon */
     , (850013,  16,     2.5) /* ArmorModVsCold */
     , (850013,  17,     2.5) /* ArmorModVsFire */
     , (850013,  18,     2.5) /* ArmorModVsAcid */
     , (850013,  19,     2.5) /* ArmorModVsElectric */
     , (850013,  29,     1.2) /* WeaponDefense */
     , (850013, 110,       1) /* BulkMod */
     , (850013, 111,       1) /* SizeMod */
     , (850013, 149,     1.2) /* WeaponMissileDefense */
     , (850013, 150,     1.2) /* WeaponMagicDefense */
	 , (850013, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850013,   1, 'Ascended Covenant Cuirass') /* Name */
     , (850013,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850013,   1,   33554642) /* Setup */
     , (850013,   3,  536870932) /* SoundTable */
     , (850013,   6,   67108990) /* PaletteBase */
     , (850013,   7,  268436452) /* ClothingBase */
     , (850013,   8,  100667354) /* Icon */
     , (850013,  22,  872415275) /* PhysicsEffectTable */
     , (850013,  36,  234881046) /* MutateFilter */
     , (850013,  46,  939524130) /* TsysMutationFilter */
	 , (850013,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850013,  3712,      2) /* Legendary Invulnerability */
     , (850013,  3731,      2) /* Legendary Health Gain */
	 , (850013,  3729,      2) /* Legendary Piercing Ward */
     , (850013,  3679,      2) /* Legendary Acid Bane */
	 , (850013,  3689,      2) /* Legendary Bludgeoning Bane */
     , (850013,  3703,      2) /* Legendary Flame Bane */
     , (850013,  3706,      2) /* Legendary Frost Bane */
     , (850013,  3710,      2) /* Legendary Impenetrability */
     , (850013,  3728,      2) /* Legendary Piercing Bane */
     , (850013,  3686,      2) /* Legendary Slashing Bane */
     , (850013,  3718,      2) /* Legendary Storm Bane */
     , (850013,  6055,      2) /* Legendary Storm Bane */
     , (850013,  6054,      2) /* Legendary Storm Bane */
     , (850013,  6095,      2) /* Legendary Storm Bane */
     , (850013,  6063,      2) /* Legendary Storm Bane */;