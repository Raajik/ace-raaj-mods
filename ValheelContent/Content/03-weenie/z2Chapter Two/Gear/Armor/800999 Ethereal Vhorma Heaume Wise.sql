DELETE FROM `weenie` WHERE `class_Id` = 800999;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800999, 'Ethereal Vhorma Heaume Wise', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800999,   1,          2) /* ItemType - Armor */
     , (800999,   3,         92) /* PaletteTemplate - Gold */
     , (800999,   4,      16384) /* ClothingPriority - Head */
     , (800999,   5,        426) /* EncumbranceVal */
     , (800999,   9,          1) /* ValidLocations - HeadWear */
     , (800999,  16,          1) /* ItemUseable - No */
     , (800999,  18,          1) /* UiEffects - Magical */
     , (800999,  19,         30) /* Value */
     , (800999,  27,         32) /* ArmorType - Metal */
     , (800999,  28,       2000) /* ArmorLevel */
     , (800999,  33,          1) /* Bonded - Bonded */
     , (800999,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800999, 106,        200) /* ItemSpellcraft */
     , (800999, 107,       1000) /* ItemCurMana */
     , (800999, 108,       1000) /* ItemMaxMana */
     , (800999, 109,        425) /* ItemDifficulty */
     , (800999, 114,          1) /* Attuned - Attuned */
     , (800999, 151,          2) /* HookType - Wall */
     , (800999, 158,          7) /* WieldRequirements - Level */
     , (800999, 159,          1) /* WieldSkillType - Axe */
     , (800999, 160,        325) /* WieldDifficulty */
     , (800999, 265,         21) /* Defenders */
     , (800999, 370,         10) /* Damage */
     , (800999, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800999,  22, True ) /* Inscribable */
     , (800999, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800999,   5,  -0.033) /* ManaRate */
     , (800999,  12,     0.5) /* Shade */
     , (800999,  13,       2) /* ArmorModVsSlash */
     , (800999,  14,       2) /* ArmorModVsPierce */
     , (800999,  15,       2) /* ArmorModVsBludgeon */
     , (800999,  16,       2) /* ArmorModVsCold */
     , (800999,  17,       2) /* ArmorModVsFire */
     , (800999,  18,       2) /* ArmorModVsAcid */
     , (800999,  19,       2) /* ArmorModVsElectric */
     , (800999, 110,     1.1) /* BulkMod */
     , (800999, 111,     1.5) /* SizeMod */
     , (800999, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800999,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800999,   1,   33556883) /* Setup */
     , (800999,   3,  536870932) /* SoundTable */
     , (800999,   6,   67108990) /* PaletteBase */
     , (800999,   7,  268436088) /* ClothingBase */
     , (800999,   8,  100667349) /* Icon */
     , (800999,  22,  872415275) /* PhysicsEffectTable */
     , (800999,  36,  234881042) /* MutateFilter */
     , (800999,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800999,  6125,      2)  /* Legendary Summoning */
     , (800999,  6055,      2)  /* Legendary Invulnerability */
     , (800999,  6063,      2)  /* Legendary Magic Resistence */
     , (800999,  6054,      2)  /* Legendary Impregnability */
     , (800999,  6102,      2)  /* Legendary Armor */
     , (800999,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
