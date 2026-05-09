DELETE FROM `weenie` WHERE `class_Id` = 800992;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800992, 'Ethereal Vhorma Heaume Adepts', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800992,   1,          2) /* ItemType - Armor */
     , (800992,   3,         92) /* PaletteTemplate - Gold */
     , (800992,   4,      16384) /* ClothingPriority - Head */
     , (800992,   5,        426) /* EncumbranceVal */
     , (800992,   9,          1) /* ValidLocations - HeadWear */
     , (800992,  16,          1) /* ItemUseable - No */
     , (800992,  18,          1) /* UiEffects - Magical */
     , (800992,  19,         30) /* Value */
     , (800992,  27,         32) /* ArmorType - Metal */
     , (800992,  28,       2000) /* ArmorLevel */
     , (800992,  33,          1) /* Bonded - Bonded */
     , (800992,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800992, 106,        200) /* ItemSpellcraft */
     , (800992, 107,       1000) /* ItemCurMana */
     , (800992, 108,       1000) /* ItemMaxMana */
     , (800992, 109,        425) /* ItemDifficulty */
     , (800992, 114,          1) /* Attuned - Attuned */
     , (800992, 151,          2) /* HookType - Wall */
     , (800992, 158,          7) /* WieldRequirements - Level */
     , (800992, 159,          1) /* WieldSkillType - Axe */
     , (800992, 160,        325) /* WieldDifficulty */
     , (800992, 265,         14) /* Defenders */
     , (800992, 370,         10) /* Damage */
     , (800992, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800992,  22, True ) /* Inscribable */
     , (800992, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800992,   5,  -0.033) /* ManaRate */
     , (800992,  12,     0.5) /* Shade */
     , (800992,  13,       2) /* ArmorModVsSlash */
     , (800992,  14,       2) /* ArmorModVsPierce */
     , (800992,  15,       2) /* ArmorModVsBludgeon */
     , (800992,  16,       2) /* ArmorModVsCold */
     , (800992,  17,       2) /* ArmorModVsFire */
     , (800992,  18,       2) /* ArmorModVsAcid */
     , (800992,  19,       2) /* ArmorModVsElectric */
     , (800992, 110,     1.1) /* BulkMod */
     , (800992, 111,     1.5) /* SizeMod */
     , (800992, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800992,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800992,   1,   33556883) /* Setup */
     , (800992,   3,  536870932) /* SoundTable */
     , (800992,   6,   67108990) /* PaletteBase */
     , (800992,   7,  268436088) /* ClothingBase */
     , (800992,   8,  100667349) /* Icon */
     , (800992,  22,  872415275) /* PhysicsEffectTable */
     , (800992,  36,  234881042) /* MutateFilter */
     , (800992,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800992,  6125,      2)  /* Legendary Summoning */
     , (800992,  6055,      2)  /* Legendary Invulnerability */
     , (800992,  6063,      2)  /* Legendary Magic Resistence */
     , (800992,  6054,      2)  /* Legendary Impregnability */
     , (800992,  6102,      2)  /* Legendary Armor */
     , (800992,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
