DELETE FROM `weenie` WHERE `class_Id` = 800276;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800276, 'ValHeel Tassets', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800276,   1,          2) /* ItemType - Armor */
     , (800276,   3,          4) /* PaletteTemplate - Brown */
     , (800276,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (800276,   5,        300) /* EncumbranceVal */
     , (800276,   8,         90) /* Mass */
     , (800276,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (800276,  16,          1) /* ItemUseable - No */
     , (800276,  19,          1) /* Value */
     , (800276,  27,          2) /* ArmorType - Leather */
     , (800276,  28,        280) /* ArmorLevel */
     , (800276,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800276, 106,        325) /* ItemSpellcraft */
     , (800276, 107,       6000) /* ItemCurMana */
     , (800276, 108,       6000) /* ItemMaxMana */
     , (800276, 151,          2) /* HookType - Wall */
     , (800276, 158,          7) /* WieldRequirements - Level */
     , (800276, 159,          1) /* WieldSkillType - Axe */
     , (800276, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800276,  11, True ) /* IgnoreCollisions */
     , (800276,  13, True ) /* Ethereal */
     , (800276,  14, True ) /* GravityStatus */
     , (800276,  19, True ) /* Attackable */
     , (800276,  22, True ) /* Inscribable */
     , (800276, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800276,   5,  -0.033) /* ManaRate */
     , (800276,  12,    0.66) /* Shade */
     , (800276,  13,       1) /* ArmorModVsSlash */
     , (800276,  14,     1.1) /* ArmorModVsPierce */
     , (800276,  15,     1.1) /* ArmorModVsBludgeon */
     , (800276,  16,     1.1) /* ArmorModVsCold */
     , (800276,  17,     0.9) /* ArmorModVsFire */
     , (800276,  18,     0.9) /* ArmorModVsAcid */
     , (800276,  19,       1) /* ArmorModVsElectric */
     , (800276, 110,    1.67) /* BulkMod */
     , (800276, 111,       1) /* SizeMod */
     , (800276, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800276,   1, 'ValHeel Tassets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800276,   1,   33559431) /* Setup */
     , (800276,   3,  536870932) /* SoundTable */
     , (800276,   6,   67108990) /* PaletteBase */
     , (800276,   7,  268436971) /* ClothingBase */
     , (800276,   8,  100686872) /* Icon */
     , (800276,  22,  872415275) /* PhysicsEffectTable */
     , (800276,  36,  234881042) /* MutateFilter */
     , (800276,  46,  939524146) /* TsysMutationFilter */
     , (800276,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800276,  4227,      2)  /* Epic Willpower */
     , (800276,  4407,      2)  /* Incantation of Impenetrability */
     , (800276,  4681,      2)  /* Epic Mana Gain */;
