DELETE FROM `weenie` WHERE `class_Id` = 800998;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800998, 'Ethereal Vhorma Heaume Dextrous', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800998,   1,          2) /* ItemType - Armor */
     , (800998,   3,         92) /* PaletteTemplate - Gold */
     , (800998,   4,      16384) /* ClothingPriority - Head */
     , (800998,   5,        426) /* EncumbranceVal */
     , (800998,   9,          1) /* ValidLocations - HeadWear */
     , (800998,  16,          1) /* ItemUseable - No */
     , (800998,  18,          1) /* UiEffects - Magical */
     , (800998,  19,         30) /* Value */
     , (800998,  27,         32) /* ArmorType - Metal */
     , (800998,  28,       2000) /* ArmorLevel */
     , (800998,  33,          1) /* Bonded - Bonded */
     , (800998,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800998, 106,        200) /* ItemSpellcraft */
     , (800998, 107,       1000) /* ItemCurMana */
     , (800998, 108,       1000) /* ItemMaxMana */
     , (800998, 109,        425) /* ItemDifficulty */
     , (800998, 114,          1) /* Attuned - Attuned */
     , (800998, 151,          2) /* HookType - Wall */
     , (800998, 158,          7) /* WieldRequirements - Level */
     , (800998, 159,          1) /* WieldSkillType - Axe */
     , (800998, 160,        325) /* WieldDifficulty */
     , (800998, 265,         20) /* Defenders */
     , (800998, 370,         10) /* Damage */
     , (800998, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800998,  22, True ) /* Inscribable */
     , (800998, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800998,   5,  -0.033) /* ManaRate */
     , (800998,  12,     0.5) /* Shade */
     , (800998,  13,       2) /* ArmorModVsSlash */
     , (800998,  14,       2) /* ArmorModVsPierce */
     , (800998,  15,       2) /* ArmorModVsBludgeon */
     , (800998,  16,       2) /* ArmorModVsCold */
     , (800998,  17,       2) /* ArmorModVsFire */
     , (800998,  18,       2) /* ArmorModVsAcid */
     , (800998,  19,       2) /* ArmorModVsElectric */
     , (800998, 110,     1.1) /* BulkMod */
     , (800998, 111,     1.5) /* SizeMod */
     , (800998, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800998,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800998,   1,   33556883) /* Setup */
     , (800998,   3,  536870932) /* SoundTable */
     , (800998,   6,   67108990) /* PaletteBase */
     , (800998,   7,  268436088) /* ClothingBase */
     , (800998,   8,  100667349) /* Icon */
     , (800998,  22,  872415275) /* PhysicsEffectTable */
     , (800998,  36,  234881042) /* MutateFilter */
     , (800998,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800998,  6125,      2)  /* Legendary Summoning */
     , (800998,  6055,      2)  /* Legendary Invulnerability */
     , (800998,  6063,      2)  /* Legendary Magic Resistence */
     , (800998,  6054,      2)  /* Legendary Impregnability */
     , (800998,  6102,      2)  /* Legendary Armor */
     , (800998,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
