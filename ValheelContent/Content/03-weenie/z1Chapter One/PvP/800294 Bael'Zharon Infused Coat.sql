DELETE FROM `weenie` WHERE `class_Id` = 800294;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800294, 'Bael''Zharon Infused Coat', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800294,   1,          2) /* ItemType - Armor */
     , (800294,   3,         14) /* PaletteTemplate - Blue */
     , (800294,   4,      13312) /* ClothingPriority - OuterwearChest, OuterwearUpperArms, OuterwearLowerArms */
     , (800294,   5,        300) /* EncumbranceVal */
     , (800294,   8,        700) /* Mass */
     , (800294,   9,       6656) /* ValidLocations - ChestArmor, UpperArmArmor, LowerArmArmor */
     , (800294,  16,          1) /* ItemUseable - No */
     , (800294,  18,          1) /* UiEffects - Magical */
     , (800294,  19,          1) /* Value */
     , (800294,  27,         32) /* ArmorType - Metal */
     , (800294,  28,        800) /* ArmorLevel */
     , (800294,  33,          1) /* Bonded - Bonded */
     , (800294,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800294, 106,        300) /* ItemSpellcraft */
     , (800294, 107,       4000) /* ItemCurMana */
     , (800294, 108,       4000) /* ItemMaxMana */
     , (800294, 109,        300) /* ItemDifficulty */
     , (800294, 114,          1) /* Attuned - Attuned */
     , (800294, 158,          7) /* WieldRequirements - RawSkill */
     , (800294, 159,          1) /* WieldSkillType - Arcane */
     , (800294, 160,        180) /* WieldDifficulty */
     , (800294, 384,          1) /* PK Resist */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800294,  11, True ) /* IgnoreCollisions */
     , (800294,  13, True ) /* Ethereal */
     , (800294,  14, True ) /* GravityStatus */
     , (800294,  19, True ) /* Attackable */
     , (800294,  22, True ) /* Inscribable */
     , (800294,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800294,   5,    -0.5) /* ManaRate */
     , (800294,  12,     0.5) /* Shade */
     , (800294,  13,     1.2) /* ArmorModVsSlash */
     , (800294,  14,     1.2) /* ArmorModVsPierce */
     , (800294,  15,     1.2) /* ArmorModVsBludgeon */
     , (800294,  16,     1.2) /* ArmorModVsCold */
     , (800294,  17,     1.2) /* ArmorModVsFire */
     , (800294,  18,     1.2) /* ArmorModVsAcid */
     , (800294,  19,     1.2) /* ArmorModVsElectric */
     , (800294, 110,       1) /* BulkMod */
     , (800294, 111,       1) /* SizeMod */
     , (800294, 165,     1.2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800294,   1, 'Bael''Zharon Infused Coa') /* Name */
     , (800294,  16, 'A coat forged in the fires of Bael''Zharon''s mountain.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800294,   1,   33554644) /* Setup */
     , (800294,   3,  536870932) /* SoundTable */
     , (800294,   6,   67108990) /* PaletteBase */
     , (800294,   7,  268436554) /* ClothingBase */
     , (800294,   8,  100674123) /* Icon */
     , (800294,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800294,  6107,      2)  /* Legendary Strength */
     , (800294,  6104,      2)  /* Legendary Endurance */
     , (800294,  6106,      2)  /* Legendary Quickness */
     , (800294,  6095,      2)  /* Legendary Impenetrability */
	 , (800294,  6077,      2)  /* Legendary Health Gain */
	 , (800294,  6102,      2)  /* Legendary Armor */;
