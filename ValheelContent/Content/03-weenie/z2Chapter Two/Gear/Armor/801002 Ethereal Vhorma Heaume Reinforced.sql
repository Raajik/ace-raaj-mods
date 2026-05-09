DELETE FROM `weenie` WHERE `class_Id` = 801002;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801002, 'Ethereal Vhorma Heaume Reinforced', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801002,   1,          2) /* ItemType - Armor */
     , (801002,   3,         92) /* PaletteTemplate - Gold */
     , (801002,   4,      16384) /* ClothingPriority - Head */
     , (801002,   5,        426) /* EncumbranceVal */
     , (801002,   9,          1) /* ValidLocations - HeadWear */
     , (801002,  16,          1) /* ItemUseable - No */
     , (801002,  18,          1) /* UiEffects - Magical */
     , (801002,  19,         30) /* Value */
     , (801002,  27,         32) /* ArmorType - Metal */
     , (801002,  28,       2000) /* ArmorLevel */
     , (801002,  33,          1) /* Bonded - Bonded */
     , (801002,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801002, 106,        200) /* ItemSpellcraft */
     , (801002, 107,       1000) /* ItemCurMana */
     , (801002, 108,       1000) /* ItemMaxMana */
     , (801002, 109,        425) /* ItemDifficulty */
     , (801002, 114,          1) /* Attuned - Attuned */
     , (801002, 151,          2) /* HookType - Wall */
     , (801002, 158,          7) /* WieldRequirements - Level */
     , (801002, 159,          1) /* WieldSkillType - Axe */
     , (801002, 160,        325) /* WieldDifficulty */
     , (801002, 265,         24) /* Defenders */
     , (801002, 370,         10) /* Damage */
     , (801002, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801002,  22, True ) /* Inscribable */
     , (801002, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801002,   5,  -0.033) /* ManaRate */
     , (801002,  12,     0.5) /* Shade */
     , (801002,  13,       2) /* ArmorModVsSlash */
     , (801002,  14,       2) /* ArmorModVsPierce */
     , (801002,  15,       2) /* ArmorModVsBludgeon */
     , (801002,  16,       2) /* ArmorModVsCold */
     , (801002,  17,       2) /* ArmorModVsFire */
     , (801002,  18,       2) /* ArmorModVsAcid */
     , (801002,  19,       2) /* ArmorModVsElectric */
     , (801002, 110,     1.1) /* BulkMod */
     , (801002, 111,     1.5) /* SizeMod */
     , (801002, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801002,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801002,   1,   33556883) /* Setup */
     , (801002,   3,  536870932) /* SoundTable */
     , (801002,   6,   67108990) /* PaletteBase */
     , (801002,   7,  268436088) /* ClothingBase */
     , (801002,   8,  100667349) /* Icon */
     , (801002,  22,  872415275) /* PhysicsEffectTable */
     , (801002,  36,  234881042) /* MutateFilter */
     , (801002,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801002,  6125,      2)  /* Legendary Summoning */
     , (801002,  6055,      2)  /* Legendary Invulnerability */
     , (801002,  6063,      2)  /* Legendary Magic Resistence */
     , (801002,  6054,      2)  /* Legendary Impregnability */
     , (801002,  6102,      2)  /* Legendary Armor */
     , (801002,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
