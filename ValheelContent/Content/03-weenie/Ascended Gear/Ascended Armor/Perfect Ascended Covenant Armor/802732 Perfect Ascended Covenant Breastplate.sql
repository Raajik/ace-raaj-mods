DELETE FROM `weenie` WHERE `class_Id` = 802732;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802732, 'PerfectAscendedCovenantBreastplate', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802732,   1,          2) /* ItemType - Armor */
     , (802732,   3,         93) /* PaletteTemplate - Silver */
     , (802732,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (802732,   5,        932) /* EncumbranceVal */
     , (802732,   8,        560) /* Mass */
     , (802732,   9,        512) /* ValidLocations - ChestArmor */
     , (802732,  16,          1) /* ItemUseable - No */
	 , (802732,  18,          4) /* UiEffects - Magical */
     , (802732,  19,       7500) /* Value */
     , (802732,  27,         32) /* ArmorType - Chainmail */
     , (802732,  28,       3300) /* ArmorLevel */
     , (802732,  33,          1) /* Bonded - Bonded */
     , (802732,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (802732, 106,        999) /* ItemSpellcraft */
     , (802732, 107,       1200) /* ItemCurMana */
     , (802732, 108,       1200) /* ItemMaxMana */
     , (802732, 114,          1) /* Attuned - Attuned */
	 , (802732, 158,          7) /* WieldRequirements - Level */
     , (802732, 160,        8000) /* WieldDifficulty */
     , (802732, 169,  118097668) /* TsysMutationData */
     , (802732, 265,         27) /* Defenders */
	 , (802732, 370,         185) /* Damage */
	 , (802732, 371,         185) /* Damage Resist */
	 , (802732, 374,         185) /* Critical Damage */
	 , (802732, 375,         185) /* Critical Damage Resist */
	 , (802732, 376,         185) /* Heal Boost */
	 , (802732, 379,         185) /* Vitality */
	 , (802732, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802732,  22, True ) /* Inscribable */
     , (802732, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802732,  12, 0.6600000262260437) /* Shade */
     , (802732,  13,     2.5) /* ArmorModVsSlash */
     , (802732,  14,     2.5) /* ArmorModVsPierce */
     , (802732,  15,     2.5) /* ArmorModVsBludgeon */
     , (802732,  16,     2.5) /* ArmorModVsCold */
     , (802732,  17,     2.5) /* ArmorModVsFire */
     , (802732,  18,     2.5) /* ArmorModVsAcid */
     , (802732,  19,     2.5) /* ArmorModVsElectric */
     , (802732,  29,     1.2) /* WeaponDefense */
     , (802732, 110,       1) /* BulkMod */
     , (802732, 111,       1) /* SizeMod */
     , (802732, 149,     1.2) /* WeaponMissileDefense */
     , (802732, 150,     1.2) /* WeaponMagicDefense */
	 , (802732, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802732,   1, 'Perfect Ascended Covenant Cuirass') /* Name */
     , (802732,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802732,   1,   33554642) /* Setup */
     , (802732,   3,  536870932) /* SoundTable */
     , (802732,   6,   67108990) /* PaletteBase */
     , (802732,   7,  268436452) /* ClothingBase */
     , (802732,   8,  100667354) /* Icon */
     , (802732,  22,  872415275) /* PhysicsEffectTable */
     , (802732,  36,  234881046) /* MutateFilter */
     , (802732,  46,  939524130) /* TsysMutationFilter */
	 , (802732,  52,  100676442) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802732,  3712,      2) /* Legendary Invulnerability */
     , (802732,  3731,      2) /* Legendary Health Gain */
	 , (802732,  3729,      2) /* Legendary Piercing Ward */
     , (802732,  3679,      2) /* Legendary Acid Bane */
	 , (802732,  3689,      2) /* Legendary Bludgeoning Bane */
     , (802732,  3703,      2) /* Legendary Flame Bane */
     , (802732,  3706,      2) /* Legendary Frost Bane */
     , (802732,  3710,      2) /* Legendary Impenetrability */
     , (802732,  3728,      2) /* Legendary Piercing Bane */
     , (802732,  3686,      2) /* Legendary Slashing Bane */
     , (802732,  3718,      2) /* Legendary Storm Bane */
     , (802732,  6055,      2) /* Legendary Storm Bane */
     , (802732,  6054,      2) /* Legendary Storm Bane */
     , (802732,  6095,      2) /* Legendary Storm Bane */
     , (802732,  6063,      2) /* Legendary Storm Bane */;