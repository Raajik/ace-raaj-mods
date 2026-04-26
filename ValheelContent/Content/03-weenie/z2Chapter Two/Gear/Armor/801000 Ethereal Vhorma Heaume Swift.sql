DELETE FROM `weenie` WHERE `class_Id` = 801000;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801000, 'Ethereal Vhorma Heaume Swift', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801000,   1,          2) /* ItemType - Armor */
     , (801000,   3,         92) /* PaletteTemplate - Gold */
     , (801000,   4,      16384) /* ClothingPriority - Head */
     , (801000,   5,        426) /* EncumbranceVal */
     , (801000,   9,          1) /* ValidLocations - HeadWear */
     , (801000,  16,          1) /* ItemUseable - No */
     , (801000,  18,          1) /* UiEffects - Magical */
     , (801000,  19,         30) /* Value */
     , (801000,  27,         32) /* ArmorType - Metal */
     , (801000,  28,       2000) /* ArmorLevel */
     , (801000,  33,          1) /* Bonded - Bonded */
     , (801000,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801000, 106,        200) /* ItemSpellcraft */
     , (801000, 107,       1000) /* ItemCurMana */
     , (801000, 108,       1000) /* ItemMaxMana */
     , (801000, 109,        425) /* ItemDifficulty */
     , (801000, 114,          1) /* Attuned - Attuned */
     , (801000, 151,          2) /* HookType - Wall */
     , (801000, 158,          7) /* WieldRequirements - Level */
     , (801000, 159,          1) /* WieldSkillType - Axe */
     , (801000, 160,        325) /* WieldDifficulty */
     , (801000, 265,         22) /* Defenders */
     , (801000, 370,         10) /* Damage */
     , (801000, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801000,  22, True ) /* Inscribable */
     , (801000, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801000,   5,  -0.033) /* ManaRate */
     , (801000,  12,     0.5) /* Shade */
     , (801000,  13,       2) /* ArmorModVsSlash */
     , (801000,  14,       2) /* ArmorModVsPierce */
     , (801000,  15,       2) /* ArmorModVsBludgeon */
     , (801000,  16,       2) /* ArmorModVsCold */
     , (801000,  17,       2) /* ArmorModVsFire */
     , (801000,  18,       2) /* ArmorModVsAcid */
     , (801000,  19,       2) /* ArmorModVsElectric */
     , (801000, 110,     1.1) /* BulkMod */
     , (801000, 111,     1.5) /* SizeMod */
     , (801000, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801000,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801000,   1,   33556883) /* Setup */
     , (801000,   3,  536870932) /* SoundTable */
     , (801000,   6,   67108990) /* PaletteBase */
     , (801000,   7,  268436088) /* ClothingBase */
     , (801000,   8,  100667349) /* Icon */
     , (801000,  22,  872415275) /* PhysicsEffectTable */
     , (801000,  36,  234881042) /* MutateFilter */
     , (801000,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801000,  6125,      2)  /* Legendary Summoning */
     , (801000,  6055,      2)  /* Legendary Invulnerability */
     , (801000,  6063,      2)  /* Legendary Magic Resistence */
     , (801000,  6054,      2)  /* Legendary Impregnability */
     , (801000,  6102,      2)  /* Legendary Armor */
     , (801000,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
