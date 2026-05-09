DELETE FROM `weenie` WHERE `class_Id` = 800996;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800996, 'Ethereal Vhorma Heaume Crafters', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800996,   1,          2) /* ItemType - Armor */
     , (800996,   3,         92) /* PaletteTemplate - Gold */
     , (800996,   4,      16384) /* ClothingPriority - Head */
     , (800996,   5,        426) /* EncumbranceVal */
     , (800996,   9,          1) /* ValidLocations - HeadWear */
     , (800996,  16,          1) /* ItemUseable - No */
     , (800996,  18,          1) /* UiEffects - Magical */
     , (800996,  19,         30) /* Value */
     , (800996,  27,         32) /* ArmorType - Metal */
     , (800996,  28,       2000) /* ArmorLevel */
     , (800996,  33,          1) /* Bonded - Bonded */
     , (800996,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800996, 106,        200) /* ItemSpellcraft */
     , (800996, 107,       1000) /* ItemCurMana */
     , (800996, 108,       1000) /* ItemMaxMana */
     , (800996, 109,        425) /* ItemDifficulty */
     , (800996, 114,          1) /* Attuned - Attuned */
     , (800996, 151,          2) /* HookType - Wall */
     , (800996, 158,          7) /* WieldRequirements - Level */
     , (800996, 159,          1) /* WieldSkillType - Axe */
     , (800996, 160,        325) /* WieldDifficulty */
     , (800996, 265,         18) /* Defenders */
     , (800996, 370,         10) /* Damage */
     , (800996, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800996,  22, True ) /* Inscribable */
     , (800996, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800996,   5,  -0.033) /* ManaRate */
     , (800996,  12,     0.5) /* Shade */
     , (800996,  13,       2) /* ArmorModVsSlash */
     , (800996,  14,       2) /* ArmorModVsPierce */
     , (800996,  15,       2) /* ArmorModVsBludgeon */
     , (800996,  16,       2) /* ArmorModVsCold */
     , (800996,  17,       2) /* ArmorModVsFire */
     , (800996,  18,       2) /* ArmorModVsAcid */
     , (800996,  19,       2) /* ArmorModVsElectric */
     , (800996, 110,     1.1) /* BulkMod */
     , (800996, 111,     1.5) /* SizeMod */
     , (800996, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800996,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800996,   1,   33556883) /* Setup */
     , (800996,   3,  536870932) /* SoundTable */
     , (800996,   6,   67108990) /* PaletteBase */
     , (800996,   7,  268436088) /* ClothingBase */
     , (800996,   8,  100667349) /* Icon */
     , (800996,  22,  872415275) /* PhysicsEffectTable */
     , (800996,  36,  234881042) /* MutateFilter */
     , (800996,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800996,  6125,      2)  /* Legendary Summoning */
     , (800996,  6055,      2)  /* Legendary Invulnerability */
     , (800996,  6063,      2)  /* Legendary Magic Resistence */
     , (800996,  6054,      2)  /* Legendary Impregnability */
     , (800996,  6102,      2)  /* Legendary Armor */
     , (800996,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
