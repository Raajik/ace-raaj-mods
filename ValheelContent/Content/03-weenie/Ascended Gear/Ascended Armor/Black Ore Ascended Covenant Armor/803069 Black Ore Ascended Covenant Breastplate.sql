DELETE FROM `weenie` WHERE `class_Id` = 803069;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803069, 'BlackOreAscendedCovenantBreastplate', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803069,   1,          2) /* ItemType - Armor */
     , (803069,   3,         93) /* PaletteTemplate - Silver */
     , (803069,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (803069,   5,        932) /* EncumbranceVal */
     , (803069,   8,        560) /* Mass */
     , (803069,   9,        512) /* ValidLocations - ChestArmor */
     , (803069,  16,          1) /* ItemUseable - No */
	 , (803069,  18,          4) /* UiEffects - Magical */
     , (803069,  19,       7500) /* Value */
     , (803069,  27,         32) /* ArmorType - Chainmail */
     , (803069,  28,       3800) /* ArmorLevel */
     , (803069,  33,          1) /* Bonded - Bonded */
     , (803069,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803069, 106,        999) /* ItemSpellcraft */
     , (803069, 107,       1200) /* ItemCurMana */
     , (803069, 108,       1200) /* ItemMaxMana */
     , (803069, 114,          1) /* Attuned - Attuned */
	 , (803069, 158,          7) /* WieldRequirements - Level */
     , (803069, 160,        8000) /* WieldDifficulty */
     , (803069, 169,  118097668) /* TsysMutationData */
     , (803069, 265,         28) /* Defenders */
	 , (803069, 370,         210) /* Damage */
	 , (803069, 371,         210) /* Damage Resist */
	 , (803069, 374,         210) /* Critical Damage */
	 , (803069, 375,         210) /* Critical Damage Resist */
	 , (803069, 376,         210) /* Heal Boost */
	 , (803069, 379,         210) /* Vitality */
	 , (803069, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803069,  22, True ) /* Inscribable */
     , (803069, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803069,  12, 0.6600000262260437) /* Shade */
     , (803069,  13,     3) /* ArmorModVsSlash */
     , (803069,  14,     3) /* ArmorModVsPierce */
     , (803069,  15,     3) /* ArmorModVsBludgeon */
     , (803069,  16,     3) /* ArmorModVsCold */
     , (803069,  17,     3) /* ArmorModVsFire */
     , (803069,  18,     3) /* ArmorModVsAcid */
     , (803069,  19,     3) /* ArmorModVsElectric */
     , (803069,  29,     1.2) /* WeaponDefense */
     , (803069, 110,       1) /* BulkMod */
     , (803069, 111,       1) /* SizeMod */
     , (803069, 149,     1.4) /* WeaponMissileDefense */
     , (803069, 150,     1.4) /* WeaponMagicDefense */
	 , (803069, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803069,   1, 'Black Ore Ascended Covenant Cuirass') /* Name */
     , (803069,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803069,   1,   33554642) /* Setup */
     , (803069,   3,  536870932) /* SoundTable */
     , (803069,   6,   67108990) /* PaletteBase */
     , (803069,   7,  268436452) /* ClothingBase */
     , (803069,   8,  100667354) /* Icon */
     , (803069,  22,  872415275) /* PhysicsEffectTable */
     , (803069,  36,  234881046) /* MutateFilter */
     , (803069,  46,  939524130) /* TsysMutationFilter */
	 , (803069,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803069,  3712,      2) /* Legendary Invulnerability */
     , (803069,  3731,      2) /* Legendary Health Gain */
	 , (803069,  3729,      2) /* Legendary Piercing Ward */
     , (803069,  3679,      2) /* Legendary Acid Bane */
	 , (803069,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803069,  3703,      2) /* Legendary Flame Bane */
     , (803069,  3706,      2) /* Legendary Frost Bane */
     , (803069,  3710,      2) /* Legendary Impenetrability */
     , (803069,  3728,      2) /* Legendary Piercing Bane */
     , (803069,  3686,      2) /* Legendary Slashing Bane */
     , (803069,  3718,      2) /* Legendary Storm Bane */
     , (803069,  6055,      2) /* Legendary Storm Bane */
     , (803069,  6054,      2) /* Legendary Storm Bane */
     , (803069,  6095,      2) /* Legendary Storm Bane */
     , (803069,  6063,      2) /* Legendary Storm Bane */;