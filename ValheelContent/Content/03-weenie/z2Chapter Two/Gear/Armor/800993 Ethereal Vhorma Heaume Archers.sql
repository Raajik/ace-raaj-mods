DELETE FROM `weenie` WHERE `class_Id` = 800993;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800993, 'Ethereal Vhorma Heaume Archers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800993,   1,          2) /* ItemType - Armor */
     , (800993,   3,         92) /* PaletteTemplate - Gold */
     , (800993,   4,      16384) /* ClothingPriority - Head */
     , (800993,   5,        426) /* EncumbranceVal */
     , (800993,   9,          1) /* ValidLocations - HeadWear */
     , (800993,  16,          1) /* ItemUseable - No */
     , (800993,  18,          1) /* UiEffects - Magical */
     , (800993,  19,         30) /* Value */
     , (800993,  27,         32) /* ArmorType - Metal */
     , (800993,  28,       2000) /* ArmorLevel */
     , (800993,  33,          1) /* Bonded - Bonded */
     , (800993,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800993, 106,        200) /* ItemSpellcraft */
     , (800993, 107,       1000) /* ItemCurMana */
     , (800993, 108,       1000) /* ItemMaxMana */
     , (800993, 109,        425) /* ItemDifficulty */
     , (800993, 114,          1) /* Attuned - Attuned */
     , (800993, 151,          2) /* HookType - Wall */
     , (800993, 158,          7) /* WieldRequirements - Level */
     , (800993, 159,          1) /* WieldSkillType - Axe */
     , (800993, 160,        325) /* WieldDifficulty */
     , (800993, 265,         15) /* Defenders */
     , (800993, 370,         10) /* Damage */
     , (800993, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800993,  22, True ) /* Inscribable */
     , (800993, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800993,   5,  -0.033) /* ManaRate */
     , (800993,  12,     0.5) /* Shade */
     , (800993,  13,       2) /* ArmorModVsSlash */
     , (800993,  14,       2) /* ArmorModVsPierce */
     , (800993,  15,       2) /* ArmorModVsBludgeon */
     , (800993,  16,       2) /* ArmorModVsCold */
     , (800993,  17,       2) /* ArmorModVsFire */
     , (800993,  18,       2) /* ArmorModVsAcid */
     , (800993,  19,       2) /* ArmorModVsElectric */
     , (800993, 110,     1.1) /* BulkMod */
     , (800993, 111,     1.5) /* SizeMod */
     , (800993, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800993,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800993,   1,   33556883) /* Setup */
     , (800993,   3,  536870932) /* SoundTable */
     , (800993,   6,   67108990) /* PaletteBase */
     , (800993,   7,  268436088) /* ClothingBase */
     , (800993,   8,  100667349) /* Icon */
     , (800993,  22,  872415275) /* PhysicsEffectTable */
     , (800993,  36,  234881042) /* MutateFilter */
     , (800993,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800993,  6125,      2)  /* Legendary Summoning */
     , (800993,  6055,      2)  /* Legendary Invulnerability */
     , (800993,  6063,      2)  /* Legendary Magic Resistence */
     , (800993,  6054,      2)  /* Legendary Impregnability */
     , (800993,  6102,      2)  /* Legendary Armor */
     , (800993,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
