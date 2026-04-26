DELETE FROM `weenie` WHERE `class_Id` = 800991;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800991, 'Ethereal Vhorma Heaume Soldiers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800991,   1,          2) /* ItemType - Armor */
     , (800991,   3,         92) /* PaletteTemplate - Gold */
     , (800991,   4,      16384) /* ClothingPriority - Head */
     , (800991,   5,        426) /* EncumbranceVal */
     , (800991,   9,          1) /* ValidLocations - HeadWear */
     , (800991,  16,          1) /* ItemUseable - No */
     , (800991,  18,          1) /* UiEffects - Magical */
     , (800991,  19,         30) /* Value */
     , (800991,  27,         32) /* ArmorType - Metal */
     , (800991,  28,       2000) /* ArmorLevel */
     , (800991,  33,          1) /* Bonded - Bonded */
     , (800991,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800991, 106,        200) /* ItemSpellcraft */
     , (800991, 107,       1000) /* ItemCurMana */
     , (800991, 108,       1000) /* ItemMaxMana */
     , (800991, 109,        425) /* ItemDifficulty */
     , (800991, 114,          1) /* Attuned - Attuned */
     , (800991, 151,          2) /* HookType - Wall */
     , (800991, 158,          7) /* WieldRequirements - Level */
     , (800991, 159,          1) /* WieldSkillType - Axe */
     , (800991, 160,        325) /* WieldDifficulty */
     , (800991, 265,         13) /* Defenders */
     , (800991, 370,         10) /* Damage */
     , (800991, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800991,  22, True ) /* Inscribable */
     , (800991, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800991,   5,  -0.033) /* ManaRate */
     , (800991,  12,     0.5) /* Shade */
     , (800991,  13,       2) /* ArmorModVsSlash */
     , (800991,  14,       2) /* ArmorModVsPierce */
     , (800991,  15,       2) /* ArmorModVsBludgeon */
     , (800991,  16,       2) /* ArmorModVsCold */
     , (800991,  17,       2) /* ArmorModVsFire */
     , (800991,  18,       2) /* ArmorModVsAcid */
     , (800991,  19,       2) /* ArmorModVsElectric */
     , (800991, 110,     1.1) /* BulkMod */
     , (800991, 111,     1.5) /* SizeMod */
     , (800991, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800991,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800991,   1,   33556883) /* Setup */
     , (800991,   3,  536870932) /* SoundTable */
     , (800991,   6,   67108990) /* PaletteBase */
     , (800991,   7,  268436088) /* ClothingBase */
     , (800991,   8,  100667349) /* Icon */
     , (800991,  22,  872415275) /* PhysicsEffectTable */
     , (800991,  36,  234881042) /* MutateFilter */
     , (800991,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800991,  6125,      2)  /* Legendary Summoning */
     , (800991,  6055,      2)  /* Legendary Invulnerability */
     , (800991,  6063,      2)  /* Legendary Magic Resistence */
     , (800991,  6054,      2)  /* Legendary Impregnability */
     , (800991,  6102,      2)  /* Legendary Armor */
     , (800991,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
