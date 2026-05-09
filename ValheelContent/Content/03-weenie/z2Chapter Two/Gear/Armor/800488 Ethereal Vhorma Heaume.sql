DELETE FROM `weenie` WHERE `class_Id` = 800488;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800488, 'Ethereal Vhorma Heaume', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800488,   1,          2) /* ItemType - Armor */
     , (800488,   3,         92) /* PaletteTemplate - Gold */
     , (800488,   4,      16384) /* ClothingPriority - Head */
     , (800488,   5,        426) /* EncumbranceVal */
     , (800488,   9,          1) /* ValidLocations - HeadWear */
     , (800488,  16,          1) /* ItemUseable - No */
     , (800488,  18,          1) /* UiEffects - Magical */
     , (800488,  19,         30) /* Value */
     , (800488,  27,         32) /* ArmorType - Metal */
     , (800488,  28,       2000) /* ArmorLevel */
     , (800488,  33,          1) /* Bonded - Bonded */
     , (800488,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800488, 106,        200) /* ItemSpellcraft */
     , (800488, 107,       1000) /* ItemCurMana */
     , (800488, 108,       1000) /* ItemMaxMana */
     , (800488, 109,        425) /* ItemDifficulty */
     , (800488, 114,          1) /* Attuned - Attuned */
     , (800488, 151,          2) /* HookType - Wall */
     , (800488, 158,          7) /* WieldRequirements - Level */
     , (800488, 159,          1) /* WieldSkillType - Axe */
     , (800488, 160,        325) /* WieldDifficulty */
     , (800488, 265,         16) /* Defenders */
     , (800488, 370,         10) /* Damage */
     , (800488, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800488,  22, True ) /* Inscribable */
     , (800488, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800488,   5,  -0.033) /* ManaRate */
     , (800488,  12,     0.5) /* Shade */
     , (800488,  13,       2) /* ArmorModVsSlash */
     , (800488,  14,       2) /* ArmorModVsPierce */
     , (800488,  15,       2) /* ArmorModVsBludgeon */
     , (800488,  16,       2) /* ArmorModVsCold */
     , (800488,  17,       2) /* ArmorModVsFire */
     , (800488,  18,       2) /* ArmorModVsAcid */
     , (800488,  19,       2) /* ArmorModVsElectric */
     , (800488, 110,     1.1) /* BulkMod */
     , (800488, 111,     1.5) /* SizeMod */
     , (800488, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800488,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800488,   1,   33556883) /* Setup */
     , (800488,   3,  536870932) /* SoundTable */
     , (800488,   6,   67108990) /* PaletteBase */
     , (800488,   7,  268436088) /* ClothingBase */
     , (800488,   8,  100667349) /* Icon */
     , (800488,  22,  872415275) /* PhysicsEffectTable */
     , (800488,  36,  234881042) /* MutateFilter */
     , (800488,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800488,  6125,      2)  /* Legendary Summoning */
     , (800488,  6055,      2)  /* Legendary Invulnerability */
     , (800488,  6063,      2)  /* Legendary Magic Resistence */
     , (800488,  6054,      2)  /* Legendary Impregnability */
     , (800488,  6102,      2)  /* Legendary Armor */
     , (800488,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
