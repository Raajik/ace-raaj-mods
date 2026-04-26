DELETE FROM `weenie` WHERE `class_Id` = 803451;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803451, 'Luminium Shield', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803451,   1,          2) /* ItemType - Armor */
     , (803451,   3,          9) /* PaletteTemplate - Brown */
     , (803451,   5,       2040) /* EncumbranceVal */
     , (803451,   8,        680) /* Mass */
     , (803451,   9,    2097152) /* ValidLocations - Shield */
     , (803451,  16,          1) /* ItemUseable - No */
	 , (803451,  18,          1) /* UiEffects - Magical */
     , (803451,  19,     200000) /* Value */
     , (803451,  27,          1) /* ArmorType - Leather */
     , (803451,  28,       1250) /* ArmorLevel */
     , (803451,  33,          1) /* Bonded - Bonded */
     , (803451,  51,          4) /* CombatUse - Shield */
     , (803451,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803451, 106,        999) /* ItemSpellcraft */
     , (803451, 107,       1200) /* ItemCurMana */
     , (803451, 108,       1200) /* ItemMaxMana */
     , (803451, 114,          1) /* Attuned - Attuned */
     , (803451, 124,          3) /* Version */
	 , (803451, 158,          7) /* WieldRequirements - Level */
     , (803451, 160,       3000) /* WieldDifficulty */
     , (803451, 169,  134285060) /* TsysMutationData */
     , (803451, 179,  536870912) /* ImbuedEffect - IgnoreSomeMagicProjectileDamage */
	 , (803451, 370,        155) /* Damage */
	 , (803451, 371,        155) /* Damage Resist */
	 , (803451, 374,        155) /* Critical Damage */
	 , (803451, 375,        155) /* Critical Damage Resist */
	 , (803451, 376,        155) /* Heal Boost */
	 , (803451, 379,        155) /* Vitality */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803451,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803451,  13,     1.5) /* ArmorModVsSlash */
     , (803451,  14,     1.5) /* ArmorModVsPierce */
     , (803451,  15,     1.5) /* ArmorModVsBludgeon */
     , (803451,  16,     1.5) /* ArmorModVsCold */
     , (803451,  17,     1.5) /* ArmorModVsFire */
     , (803451,  18,     1.5) /* ArmorModVsAcid */
     , (803451,  19,     1.5) /* ArmorModVsElectric */
     , (803451,  39,       1) /* DefaultScale */
     , (803451, 110,       1) /* BulkMod */
     , (803451, 111,    1.05) /* SizeMod */
     , (803451, 159,    0.40) /* AbsorbMagicDamage */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803451,   1, 'Luminium Shield') /* Name */
     , (803451,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803451,   1,   33560269) /* Setup */
     , (803451,   3,  536870932) /* SoundTable */
     , (803451,   7,  268437514) /* ClothingBase */
     , (803451,   8,  100689429) /* Icon */
     , (803451,  22,  872415275) /* PhysicsEffectTable */
     , (803451,  36,  234881046) /* MutateFilter */
     , (803451,  46,  939524164) /* TsysMutationFilter */
	 , (803451,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803451,  3710,      2) /* Legendary Impenetrability */
     , (803451,  3699,      2) /* Legendary Impenetrability */
     , (803451,  5907,      2) /* Legendary Impenetrability */
     , (803451,  5932,      2) /* Legendary Impenetrability */;
