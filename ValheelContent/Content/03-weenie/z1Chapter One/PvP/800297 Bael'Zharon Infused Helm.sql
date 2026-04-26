DELETE FROM `weenie` WHERE `class_Id` = 800297;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800297, 'Bael''Zharon Infused Helm', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800297,   1,          2) /* ItemType - Armor */
     , (800297,   3,         14) /* PaletteTemplate - Red */
     , (800297,   4,      16384) /* ClothingPriority - Head */
     , (800297,   5,        265) /* EncumbranceVal */
     , (800297,   8,        125) /* Mass */
     , (800297,   9,          1) /* ValidLocations - HeadWear */
     , (800297,  16,          1) /* ItemUseable - No */
     , (800297,  19,          1) /* Value */
     , (800297,  27,         32) /* ArmorType - Metal */
     , (800297,  28,        800) /* ArmorLevel */
     , (800297,  33,          1) /* Bonded - Bonded */
     , (800297,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800297, 106,        300) /* ItemSpellcraft */
     , (800297, 107,       4000) /* ItemCurMana */
     , (800297, 108,       4000) /* ItemMaxMana */
     , (800297, 109,        300) /* ItemDifficulty */
     , (800297, 114,          1) /* Attuned - Attuned */
     , (800297, 158,          7) /* WieldRequirements - Level */
     , (800297, 159,          1) /* WieldSkillType - Axe */
     , (800297, 160,        180) /* WieldDifficulty */
     , (800297, 383,          1) /* GearPKDamageRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800297,  22, True ) /* Inscribable */
     , (800297,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800297,   5,    -0.5) /* ManaRate */
     , (800297,  12,     0.5) /* Shade */
     , (800297,  13,     1.2) /* ArmorModVsSlash */
     , (800297,  14,     1.2) /* ArmorModVsPierce */
     , (800297,  15,     1.2) /* ArmorModVsBludgeon */
     , (800297,  16,     1.2) /* ArmorModVsCold */
     , (800297,  17,     1.2) /* ArmorModVsFire */
     , (800297,  18,     1.2) /* ArmorModVsAcid */
     , (800297,  19,     1.2) /* ArmorModVsElectric */
     , (800297, 110,       1) /* BulkMod */
     , (800297, 111,       1) /* SizeMod */
     , (800297, 165,     1.2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800297,   1, 'Bael''Zharon Infused Helm') /* Name */
     , (800297,  15, 'A helm forged in the fires of Bael''Zharon''s mountain.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800297,   1,   33558266) /* Setup */
     , (800297,   3,  536870932) /* SoundTable */
     , (800297,   6,   67108990) /* PaletteBase */
     , (800297,   7,  268436560) /* ClothingBase */
     , (800297,   8,  100674137) /* Icon */
     , (800297,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800297,  6049,      2)  /* Legendary Dirty Fighting Prowess */
     , (800297,  6054,      2)  /* Legendary Impregnability */
     , (800297,  6055,      2)  /* Legendary Invulnerability */
     , (800297,  6063,      2)  /* Legendary Magic Resistance */
     , (800297,  6102,      2)  /* Legendary Armor */
     , (800297,  6125,      2)  /* Legendary Summoning Prowess */;
