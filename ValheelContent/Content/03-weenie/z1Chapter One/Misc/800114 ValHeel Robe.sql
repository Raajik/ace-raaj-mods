DELETE FROM `weenie` WHERE `class_Id` = 800114;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800114, 'valheelrobe', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800114,   1,          4) /* ItemType - Clothing */
     , (800114,   3,         39) /* PaletteTemplate - Black */
     , (800114,   4,      98048) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms, Head, Feet */
     , (800114,   5,        450) /* EncumbranceVal */
     , (800114,   8,        450) /* Mass */
     , (800114,   9,      32513) /* ValidLocations - HeadWear, Armor */
     , (800114,  16,          1) /* ItemUseable - No */
     , (800114,  18,          1) /* UiEffects - Magical */
     , (800114,  19,       4000) /* Value */
     , (800114,  27,          1) /* ArmorType - Cloth */
     , (800114,  28,        800) /* ArmorLevel */
     , (800114,  36,       9999) /* ResistMagic */
     , (800114,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800114, 106,        400) /* ItemSpellcraft */
     , (800114, 107,       2000) /* ItemCurMana */
     , (800114, 108,       2000) /* ItemMaxMana */
     , (800114, 109,        225) /* ItemDifficulty */
     , (800114, 150,        103) /* HookPlacement - Hook */
     , (800114, 151,          2) /* HookType - Wall */
     , (800114, 158,          7) /* WieldRequirements - Level */
     , (800114, 159,          1) /* WieldSkillType - Axe */
     , (800114, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800114,  22, True ) /* Inscribable */
     , (800114,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800114,   5,    -0.5) /* ManaRate */
     , (800114,  12,     0.5) /* Shade */
     , (800114,  13,       1) /* ArmorModVsSlash */
     , (800114,  14,       1) /* ArmorModVsPierce */
     , (800114,  15,       1) /* ArmorModVsBludgeon */
     , (800114,  16,       2) /* ArmorModVsCold */
     , (800114,  17,       2) /* ArmorModVsFire */
     , (800114,  18,       2) /* ArmorModVsAcid */
     , (800114,  19,       2) /* ArmorModVsElectric */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800114,   1, 'ValHeel Robe') /* Name */
     , (800114,  15, 'A black robe trimmed in red, it is lined with an unknown material but feels like the perfect insulator.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800114,   1,   33554854) /* Setup */
     , (800114,   3,  536870932) /* SoundTable */
     , (800114,   6,   67108990) /* PaletteBase */
     , (800114,   7,  268436460) /* ClothingBase */
     , (800114,   8,  100673470) /* Icon */
     , (800114,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800114,  1332,      2)  /* Armor Other V */
     , (800114,  1354,      2)  /* Impenetrability VI */
     , (800114,  1378,      2)  /* Minor Acid Ward */
     , (800114,  1402,      2)  /* Minor Flame Ward */
     , (800114,  1426,      2)  /* Minor Frost Ward */
     , (800114,  1450,      2)  /* Minor Storm Ward */;
