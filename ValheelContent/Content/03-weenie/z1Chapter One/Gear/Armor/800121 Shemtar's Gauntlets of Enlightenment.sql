DELETE FROM `weenie` WHERE `class_Id` = 800121;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800121, 'shemtarsgaunts', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800121,   1,          2) /* ItemType - Armor */
     , (800121,   3,          9) /* PaletteTemplate - Grey */
     , (800121,   4,      32768) /* ClothingPriority - Hands */
     , (800121,   5,        919) /* EncumbranceVal */
     , (800121,   9,         32) /* ValidLocations - HandWear */
     , (800121,  16,          1) /* ItemUseable - No */
     , (800121,  18,          1) /* UiEffects - Magical */
     , (800121,  19,          10) /* Value */
     , (800121,  28,        800) /* ArmorLevel */
     , (800121,  33,          1) /* Bonded - Bonded */
     , (800121,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800121, 106,        400) /* ItemSpellcraft */
     , (800121, 107,        800) /* ItemCurMana */
     , (800121, 108,        800) /* ItemMaxMana */
     , (800121, 109,        220) /* ItemDifficulty */
     , (800121, 114,          1) /* Attuned - Attuned */
     , (800121, 158,          7) /* WieldRequirements - Level */
     , (800121, 159,          1) /* WieldSkillType - Axe */
     , (800121, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800121,  22, True ) /* Inscribable */
     , (800121,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800121,  13,     2) /* ArmorModVsSlash */
     , (800121,  14,     2) /* ArmorModVsPierce */
     , (800121,  15,     2) /* ArmorModVsBludgeon */
     , (800121,  16,       2) /* ArmorModVsCold */
     , (800121,  17,       2) /* ArmorModVsFire */
     , (800121,  18,       2) /* ArmorModVsAcid */
     , (800121,  19,       2) /* ArmorModVsElectric */
     , (800121, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800121,   1, 'Shemtar''s Gauntlets of Enlightenment') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800121,   1,   33554648) /* Setup */
     , (800121,   3,  536870932) /* SoundTable */
     , (800121,   7,  268437582) /* ClothingBase */
     , (800121,   8,  100693096) /* Icon */
     , (800121,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800121,  6075,      2)  /* Legendary War Magic */
     , (800121,  6046,      2)  /* Legendary Creature Magic */
     , (800121,  6056,      2)  /* Legendary Item Magic */
     , (800121,  6060,      2)  /* Legendary Life Magic */
	 , (800121,  6074,      2)  /* Legendary Void Magic */
	 , (800121,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800121,  6102,      2)  /* Legendary Armor */;
