DELETE FROM `weenie` WHERE `class_Id` = 803087;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803087, 'Ascended Covenant Shield', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803087,   1,          2) /* ItemType - Armor */
     , (803087,   3,          9) /* PaletteTemplate - Brown */
     , (803087,   5,       2040) /* EncumbranceVal */
     , (803087,   8,        680) /* Mass */
     , (803087,   9,    2097152) /* ValidLocations - Shield */
     , (803087,  16,          1) /* ItemUseable - No */
	 , (803087,  18,          1) /* UiEffects - Magical */
     , (803087,  19,     200000) /* Value */
     , (803087,  27,          1) /* ArmorType - Leather */
     , (803087,  28,       1000) /* ArmorLevel */
     , (803087,  33,          1) /* Bonded - Bonded */
     , (803087,  51,          4) /* CombatUse - Shield */
     , (803087,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803087, 106,        999) /* ItemSpellcraft */
     , (803087, 107,       1200) /* ItemCurMana */
     , (803087, 108,       1200) /* ItemMaxMana */
     , (803087, 114,          1) /* Attuned - Attuned */
     , (803087, 124,          3) /* Version */
	 , (803087, 158,          7) /* WieldRequirements - Level */
     , (803087, 160,       3000) /* WieldDifficulty */
     , (803087, 169,  134285060) /* TsysMutationData */
     , (803087, 179,  536870912) /* ImbuedEffect - IgnoreSomeMagicProjectileDamage */
	 , (803087, 370,        135) /* Damage */
	 , (803087, 371,        135) /* Damage Resist */
	 , (803087, 374,        135) /* Critical Damage */
	 , (803087, 375,        135) /* Critical Damage Resist */
	 , (803087, 376,        135) /* Heal Boost */
	 , (803087, 379,        135) /* Vitality */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803087,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803087,  13,     1.5) /* ArmorModVsSlash */
     , (803087,  14,     1.5) /* ArmorModVsPierce */
     , (803087,  15,     1.5) /* ArmorModVsBludgeon */
     , (803087,  16,     1.5) /* ArmorModVsCold */
     , (803087,  17,     1.5) /* ArmorModVsFire */
     , (803087,  18,     1.5) /* ArmorModVsAcid */
     , (803087,  19,     1.5) /* ArmorModVsElectric */
     , (803087,  39,    0.75) /* DefaultScale */
     , (803087, 110,       1) /* BulkMod */
     , (803087, 111,    1.05) /* SizeMod */
     , (803087, 159,    0.40) /* AbsorbMagicDamage */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803087,   1, 'Ascended Covenant Shield') /* Name */
     , (803087,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803087,   1,   33557878) /* Setup */
     , (803087,   3,  536870932) /* SoundTable */
     , (803087,   6,   67111919) /* PaletteBase */
     , (803087,   7,  268436441) /* ClothingBase */
     , (803087,   8,  100667362) /* Icon */
     , (803087,  22,  872415275) /* PhysicsEffectTable */
     , (803087,  36,  234881046) /* MutateFilter */
     , (803087,  46,  939524164) /* TsysMutationFilter */
	 , (803087,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803087,  3710,      2) /* Legendary Impenetrability */
     , (803087,  3699,      2) /* Legendary Impenetrability */
     , (803087,  5907,      2) /* Legendary Impenetrability */
     , (803087,  5932,      2) /* Legendary Impenetrability */;
