DELETE FROM `weenie` WHERE `class_Id` = 800363;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800363, 'Tradewind''s Path Kabuton', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800363,   1,          2) /* ItemType - Armor */
     , (800363,   3,          2) /* PaletteTemplate - Blue */
     , (800363,   4,      16384) /* ClothingPriority - Head */
     , (800363,   5,        426) /* EncumbranceVal */
     , (800363,   9,          1) /* ValidLocations - HeadWear */
     , (800363,  16,          1) /* ItemUseable - No */
     , (800363,  19,          25) /* Value */
     , (800363,  27,         32) /* ArmorType - Metal */
     , (800363,  28,        1500) /* ArmorLevel */
     , (800363,  33,          1) /* Bonded - Bonded */
     , (800363,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800363, 106,        200) /* ItemSpellcraft */
     , (800363, 107,       1000) /* ItemCurMana */
     , (800363, 108,       1000) /* ItemMaxMana */
     , (800363, 109,        300) /* ItemDifficulty */
     , (800363, 114,          1) /* Attuned - Attuned */
     , (800363, 124,          3) /* Version */
     , (800363, 151,          2) /* HookType - Wall */
     , (800363, 158,          7) /* WieldRequirements - Level */
     , (800363, 159,          1) /* WieldSkillType - Axe */
     , (800363, 160,        300) /* WieldDifficulty */
     , (800363, 169,  168429060) /* TsysMutationData */
     , (800363, 265,         24) /* Defenders */
     , (800363, 370,          3) /* Damage */
     , (800363, 379,          7) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800363,  22, True ) /* Inscribable */
     , (800363, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800363,   5,  -0.033) /* ManaRate */
     , (800363,  12,     0.5) /* Shade */
     , (800363,  13,       2) /* ArmorModVsSlash */
     , (800363,  14,       2) /* ArmorModVsPierce */
     , (800363,  15,       2) /* ArmorModVsBludgeon */
     , (800363,  16,       2) /* ArmorModVsCold */
     , (800363,  17,       2) /* ArmorModVsFire */
     , (800363,  18,       2) /* ArmorModVsAcid */
     , (800363,  19,       2) /* ArmorModVsElectric */
     , (800363, 110,     1.1) /* BulkMod */
     , (800363, 111,     1.5) /* SizeMod */
     , (800363, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800363,   1, 'Tradewind''s Path Kabuton') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800363,   1,   33558419) /* Setup */
     , (800363,   3,  536870932) /* SoundTable */
     , (800363,   6,   67108990) /* PaletteBase */
     , (800363,   7,  268437298) /* ClothingBase */
     , (800363,   8,  100690017) /* Icon */
     , (800363,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800363,  6125,      2)  /* Legendary Summoning */
     , (800363,  6055,      2)  /* Legendary Invulnerability */
     , (800363,  6063,      2)  /* Legendary Magic Resistence */
     , (800363,  6054,      2)  /* Legendary Impregnability */
     , (800363,  6102,      2)  /* Legendary Armor */
     , (800363,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
