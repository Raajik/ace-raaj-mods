DELETE FROM `weenie` WHERE `class_Id` = 800994;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800994, 'Ethereal Vhorma Heaume Defenders', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800994,   1,          2) /* ItemType - Armor */
     , (800994,   3,         92) /* PaletteTemplate - Gold */
     , (800994,   4,      16384) /* ClothingPriority - Head */
     , (800994,   5,        426) /* EncumbranceVal */
     , (800994,   9,          1) /* ValidLocations - HeadWear */
     , (800994,  16,          1) /* ItemUseable - No */
     , (800994,  18,          1) /* UiEffects - Magical */
     , (800994,  19,         30) /* Value */
     , (800994,  27,         32) /* ArmorType - Metal */
     , (800994,  28,       2000) /* ArmorLevel */
     , (800994,  33,          1) /* Bonded - Bonded */
     , (800994,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800994, 106,        200) /* ItemSpellcraft */
     , (800994, 107,       1000) /* ItemCurMana */
     , (800994, 108,       1000) /* ItemMaxMana */
     , (800994, 109,        425) /* ItemDifficulty */
     , (800994, 114,          1) /* Attuned - Attuned */
     , (800994, 151,          2) /* HookType - Wall */
     , (800994, 158,          7) /* WieldRequirements - Level */
     , (800994, 159,          1) /* WieldSkillType - Axe */
     , (800994, 160,        325) /* WieldDifficulty */
     , (800994, 265,         16) /* Defenders */
     , (800994, 370,         10) /* Damage */
     , (800994, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800994,  22, True ) /* Inscribable */
     , (800994, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800994,   5,  -0.033) /* ManaRate */
     , (800994,  12,     0.5) /* Shade */
     , (800994,  13,       2) /* ArmorModVsSlash */
     , (800994,  14,       2) /* ArmorModVsPierce */
     , (800994,  15,       2) /* ArmorModVsBludgeon */
     , (800994,  16,       2) /* ArmorModVsCold */
     , (800994,  17,       2) /* ArmorModVsFire */
     , (800994,  18,       2) /* ArmorModVsAcid */
     , (800994,  19,       2) /* ArmorModVsElectric */
     , (800994, 110,     1.1) /* BulkMod */
     , (800994, 111,     1.5) /* SizeMod */
     , (800994, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800994,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800994,   1,   33556883) /* Setup */
     , (800994,   3,  536870932) /* SoundTable */
     , (800994,   6,   67108990) /* PaletteBase */
     , (800994,   7,  268436088) /* ClothingBase */
     , (800994,   8,  100667349) /* Icon */
     , (800994,  22,  872415275) /* PhysicsEffectTable */
     , (800994,  36,  234881042) /* MutateFilter */
     , (800994,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800994,  6125,      2)  /* Legendary Summoning */
     , (800994,  6055,      2)  /* Legendary Invulnerability */
     , (800994,  6063,      2)  /* Legendary Magic Resistence */
     , (800994,  6054,      2)  /* Legendary Impregnability */
     , (800994,  6102,      2)  /* Legendary Armor */
     , (800994,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
