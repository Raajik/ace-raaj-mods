DELETE FROM `weenie` WHERE `class_Id` = 803122;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803122, 'TestShield', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803122,   1,          2) /* ItemType - Armor */
     , (803122,   3,          9) /* PaletteTemplate - Brown */
     , (803122,   5,       2040) /* EncumbranceVal */
     , (803122,   8,        680) /* Mass */
     , (803122,   9,    67108864) /* ValidLocations - Shield */
     , (803122,  16,          1) /* ItemUseable - No */
	 , (803122,  18,          4) /* UiEffects - Magical */
     , (803122,  19,       2500) /* Value */
     , (803122,  27,          1) /* ArmorType - Leather */
     , (803122,  28,       1500) /* ArmorLevel */
     , (803122,  33,          1) /* Bonded - Bonded */
     , (803122,  51,          4) /* CombatUse - Shield */
     , (803122,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803122, 106,        999) /* ItemSpellcraft */
     , (803122, 107,       1200) /* ItemCurMana */
     , (803122, 108,       1200) /* ItemMaxMana */
     , (803122, 114,          0) /* Attuned - Attuned */
     , (803122, 124,          3) /* Version */
	 , (803122, 158,          7) /* WieldRequirements - Level */
     , (803122, 160,       8000) /* WieldDifficulty */
     , (803122, 169,  134285060) /* TsysMutationData */
     , (803122, 179,  536870912) /* ImbuedEffect - IgnoreSomeMagicProjectileDamage */
	 , (803122, 370,        155) /* Damage */
	 , (803122, 371,        155) /* Damage Resist */
	 , (803122, 374,        155) /* Critical Damage */
	 , (803122, 375,        155) /* Critical Damage Resist */
	 , (803122, 376,        155) /* Heal Boost */
	 , (803122, 379,        155) /* Vitality */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803122,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803122,  13,     1.7) /* ArmorModVsSlash */
     , (803122,  14,     1.7) /* ArmorModVsPierce */
     , (803122,  15,     1.7) /* ArmorModVsBludgeon */
     , (803122,  16,     1.7) /* ArmorModVsCold */
     , (803122,  17,     1.7) /* ArmorModVsFire */
     , (803122,  18,     1.7) /* ArmorModVsAcid */
     , (803122,  19,     1.7) /* ArmorModVsElectric */
     , (803122,  39,    0.75) /* DefaultScale */
     , (803122, 110,       1) /* BulkMod */
     , (803122, 111,    1.05) /* SizeMod */
     , (803122, 159,    0.45) /* AbsorbMagicDamage */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803122,   1, 'Perfect Ascended Covenant Shield') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803122,   1,   33557878) /* Setup */
     , (803122,   3,  536870932) /* SoundTable */
     , (803122,   6,   67111919) /* PaletteBase */
     , (803122,   7,  268436441) /* ClothingBase */
     , (803122,   8,  100667362) /* Icon */
     , (803122,  22,  872415275) /* PhysicsEffectTable */
     , (803122,  36,  234881046) /* MutateFilter */
     , (803122,  46,  939524164) /* TsysMutationFilter */
	 , (803122,  52,  100676442) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803122,  3710,      2) /* Legendary Impenetrability */
     , (803122,  3699,      2) /* Legendary Impenetrability */
     , (803122,  5907,      2) /* Legendary Impenetrability */
     , (803122,  5932,      2) /* Legendary Impenetrability */;
