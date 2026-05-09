DELETE FROM `weenie` WHERE `class_Id` = 800221;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800221, 'Elorin''s Cursed Chiran', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800221,   1,          2) /* ItemType - Armor */
     , (800221,   3,         93) /* PaletteTemplate - Silver */
     , (800221,   4,      16384) /* ClothingPriority - Head */
     , (800221,   5,        533) /* EncumbranceVal */
     , (800221,   8,        200) /* Mass */
     , (800221,   9,          1) /* ValidLocations - HeadWear */
     , (800221,  16,          1) /* ItemUseable - No */
     , (800221,  19,          10) /* Value */
     , (800221,  27,         32) /* ArmorType - Metal */
     , (800221,  28,        800) /* ArmorLevel */
     , (800221,  33,          1) /* Bonded - Bonded */
     , (800221,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800221, 106,        200) /* ItemSpellcraft */
     , (800221, 107,       1000) /* ItemCurMana */
     , (800221, 108,       1000) /* ItemMaxMana */
     , (800221, 114,          1) /* Attuned - Attuned */
     , (800221, 124,          3) /* Version */
     , (800221, 158,          7) /* WieldRequirements - Level */
     , (800221, 159,          1) /* WieldSkillType - Axe */
     , (800221, 160,        200) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800221,  22, True ) /* Inscribable */
     , (800221, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800221,  12,    0.33) /* Shade */
     , (800221,  13,     2) /* ArmorModVsSlash */
     , (800221,  14,       2) /* ArmorModVsPierce */
     , (800221,  15,       2) /* ArmorModVsBludgeon */
     , (800221,  16,     2) /* ArmorModVsCold */
     , (800221,  17,     2) /* ArmorModVsFire */
     , (800221,  18,     2) /* ArmorModVsAcid */
     , (800221,  19,     2) /* ArmorModVsElectric */
     , (800221, 110,       1) /* BulkMod */
     , (800221, 111,       1) /* SizeMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800221,   1, 'Elorin''s Cursed Chiran') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800221,   1,   33555248) /* Setup */
     , (800221,   3,  536870932) /* SoundTable */
     , (800221,   6,   67108990) /* PaletteBase */
     , (800221,   7,  268436801) /* ClothingBase */
     , (800221,   8,  100675948) /* Icon */
     , (800221,  22,  872415275) /* PhysicsEffectTable */
     , (800221,  36,  234881042) /* MutateFilter */
     , (800221,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800221,  6125,      2)  /* Legendary Summoning */
     , (800221,  6055,      2)  /* Legendary Invulnerability */
     , (800221,  6063,      2)  /* Legendary Magic Resistence */
     , (800221,  6054,      2)  /* Legendary Impregnability */
     , (800221,  6102,      2)  /* Legendary Armor */
     , (800221,  6049,      2)  /* Legendary Dirty Fighting Prowess */;

