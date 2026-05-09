DELETE FROM `weenie` WHERE `class_Id` = 803089;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803089, 'Black Ore Ascended Covenant Shield', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803089,   1,          2) /* ItemType - Armor */
     , (803089,   3,          9) /* PaletteTemplate - Brown */
     , (803089,   5,       2040) /* EncumbranceVal */
     , (803089,   8,        680) /* Mass */
     , (803089,   9,    2097152) /* ValidLocations - Shield */
     , (803089,  16,          1) /* ItemUseable - No */
	 , (803089,  18,        128) /* UiEffects - Magical */
     , (803089,  19,       2500) /* Value */
     , (803089,  27,          1) /* ArmorType - Leather */
     , (803089,  28,       2000) /* ArmorLevel */
     , (803089,  33,          1) /* Bonded - Bonded */
     , (803089,  51,          4) /* CombatUse - Shield */
     , (803089,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803089, 106,        999) /* ItemSpellcraft */
     , (803089, 107,       1200) /* ItemCurMana */
     , (803089, 108,       1200) /* ItemMaxMana */
     , (803089, 114,          1) /* Attuned - Attuned */
     , (803089, 124,          3) /* Version */
	 , (803089, 158,          7) /* WieldRequirements - Level */
     , (803089, 160,       8000) /* WieldDifficulty */
     , (803089, 169,  134285060) /* TsysMutationData */
     , (803089, 179,  536870912) /* ImbuedEffect - IgnoreSomeMagicProjectileDamage */
	 , (803089, 370,        210) /* Damage */
	 , (803089, 371,        210) /* Damage Resist */
	 , (803089, 374,        210) /* Critical Damage */
	 , (803089, 375,        210) /* Critical Damage Resist */
	 , (803089, 376,        210) /* Heal Boost */
	 , (803089, 379,        210) /* Vitality */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803089,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803089,  13,       2) /* ArmorModVsSlash */
     , (803089,  14,       2) /* ArmorModVsPierce */
     , (803089,  15,       2) /* ArmorModVsBludgeon */
     , (803089,  16,       2) /* ArmorModVsCold */
     , (803089,  17,       2) /* ArmorModVsFire */
     , (803089,  18,       2) /* ArmorModVsAcid */
     , (803089,  19,       2) /* ArmorModVsElectric */
     , (803089,  39,    0.75) /* DefaultScale */
     , (803089, 110,       1) /* BulkMod */
     , (803089, 111,    1.05) /* SizeMod */
     , (803089, 159,    0.50) /* AbsorbMagicDamage */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803089,   1, 'Black Ore Ascended Covenant Shield') /* Name */
     , (803089,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803089,   1,   33557878) /* Setup */
     , (803089,   3,  536870932) /* SoundTable */
     , (803089,   6,   67111919) /* PaletteBase */
     , (803089,   7,  268436441) /* ClothingBase */
     , (803089,   8,  100667362) /* Icon */
     , (803089,  22,  872415275) /* PhysicsEffectTable */
     , (803089,  36,  234881046) /* MutateFilter */
     , (803089,  46,  939524164) /* TsysMutationFilter */
	 , (803089,  52,  100676441) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803089,  3710,      2) /* Legendary Impenetrability */
     , (803089,  3699,      2) /* Legendary Impenetrability */
     , (803089,  5907,      2) /* Legendary Impenetrability */
     , (803089,  5932,      2) /* Legendary Impenetrability */;
