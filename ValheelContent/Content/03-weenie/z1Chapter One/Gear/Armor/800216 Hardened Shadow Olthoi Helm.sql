DELETE FROM `weenie` WHERE `class_Id` = 800216;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800216, 'Hardened Shadow Olthoi Helm1', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800216,   1,          2) /* ItemType - Armor */
     , (800216,   3,         39) /* PaletteTemplate - Black */
     , (800216,   4,      16384) /* ClothingPriority - Head */
     , (800216,   5,        600) /* EncumbranceVal */
     , (800216,   8,        150) /* Mass */
     , (800216,   9,          1) /* ValidLocations - HeadWear */
     , (800216,  16,          1) /* ItemUseable - No */
     , (800216,  19,         15) /* Value */
     , (800216,  27,         32) /* ArmorType - Metal */
     , (800216,  28,        850) /* ArmorLevel */
     , (800216,  33,          1) /* Bonded - Bonded */
     , (800216,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800216, 106,        200) /* ItemSpellcraft */
     , (800216, 107,       1000) /* ItemCurMana */
     , (800216, 108,       1000) /* ItemMaxMana */
     , (800216, 109,        300) /* ItemDifficulty */
     , (800216, 114,          1) /* Attuned - Attuned */
     , (800216, 150,        103) /* HookPlacement - Hook */
     , (800216, 151,          2) /* HookType - Wall */
     , (800216, 158,          7) /* WieldRequirements - Level */
     , (800216, 159,          1) /* WieldSkillType - Axe */
     , (800216, 160,        250) /* WieldDifficulty */
     , (800216, 265,         16) /* Defenders */
     , (800216, 370,          2) /* Damage */
     , (800216, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800216,  22, True ) /* Inscribable */
     , (800216, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800216,  12,     0.3) /* Shade */
     , (800216,  13,       2) /* ArmorModVsSlash */
     , (800216,  14,       2) /* ArmorModVsPierce */
     , (800216,  15,       2) /* ArmorModVsBludgeon */
     , (800216,  16,       2) /* ArmorModVsCold */
     , (800216,  17,       2) /* ArmorModVsFire */
     , (800216,  18,       2) /* ArmorModVsAcid */
     , (800216,  19,       2) /* ArmorModVsElectric */
     , (800216, 110,       1) /* BulkMod */
     , (800216, 111,       1) /* SizeMod */
     , (800216, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800216,   1, 'Hardened Shadow Olthoi Helm') /* Name */
     , (800216,  15, 'A Hardened Olthoi Helm infused with the power of a Scintillian Gem.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800216,   1,   33556855) /* Setup */
     , (800216,   3,  536870932) /* SoundTable */
     , (800216,   6,   67108990) /* PaletteBase */
     , (800216,   7,  268436074) /* ClothingBase */
     , (800216,   8,  100671130) /* Icon */
     , (800216,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800216,  6125,      2)  /* Legendary Summoning */
     , (800216,  6055,      2)  /* Legendary Invulnerability */
     , (800216,  6063,      2)  /* Legendary Magic Resistence */
     , (800216,  6054,      2)  /* Legendary Impregnability */
     , (800216,  6102,      2)  /* Legendary Armor */
     , (800216,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
