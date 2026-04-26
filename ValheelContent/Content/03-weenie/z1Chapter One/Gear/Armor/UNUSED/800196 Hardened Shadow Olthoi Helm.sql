DELETE FROM `weenie` WHERE `class_Id` = 800196;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800196, 'Hardened Shadow Olthoi Helm', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800196,   1,          2) /* ItemType - Armor */
     , (800196,   3,         39) /* PaletteTemplate - Black */
     , (800196,   4,      16384) /* ClothingPriority - Head */
     , (800196,   5,        600) /* EncumbranceVal */
     , (800196,   8,        150) /* Mass */
     , (800196,   9,          1) /* ValidLocations - HeadWear */
     , (800196,  16,          1) /* ItemUseable - No */
     , (800196,  19,         75) /* Value */
     , (800196,  27,         32) /* ArmorType - Metal */
     , (800196,  28,       1000) /* ArmorLevel */
     , (800196,  33,          1) /* Bonded - Bonded */
     , (800196,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800196, 106,        200) /* ItemSpellcraft */
     , (800196, 107,       1000) /* ItemCurMana */
     , (800196, 108,       1000) /* ItemMaxMana */
     , (800196, 109,        300) /* ItemDifficulty */
     , (800196, 114,          1) /* Attuned - Attuned */
     , (800196, 150,        103) /* HookPlacement - Hook */
     , (800196, 151,          2) /* HookType - Wall */
     , (800196, 158,          7) /* WieldRequirements - Level */
     , (800196, 159,          1) /* WieldSkillType - Axe */
     , (800196, 160,        250) /* WieldDifficulty */
     , (800196, 265,         16) /* Defenders */
     , (800196, 370,          2) /* Crit Damage */
     , (800196, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800196,  22, True ) /* Inscribable */
     , (800196, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800196,  12,     0.3) /* Shade */
     , (800196,  13,       2) /* ArmorModVsSlash */
     , (800196,  14,       2) /* ArmorModVsPierce */
     , (800196,  15,       2) /* ArmorModVsBludgeon */
     , (800196,  16,       2) /* ArmorModVsCold */
     , (800196,  17,       2) /* ArmorModVsFire */
     , (800196,  18,       2) /* ArmorModVsAcid */
     , (800196,  19,       2) /* ArmorModVsElectric */
     , (800196, 110,       1) /* BulkMod */
     , (800196, 111,       1) /* SizeMod */
     , (800196, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800196,   1, 'Hardened Shadow Olthoi Helm') /* Name */
     , (800196,  15, 'A Hardened Olthoi Helm infused with the power of a Scintillian Gem.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800196,   1,   33556855) /* Setup */
     , (800196,   3,  536870932) /* SoundTable */
     , (800196,   6,   67108990) /* PaletteBase */
     , (800196,   7,  268436074) /* ClothingBase */
     , (800196,   8,  100671130) /* Icon */
     , (800196,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800196,  6125,      2)  /* Legendary Summoning */
     , (800196,  6055,      2)  /* Legendary Invulnerability */
     , (800196,  6063,      2)  /* Legendary Magic Resistence */
     , (800196,  6054,      2)  /* Legendary Impregnability */
     , (800196,  6102,      2)  /* Legendary Armor */
     , (800196,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
