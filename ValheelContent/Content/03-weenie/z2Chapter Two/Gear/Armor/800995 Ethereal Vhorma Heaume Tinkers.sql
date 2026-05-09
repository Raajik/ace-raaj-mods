DELETE FROM `weenie` WHERE `class_Id` = 800995;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800995, 'Ethereal Vhorma Heaume Tinkers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800995,   1,          2) /* ItemType - Armor */
     , (800995,   3,         92) /* PaletteTemplate - Gold */
     , (800995,   4,      16384) /* ClothingPriority - Head */
     , (800995,   5,        426) /* EncumbranceVal */
     , (800995,   9,          1) /* ValidLocations - HeadWear */
     , (800995,  16,          1) /* ItemUseable - No */
     , (800995,  18,          1) /* UiEffects - Magical */
     , (800995,  19,         30) /* Value */
     , (800995,  27,         32) /* ArmorType - Metal */
     , (800995,  28,       2000) /* ArmorLevel */
     , (800995,  33,          1) /* Bonded - Bonded */
     , (800995,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800995, 106,        200) /* ItemSpellcraft */
     , (800995, 107,       1000) /* ItemCurMana */
     , (800995, 108,       1000) /* ItemMaxMana */
     , (800995, 109,        425) /* ItemDifficulty */
     , (800995, 114,          1) /* Attuned - Attuned */
     , (800995, 151,          2) /* HookType - Wall */
     , (800995, 158,          7) /* WieldRequirements - Level */
     , (800995, 159,          1) /* WieldSkillType - Axe */
     , (800995, 160,        325) /* WieldDifficulty */
     , (800995, 265,         17) /* Defenders */
     , (800995, 370,         10) /* Damage */
     , (800995, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800995,  22, True ) /* Inscribable */
     , (800995, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800995,   5,  -0.033) /* ManaRate */
     , (800995,  12,     0.5) /* Shade */
     , (800995,  13,       2) /* ArmorModVsSlash */
     , (800995,  14,       2) /* ArmorModVsPierce */
     , (800995,  15,       2) /* ArmorModVsBludgeon */
     , (800995,  16,       2) /* ArmorModVsCold */
     , (800995,  17,       2) /* ArmorModVsFire */
     , (800995,  18,       2) /* ArmorModVsAcid */
     , (800995,  19,       2) /* ArmorModVsElectric */
     , (800995, 110,     1.1) /* BulkMod */
     , (800995, 111,     1.5) /* SizeMod */
     , (800995, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800995,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800995,   1,   33556883) /* Setup */
     , (800995,   3,  536870932) /* SoundTable */
     , (800995,   6,   67108990) /* PaletteBase */
     , (800995,   7,  268436088) /* ClothingBase */
     , (800995,   8,  100667349) /* Icon */
     , (800995,  22,  872415275) /* PhysicsEffectTable */
     , (800995,  36,  234881042) /* MutateFilter */
     , (800995,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800995,  6125,      2)  /* Legendary Summoning */
     , (800995,  6055,      2)  /* Legendary Invulnerability */
     , (800995,  6063,      2)  /* Legendary Magic Resistence */
     , (800995,  6054,      2)  /* Legendary Impregnability */
     , (800995,  6102,      2)  /* Legendary Armor */
     , (800995,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
