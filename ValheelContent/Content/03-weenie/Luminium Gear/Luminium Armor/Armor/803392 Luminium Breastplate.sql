DELETE FROM `weenie` WHERE `class_Id` = 803392;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803392, 'Luminium Breastplate', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803392,   1,          2) /* ItemType - Armor */
     , (803392,   3,         93) /* PaletteTemplate - Silver */
     , (803392,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (803392,   5,        932) /* EncumbranceVal */
     , (803392,   8,        560) /* Mass */
     , (803392,   9,        512) /* ValidLocations - ChestArmor */
     , (803392,  16,          1) /* ItemUseable - No */
	 , (803392,  18,          1) /* UiEffects - Magical */
     , (803392,  19,     400000) /* Value */
     , (803392,  27,         32) /* ArmorType - Chainmail */
     , (803392,  28,       2500) /* ArmorLevel */
     , (803392,  33,          1) /* Bonded - Bonded */
     , (803392,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803392, 106,        999) /* ItemSpellcraft */
     , (803392, 107,       1200) /* ItemCurMana */
     , (803392, 108,       1200) /* ItemMaxMana */
     , (803392, 114,          1) /* Attuned - Attuned */
	 , (803392, 158,          7) /* WieldRequirements - Level */
     , (803392, 160,        5000) /* WieldDifficulty */
     , (803392, 169,  118097668) /* TsysMutationData */
     , (803392, 265,         28) /* Defenders */
	 , (803392, 370,         160) /* Damage */
	 , (803392, 371,         160) /* Damage Resist */
	 , (803392, 374,         160) /* Critical Damage */
	 , (803392, 375,         160) /* Critical Damage Resist */
	 , (803392, 376,         160) /* Heal Boost */
	 , (803392, 379,         160) /* Vitality */
	 , (803392, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803392,  22, True ) /* Inscribable */
     , (803392, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803392,  12, 0.6600000262260437) /* Shade */
     , (803392,  13,     2.5) /* ArmorModVsSlash */
     , (803392,  14,     2.5) /* ArmorModVsPierce */
     , (803392,  15,     2.5) /* ArmorModVsBludgeon */
     , (803392,  16,     2.5) /* ArmorModVsCold */
     , (803392,  17,     2.5) /* ArmorModVsFire */
     , (803392,  18,     2.5) /* ArmorModVsAcid */
     , (803392,  19,     2.5) /* ArmorModVsElectric */
     , (803392,  29,     1.2) /* WeaponDefense */
     , (803392, 110,       1) /* BulkMod */
     , (803392, 111,       1) /* SizeMod */
     , (803392, 149,     1.2) /* WeaponMissileDefense */
     , (803392, 150,     1.2) /* WeaponMagicDefense */
	 , (803392, 165,     2.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803392,   1, 'Luminium Breastplate') /* Name */
     , (803392,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803392,   1,   33554642) /* Setup */
     , (803392,   3,  536870932) /* SoundTable */
     , (803392,   7,  268437581) /* ClothingBase */
     , (803392,   8,  100693095) /* Icon */
     , (803392,  22,  872415275) /* PhysicsEffectTable */
     , (803392,  36,  234881046) /* MutateFilter */
     , (803392,  46,  939524130) /* TsysMutationFilter */
	 , (803392,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803392,  3712,      2) /* Legendary Invulnerability */
     , (803392,  3731,      2) /* Legendary Health Gain */
	 , (803392,  3729,      2) /* Legendary Piercing Ward */
     , (803392,  3679,      2) /* Legendary Acid Bane */
	 , (803392,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803392,  3703,      2) /* Legendary Flame Bane */
     , (803392,  3706,      2) /* Legendary Frost Bane */
     , (803392,  3710,      2) /* Legendary Impenetrability */
     , (803392,  3728,      2) /* Legendary Piercing Bane */
     , (803392,  3686,      2) /* Legendary Slashing Bane */
     , (803392,  3718,      2) /* Legendary Storm Bane */
     , (803392,  6055,      2) /* Legendary Storm Bane */
     , (803392,  6054,      2) /* Legendary Storm Bane */
     , (803392,  6095,      2) /* Legendary Storm Bane */
     , (803392,  6063,      2) /* Legendary Storm Bane */;