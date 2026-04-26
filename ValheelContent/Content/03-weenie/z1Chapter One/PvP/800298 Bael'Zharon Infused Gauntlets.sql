DELETE FROM `weenie` WHERE `class_Id` = 800298;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800298, 'Bael''Zharon Infused Gauntlets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800298,   1,          2) /* ItemType - Armor */
     , (800298,   3,         14) /* PaletteTemplate - Red */
     , (800298,   4,      32768) /* ClothingPriority - Hands */
     , (800298,   5,        919) /* EncumbranceVal */
     , (800298,   9,         32) /* ValidLocations - HandWear */
     , (800298,  16,          1) /* ItemUseable - No */
     , (800298,  19,          1) /* Value */
     , (800298,  28,       800) /* ArmorLevel */
     , (800298,  33,          1) /* Bonded - Bonded */
     , (800298,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800298, 106,        200) /* ItemSpellcraft */
     , (800298, 107,       1000) /* ItemCurMana */
     , (800298, 108,       1000) /* ItemMaxMana */
     , (800298, 109,        300) /* ItemDifficulty */
     , (800298, 114,          1) /* Attuned - Attuned */
     , (800298, 158,          7) /* WieldRequirements - Level */
     , (800298, 159,          1) /* WieldSkillType - Axe */
     , (800298, 160,        180) /* WieldDifficulty */
     , (800298, 383,          1) /* PK Damage */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800298,  22, True ) /* Inscribable */
     , (800298,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800298,   5,    -0.5) /* ManaRate */
     , (800298,  12,     0.5) /* Shade */
	 , (800298,  13,     1.2) /* ArmorModVsSlash */
     , (800298,  14,     1.2) /* ArmorModVsPierce */
     , (800298,  15,     1.2) /* ArmorModVsBludgeon */
     , (800298,  16,     1.2) /* ArmorModVsCold */
     , (800298,  17,     1.2) /* ArmorModVsFire */
     , (800298,  18,     1.2) /* ArmorModVsAcid */
     , (800298,  19,     1.2) /* ArmorModVsElectric */
     , (800298, 110,       1) /* BulkMod */
     , (800298, 111,       1) /* SizeMod */
     , (800298, 165,     1.2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800298,   1, 'Bael''Zharon Infused Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800298,   1,   33554648) /* Setup */
     , (800298,   3,  536870932) /* SoundTable */
     , (800298,   6,   67108990) /* PaletteBase */
     , (800298,   7,  268437449) /* ClothingBase */
     , (800298,   8,  100691733) /* Icon */
     , (800298,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800298,  6075,      2)  /* Legendary War Magic */
     , (800298,  6046,      2)  /* Legendary Creature Magic */
     , (800298,  6056,      2)  /* Legendary Item Magic */
     , (800298,  6060,      2)  /* Legendary Life Magic */
	 , (800298,  6074,      2)  /* Legendary Void Magic */
	 , (800298,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800298,  6102,      2)  /* Legendary Armor */;
