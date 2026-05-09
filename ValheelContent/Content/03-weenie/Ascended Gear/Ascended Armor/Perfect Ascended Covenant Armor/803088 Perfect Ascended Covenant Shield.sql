DELETE FROM `weenie` WHERE `class_Id` = 803088;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803088, 'Perfect Ascended Covenant Shield', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803088,   1,          2) /* ItemType - Armor */
     , (803088,   3,          9) /* PaletteTemplate - Brown */
     , (803088,   5,       2040) /* EncumbranceVal */
     , (803088,   8,        680) /* Mass */
     , (803088,   9,    2097152) /* ValidLocations - Shield */
     , (803088,  16,          1) /* ItemUseable - No */
	 , (803088,  18,          4) /* UiEffects - Magical */
     , (803088,  19,       2500) /* Value */
     , (803088,  27,          1) /* ArmorType - Leather */
     , (803088,  28,       1500) /* ArmorLevel */
     , (803088,  33,          1) /* Bonded - Bonded */
     , (803088,  51,          4) /* CombatUse - Shield */
     , (803088,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803088, 106,        999) /* ItemSpellcraft */
     , (803088, 107,       1200) /* ItemCurMana */
     , (803088, 108,       1200) /* ItemMaxMana */
     , (803088, 114,          1) /* Attuned - Attuned */
     , (803088, 124,          3) /* Version */
	 , (803088, 158,          7) /* WieldRequirements - Level */
     , (803088, 160,       8000) /* WieldDifficulty */
     , (803088, 169,  134285060) /* TsysMutationData */
     , (803088, 179,  536870912) /* ImbuedEffect - IgnoreSomeMagicProjectileDamage */
	 , (803088, 370,        185) /* Damage */
	 , (803088, 371,        185) /* Damage Resist */
	 , (803088, 374,        185) /* Critical Damage */
	 , (803088, 375,        185) /* Critical Damage Resist */
	 , (803088, 376,        185) /* Heal Boost */
	 , (803088, 379,        185) /* Vitality */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803088,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803088,  13,     1.7) /* ArmorModVsSlash */
     , (803088,  14,     1.7) /* ArmorModVsPierce */
     , (803088,  15,     1.7) /* ArmorModVsBludgeon */
     , (803088,  16,     1.7) /* ArmorModVsCold */
     , (803088,  17,     1.7) /* ArmorModVsFire */
     , (803088,  18,     1.7) /* ArmorModVsAcid */
     , (803088,  19,     1.7) /* ArmorModVsElectric */
     , (803088,  39,    0.75) /* DefaultScale */
     , (803088, 110,       1) /* BulkMod */
     , (803088, 111,    1.05) /* SizeMod */
     , (803088, 159,    0.45) /* AbsorbMagicDamage */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803088,   1, 'Perfect Ascended Covenant Shield') /* Name */
     , (803088,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803088,   1,   33557878) /* Setup */
     , (803088,   3,  536870932) /* SoundTable */
     , (803088,   6,   67111919) /* PaletteBase */
     , (803088,   7,  268436441) /* ClothingBase */
     , (803088,   8,  100667362) /* Icon */
     , (803088,  22,  872415275) /* PhysicsEffectTable */
     , (803088,  36,  234881046) /* MutateFilter */
     , (803088,  46,  939524164) /* TsysMutationFilter */
	 , (803088,  52,  100676442) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803088,  3710,      2) /* Legendary Impenetrability */
     , (803088,  3699,      2) /* Legendary Impenetrability */
     , (803088,  5907,      2) /* Legendary Impenetrability */
     , (803088,  5932,      2) /* Legendary Impenetrability */;
