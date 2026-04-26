DELETE FROM `weenie` WHERE `class_Id` = 803086;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803086, 'MuleRobe', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803086,   1,          4) /* ItemType - Clothing */
     , (803086,   3,         39) /* PaletteTemplate - Black */
     , (803086,   4,      98048) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms, Head, Feet */
     , (803086,   5,        450) /* EncumbranceVal */
     , (803086,   8,        450) /* Mass */
     , (803086,   9,      32513) /* ValidLocations - HeadWear, Armor */
     , (803086,  16,          1) /* ItemUseable - No */
     , (803086,  18,          1) /* UiEffects - Magical */
     , (803086,  19,       4000) /* Value */
     , (803086,  27,          1) /* ArmorType - Cloth */
     , (803086,  28,        800) /* ArmorLevel */
     , (803086,  33,          1) /* Bonded - Bonded */
     , (803086,  36,       9999) /* ResistMagic */
     , (803086,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803086, 106,        400) /* ItemSpellcraft */
     , (803086, 107,       2000) /* ItemCurMana */
     , (803086, 108,       2000) /* ItemMaxMana */
     , (803086, 109,          1) /* ItemDifficulty */
     , (803086, 114,          1) /* Attuned - Attuned */
     , (803086, 150,        103) /* HookPlacement - Hook */
     , (803086, 151,          2) /* HookType - Wall */
     , (803086, 158,          7) /* WieldRequirements - Level */
     , (803086, 159,          1) /* WieldSkillType - Axe */
     , (803086, 160,          1) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803086,  22, True ) /* Inscribable */
     , (803086,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803086,   5,    -0.5) /* ManaRate */
     , (803086,  12,     0.5) /* Shade */
     , (803086,  13,       1) /* ArmorModVsSlash */
     , (803086,  14,       1) /* ArmorModVsPierce */
     , (803086,  15,       1) /* ArmorModVsBludgeon */
     , (803086,  16,       2) /* ArmorModVsCold */
     , (803086,  17,       2) /* ArmorModVsFire */
     , (803086,  18,       2) /* ArmorModVsAcid */
     , (803086,  19,       2) /* ArmorModVsElectric */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803086,   1, 'Mule Robe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803086,   1,   33554854) /* Setup */
     , (803086,   3,  536870932) /* SoundTable */
     , (803086,   6,   67108990) /* PaletteBase */
     , (803086,   7,  268436460) /* ClothingBase */
     , (803086,   8,  100673470) /* Icon */
     , (803086,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803086,  3738,      2)  /* Armor Other V */
     , (803086,  3700,      2)  /* Impenetrability VI */
     , (803086,  3730,      2)  /* Minor Acid Ward */
     , (803086,  3705,      2)  /* Minor Flame Ward */
     , (803086,  3733,      2)  /* Minor Frost Ward */
     , (803086,  3694,      2)  /* Minor Storm Ward */;
