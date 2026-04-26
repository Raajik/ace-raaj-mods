DELETE FROM `weenie` WHERE `class_Id` = 800997;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800997, 'Ethereal Vhorma Heaume Hearty', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800997,   1,          2) /* ItemType - Armor */
     , (800997,   3,         92) /* PaletteTemplate - Gold */
     , (800997,   4,      16384) /* ClothingPriority - Head */
     , (800997,   5,        426) /* EncumbranceVal */
     , (800997,   9,          1) /* ValidLocations - HeadWear */
     , (800997,  16,          1) /* ItemUseable - No */
     , (800997,  18,          1) /* UiEffects - Magical */
     , (800997,  19,         30) /* Value */
     , (800997,  27,         32) /* ArmorType - Metal */
     , (800997,  28,       2000) /* ArmorLevel */
     , (800997,  33,          1) /* Bonded - Bonded */
     , (800997,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800997, 106,        200) /* ItemSpellcraft */
     , (800997, 107,       1000) /* ItemCurMana */
     , (800997, 108,       1000) /* ItemMaxMana */
     , (800997, 109,        425) /* ItemDifficulty */
     , (800997, 114,          1) /* Attuned - Attuned */
     , (800997, 151,          2) /* HookType - Wall */
     , (800997, 158,          7) /* WieldRequirements - Level */
     , (800997, 159,          1) /* WieldSkillType - Axe */
     , (800997, 160,        325) /* WieldDifficulty */
     , (800997, 265,         19) /* Defenders */
     , (800997, 370,         10) /* Damage */
     , (800997, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800997,  22, True ) /* Inscribable */
     , (800997, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800997,   5,  -0.033) /* ManaRate */
     , (800997,  12,     0.5) /* Shade */
     , (800997,  13,       2) /* ArmorModVsSlash */
     , (800997,  14,       2) /* ArmorModVsPierce */
     , (800997,  15,       2) /* ArmorModVsBludgeon */
     , (800997,  16,       2) /* ArmorModVsCold */
     , (800997,  17,       2) /* ArmorModVsFire */
     , (800997,  18,       2) /* ArmorModVsAcid */
     , (800997,  19,       2) /* ArmorModVsElectric */
     , (800997, 110,     1.1) /* BulkMod */
     , (800997, 111,     1.5) /* SizeMod */
     , (800997, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800997,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800997,   1,   33556883) /* Setup */
     , (800997,   3,  536870932) /* SoundTable */
     , (800997,   6,   67108990) /* PaletteBase */
     , (800997,   7,  268436088) /* ClothingBase */
     , (800997,   8,  100667349) /* Icon */
     , (800997,  22,  872415275) /* PhysicsEffectTable */
     , (800997,  36,  234881042) /* MutateFilter */
     , (800997,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800997,  6125,      2)  /* Legendary Summoning */
     , (800997,  6055,      2)  /* Legendary Invulnerability */
     , (800997,  6063,      2)  /* Legendary Magic Resistence */
     , (800997,  6054,      2)  /* Legendary Impregnability */
     , (800997,  6102,      2)  /* Legendary Armor */
     , (800997,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
