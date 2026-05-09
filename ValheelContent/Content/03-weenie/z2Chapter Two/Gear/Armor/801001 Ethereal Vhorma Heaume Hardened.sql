DELETE FROM `weenie` WHERE `class_Id` = 801001;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801001, 'Ethereal Vhorma Heaume Hardened', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801001,   1,          2) /* ItemType - Armor */
     , (801001,   3,         92) /* PaletteTemplate - Gold */
     , (801001,   4,      16384) /* ClothingPriority - Head */
     , (801001,   5,        426) /* EncumbranceVal */
     , (801001,   9,          1) /* ValidLocations - HeadWear */
     , (801001,  16,          1) /* ItemUseable - No */
     , (801001,  18,          1) /* UiEffects - Magical */
     , (801001,  19,         30) /* Value */
     , (801001,  27,         32) /* ArmorType - Metal */
     , (801001,  28,       2000) /* ArmorLevel */
     , (801001,  33,          1) /* Bonded - Bonded */
     , (801001,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801001, 106,        200) /* ItemSpellcraft */
     , (801001, 107,       1000) /* ItemCurMana */
     , (801001, 108,       1000) /* ItemMaxMana */
     , (801001, 109,        425) /* ItemDifficulty */
     , (801001, 114,          1) /* Attuned - Attuned */
     , (801001, 151,          2) /* HookType - Wall */
     , (801001, 158,          7) /* WieldRequirements - Level */
     , (801001, 159,          1) /* WieldSkillType - Axe */
     , (801001, 160,        325) /* WieldDifficulty */
     , (801001, 265,         23) /* Defenders */
     , (801001, 370,         10) /* Damage */
     , (801001, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801001,  22, True ) /* Inscribable */
     , (801001, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801001,   5,  -0.033) /* ManaRate */
     , (801001,  12,     0.5) /* Shade */
     , (801001,  13,       2) /* ArmorModVsSlash */
     , (801001,  14,       2) /* ArmorModVsPierce */
     , (801001,  15,       2) /* ArmorModVsBludgeon */
     , (801001,  16,       2) /* ArmorModVsCold */
     , (801001,  17,       2) /* ArmorModVsFire */
     , (801001,  18,       2) /* ArmorModVsAcid */
     , (801001,  19,       2) /* ArmorModVsElectric */
     , (801001, 110,     1.1) /* BulkMod */
     , (801001, 111,     1.5) /* SizeMod */
     , (801001, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801001,   1, 'Ethereal Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801001,   1,   33556883) /* Setup */
     , (801001,   3,  536870932) /* SoundTable */
     , (801001,   6,   67108990) /* PaletteBase */
     , (801001,   7,  268436088) /* ClothingBase */
     , (801001,   8,  100667349) /* Icon */
     , (801001,  22,  872415275) /* PhysicsEffectTable */
     , (801001,  36,  234881042) /* MutateFilter */
     , (801001,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801001,  6125,      2)  /* Legendary Summoning */
     , (801001,  6055,      2)  /* Legendary Invulnerability */
     , (801001,  6063,      2)  /* Legendary Magic Resistence */
     , (801001,  6054,      2)  /* Legendary Impregnability */
     , (801001,  6102,      2)  /* Legendary Armor */
     , (801001,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
