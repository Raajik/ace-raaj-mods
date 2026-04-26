DELETE FROM `weenie` WHERE `class_Id` = 800295;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800295, 'Bael''Zharon Infused Leggings', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800295,   1,          2) /* ItemType - Armor */
     , (800295,   3,         14) /* PaletteTemplate - Red */
     , (800295,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800295,   5,        300) /* EncumbranceVal */
     , (800295,   8,        400) /* Mass */
     , (800295,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800295,  16,          1) /* ItemUseable - No */
     , (800295,  18,          1) /* UiEffects - Magical */
     , (800295,  19,          1) /* Value */
     , (800295,  27,         32) /* ArmorType - Metal */
     , (800295,  28,        800) /* ArmorLevel */
     , (800295,  33,          1) /* Bonded - Bonded */
     , (800295,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800295, 106,        300) /* ItemSpellcraft */
     , (800295, 107,       4000) /* ItemCurMana */
     , (800295, 108,       4000) /* ItemMaxMana */
     , (800295, 109,        300) /* ItemDifficulty */
     , (800295, 114,          1) /* Attuned - Attuned */
     , (800295, 158,          7) /* WieldRequirements - RawSkill */
     , (800295, 159,          1) /* WieldSkillType - WarMagic */
     , (800295, 160,        180) /* WieldDifficulty */
     , (800295, 384,          1) /* PK Resist */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800295,  22, True ) /* Inscribable */
     , (800295,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800295,   5,    -0.5) /* ManaRate */
     , (800295,  12,     0.5) /* Shade */
     , (800295,  13,     1.2) /* ArmorModVsSlash */
     , (800295,  14,     1.2) /* ArmorModVsPierce */
     , (800295,  15,     1.2) /* ArmorModVsBludgeon */
     , (800295,  16,     1.2) /* ArmorModVsCold */
     , (800295,  17,     1.2) /* ArmorModVsFire */
     , (800295,  18,     1.2) /* ArmorModVsAcid */
     , (800295,  19,     1.2) /* ArmorModVsElectric */
     , (800295, 110,       1) /* BulkMod */
     , (800295, 111,       1) /* SizeMod */
     , (800295, 165,     1.2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800295,   1, 'Bael''Zharon Infused Leggings') /* Name */
     , (800295,  16, 'Leggings forged in the fires of Bael''Zharon''s mountain.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800295,   1,   33554856) /* Setup */
     , (800295,   3,  536870932) /* SoundTable */
     , (800295,   6,   67108990) /* PaletteBase */
     , (800295,   7,  268436558) /* ClothingBase */
     , (800295,   8,  100674120) /* Icon */
     , (800295,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800295,  6103,      2)  /* Legendary Coordination */
     , (800295,  6105,      2)  /* Legendary Focus */
     , (800295,  6101,      2)  /* Legendary Willpower */
     , (800295,  6076,      2)  /* Legendary Stamina Gain */
	 , (800295,  6078,      2)  /* Legendary Mana Gain */
	 , (800295,  6102,      2)  /* Legendary Armor */;
