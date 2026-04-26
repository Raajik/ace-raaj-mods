DELETE FROM `weenie` WHERE `class_Id` = 800484;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800484, 'Vhorma Heaume', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800484,   1,          2) /* ItemType - Armor */
     , (800484,   3,         86) /* PaletteTemplate - Gold */
     , (800484,   4,      16384) /* ClothingPriority - Head */
     , (800484,   5,        426) /* EncumbranceVal */
     , (800484,   9,          1) /* ValidLocations - HeadWear */
     , (800484,  16,          1) /* ItemUseable - No */
     , (800484,  19,         500) /* Value */
     , (800484,  27,         32) /* ArmorType - Metal */
     , (800484,  28,       1725) /* ArmorLevel */
     , (800484,  33,          1) /* Bonded - Bonded */
     , (800484,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800484, 106,        200) /* ItemSpellcraft */
     , (800484, 107,       1000) /* ItemCurMana */
     , (800484, 108,       1000) /* ItemMaxMana */
     , (800484, 109,        400) /* ItemDifficulty */
     , (800484, 114,          1) /* Attuned - Attuned */
     , (800484, 151,          2) /* HookType - Wall */
     , (800484, 158,          7) /* WieldRequirements - Level */
     , (800484, 159,          1) /* WieldSkillType - Axe */
     , (800484, 160,        300) /* WieldDifficulty */
     , (800484, 265,         24) /* Defenders */
     , (800484, 370,          6) /* Damage */
     , (800484, 379,         12) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800484,  22, True ) /* Inscribable */
     , (800484, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800484,   5,  -0.033) /* ManaRate */
     , (800484,  12,     0.5) /* Shade */
     , (800484,  13,       2) /* ArmorModVsSlash */
     , (800484,  14,       2) /* ArmorModVsPierce */
     , (800484,  15,       2) /* ArmorModVsBludgeon */
     , (800484,  16,       2) /* ArmorModVsCold */
     , (800484,  17,       2) /* ArmorModVsFire */
     , (800484,  18,       2) /* ArmorModVsAcid */
     , (800484,  19,       2) /* ArmorModVsElectric */
     , (800484, 110,     1.1) /* BulkMod */
     , (800484, 111,     1.5) /* SizeMod */
     , (800484, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800484,   1, 'Vhorma Heaume') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800484,   1,   33556883) /* Setup */
     , (800484,   3,  536870932) /* SoundTable */
     , (800484,   6,   67108990) /* PaletteBase */
     , (800484,   7,  268436088) /* ClothingBase */
     , (800484,   8,  100667349) /* Icon */
     , (800484,  22,  872415275) /* PhysicsEffectTable */
     , (800484,  36,  234881042) /* MutateFilter */
     , (800484,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800484,  6125,      2)  /* Legendary Summoning */
     , (800484,  6055,      2)  /* Legendary Invulnerability */
     , (800484,  6063,      2)  /* Legendary Magic Resistence */
     , (800484,  6054,      2)  /* Legendary Impregnability */
     , (800484,  6102,      2)  /* Legendary Armor */
     , (800484,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
